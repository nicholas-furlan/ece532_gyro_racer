`timescale 1ns/1ps
module sprite_writer #(
    parameter DATA_WIDTH = 512   // Default to 256 bits (32 bytes)
)(
    // Clock and Reset
    input wire clk,
    input wire rst_n,

    // Control Interface
    input wire [31:0] address,
    input wire [DATA_WIDTH-1:0] data,  // Parameterized data width
    input wire        enable,
    input wire        half_size,       // When asserted, only write the lower half of data
    output reg        busy,

    // AXI4 Write Address Channel
    output reg [31:0] m_axi_awaddr,
    output reg [7:0]  m_axi_awlen,
    output reg [2:0]  m_axi_awsize,
    output reg [1:0]  m_axi_awburst,
    output reg        m_axi_awvalid,
    input wire        m_axi_awready,

    // AXI4 Write Data Channel
    output reg [31:0] m_axi_wdata,
    output reg [3:0]  m_axi_wstrb,
    output reg        m_axi_wlast,
    output reg        m_axi_wvalid,
    input wire        m_axi_wready,

    // AXI4 Write Response Channel
    input wire [1:0]  m_axi_bresp,
    input wire        m_axi_bvalid,
    output reg        m_axi_bready
);


    // FIXED_SIZE is derived from DATA_WIDTH, must be power of 2 and >= 4 bytes
    localparam FIXED_SIZE = DATA_WIDTH / 8;
    // Calculate the word width for AXI4 interface (fixed at 32 bits)
    localparam AXI_DATA_WIDTH = 32;
    // Calculate the byte count for AXI4 interface (fixed at 32 bits)
    localparam AXI_DATA_BYTECOUNT = AXI_DATA_WIDTH / 8;
    // Calculate number of transfers for aligned address
    localparam ALIGNED_TRANSFERS = FIXED_SIZE / (AXI_DATA_WIDTH / 8);
    // Calculate required width of latched data buffer
    localparam LATCHED_DATA_WIDTH = DATA_WIDTH + AXI_DATA_WIDTH;
    // Calculate half size in bytes and transfers
    localparam HALF_SIZE_BYTES = FIXED_SIZE / 2;
    localparam HALF_ALIGNED_TRANSFERS = ALIGNED_TRANSFERS / 2;

    // FSM States
    localparam IDLE = 3'd0;
    localparam INIT = 3'd1;
    localparam ADDR_PHASE = 3'd2;
    localparam DATA_PHASE = 3'd3;
    localparam RESP_PHASE = 3'd4;

    // State machine
    reg [2:0] state;
    reg [2:0] next_state;

    // Transfer parameters
    reg [31:0] aligned_addr;
    reg [1:0]  addr_offset;
    reg [7:0]  total_transfers;
    reg [7:0]  transfers_done;
    reg [LATCHED_DATA_WIDTH-1:0] latched_data;  // Parameterized buffer width
    reg        current_half_size; // Latch the half_size signal

    // Padding data (should be zero, or non-zero for debugging)
    localparam [7:0] PADDDING = 8'hdd;

    // State machine
    always @(posedge clk) begin
        if (!rst_n) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // Next state logic
    always @(*) begin
        next_state = state;

        case (state)
            IDLE: begin
                if (enable)
                    next_state = INIT;
            end

            INIT: begin
                next_state = ADDR_PHASE;
            end

            ADDR_PHASE: begin
                if (m_axi_awready && m_axi_awvalid)
                    next_state = DATA_PHASE;
            end

            DATA_PHASE: begin
                if (m_axi_wready && m_axi_wvalid && m_axi_wlast)
                    next_state = RESP_PHASE;
            end

            RESP_PHASE: begin
                if (m_axi_bvalid)
                    next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    // Calculate actual size to write based on half_size input - Used for data phase calculations
    wire [7:0] active_size = current_half_size ? HALF_SIZE_BYTES : FIXED_SIZE;
    wire [7:0] active_transfers = current_half_size ? HALF_ALIGNED_TRANSFERS : ALIGNED_TRANSFERS;

    // Output control logic
    always @(posedge clk) begin
        if (!rst_n) begin
            m_axi_awaddr  <= 32'b0;
            m_axi_awlen   <= 8'b0;
            m_axi_awsize  <= 3'b0;
            m_axi_awburst <= 2'b0;
            m_axi_awvalid <= 1'b0;
            m_axi_wdata   <= 32'b0;
            m_axi_wstrb   <= 4'b0;
            m_axi_wlast   <= 1'b0;
            m_axi_wvalid  <= 1'b0;
            m_axi_bready  <= 1'b0;
            busy          <= 1'b0;

            aligned_addr <= 32'b0;
            addr_offset <= 2'b0;
            total_transfers <= 8'b0;
            transfers_done <= 8'b0;
            latched_data <= {LATCHED_DATA_WIDTH{1'b0}};
            current_half_size <= 1'b0;
        end else begin
            // Default values
            if (m_axi_awready && m_axi_awvalid)
                m_axi_awvalid <= 1'b0;

            if (m_axi_bvalid && state == RESP_PHASE)
                m_axi_bready <= 1'b1;

            if (m_axi_bready)
                m_axi_bready <= 1'b0;

            // Deassert wvalid after last transfer is accepted
            if (m_axi_wready && m_axi_wvalid && m_axi_wlast) begin
                m_axi_wvalid <= 1'b0;
                m_axi_wlast <= 1'b0;
            end


            // Busy signal management
            busy <= (state != IDLE || next_state != IDLE);

            // Initialization and parameter calculation
            if (state == IDLE && next_state == INIT) begin
                // Latch the half_size signal for this transaction
                current_half_size <= half_size;

                // Align address to word boundary
                aligned_addr <= {address[31:2], 2'b00};
                addr_offset <= address[1:0];

                // Calculate total transfers needed based on full or half size
                // Use direct input half_size instead of current_half_size to avoid timing issues
                if (address[1:0] == 2'b00) begin
                    // Aligned address
                    if (half_size)
                        total_transfers <= HALF_ALIGNED_TRANSFERS;
                    else
                        total_transfers <= ALIGNED_TRANSFERS;
                end else begin
                    // Unaligned address always needs an extra transfer
                    if (half_size)
                        total_transfers <= HALF_ALIGNED_TRANSFERS + 8'd1;
                    else
                        total_transfers <= ALIGNED_TRANSFERS + 8'd1;
                end

                transfers_done <= 8'b0;

                // Generate shifted data based on address alignment
                case (address[1:0])
                    2'b00: latched_data <= {PADDDING, PADDDING, PADDDING, PADDDING, data};  // No shift needed
                    2'b01: latched_data <= {PADDDING, PADDDING, PADDDING, data, PADDDING};  // Shift by 1 byte
                    2'b10: latched_data <= {PADDDING, PADDDING, data, PADDDING, PADDDING};  // Shift by 2 bytes
                    2'b11: latched_data <= {PADDDING, data, PADDDING, PADDDING, PADDDING};  // Shift by 3 bytes
                endcase
            end else case (next_state)
                ADDR_PHASE: begin
                    if (!m_axi_awvalid) begin
                        // Address phase setup
                        m_axi_awaddr  <= aligned_addr;
                        m_axi_awlen   <= total_transfers - 1; // Burst length
                        m_axi_awsize  <= 3'b010; // 4 bytes
                        m_axi_awburst <= 2'b01;  // INCR
                        m_axi_awvalid <= 1'b1;
                    end
                end

                DATA_PHASE: begin
                    if (!m_axi_wvalid || (m_axi_wready && m_axi_wvalid)) begin
                        // Prepare next data beat
                        m_axi_wdata <= latched_data[32*transfers_done +: 32];
                        transfers_done <= transfers_done + 1;

                        // Set write strobe based on position
                        if (transfers_done == 0 && addr_offset != 0) begin
                            // First beat with unaligned address
                            case (addr_offset)
                                2'b01: m_axi_wstrb <= 4'b1110; // Skip first byte
                                2'b10: m_axi_wstrb <= 4'b1100; // Skip first two bytes
                                2'b11: m_axi_wstrb <= 4'b1000; // Skip first three bytes
                                default: m_axi_wstrb <= 4'b1111;
                            endcase
                        end else if (transfers_done == total_transfers - 1 &&
                                  (addr_offset != 0 || total_transfers > active_transfers)) begin
                            // Last beat might be partial - calculate based on actual size being written
                            case ((addr_offset + active_size) & 3)
                                2'b01: m_axi_wstrb <= 4'b0001; // Only first byte
                                2'b10: m_axi_wstrb <= 4'b0011; // Only first two bytes
                                2'b11: m_axi_wstrb <= 4'b0111; // Only first three bytes
                                default: m_axi_wstrb <= 4'b1111;
                            endcase
                        end else begin
                            // Middle beats - all bytes valid
                            m_axi_wstrb <= 4'b1111;
                        end

                        // Set wlast for the last transfer
                        m_axi_wlast <= (transfers_done == total_transfers - 1);

                        // Always assert wvalid
                        m_axi_wvalid <= 1'b1;
                    end
                end
            endcase
        end
    end
endmodule
