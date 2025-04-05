`timescale 1ns/1ps

module sprite_reader #(
    parameter SCREEN_WIDTH = 800,
    parameter SCREEN_HEIGHT = 600,
    parameter MAX_SPRITES = 32,
    parameter SPRITE_DATA_WIDTH = 32,
    parameter TILE16_COUNT = 128,
    parameter TILE32_COUNT = 128,
    parameter PIXEL_BYTE_SIZE = 2,
    parameter AXI_DATA_WIDTH = 32
)(
    // Clock and Reset
    input wire clk,
    input wire rst_n,

    // Control Interface
    input wire [31:0] tile16_addr,    // Address of 16x16 tile pattern table
    input wire [31:0] tile32_addr,    // Address of 32x32 tile pattern table
    input wire [31:0] sprite_addr,    // Address of sprite information table
    input wire [31:0] buffer_addr,    // Address of frame buffer
    input wire enable,                // Start signal
    output reg busy,                  // Module busy status

    // AXI4 Read Address Channel
    output reg [31:0] m_axi_araddr,
    output reg [7:0]  m_axi_arlen,
    output reg [2:0]  m_axi_arsize,
    output reg [1:0]  m_axi_arburst,
    output reg        m_axi_arvalid,
    input wire        m_axi_arready,

    // AXI4 Read Data Channel
    input wire [31:0] m_axi_rdata,
    input wire [1:0]  m_axi_rresp,
    input wire        m_axi_rlast,
    input wire        m_axi_rvalid,
    output reg        m_axi_rready,

    // Interface to AXI4 Write Master
    output reg [31:0] write_address,
    output reg [511:0] write_data,   // Match the DATA_WIDTH of axi4_write_master
    output reg        write_enable,
    output reg        write_half_size,
    input wire        write_busy
);


    localparam TILE16_SIZE = 16;
    localparam TILE32_SIZE = 32;

    // Frame buffer related constants assuming 2 bytes per pixel
    localparam FRAME_BUFFER_STRIDE = SCREEN_WIDTH * PIXEL_BYTE_SIZE;

    // FSM States
    localparam IDLE                 = 5'd0;
    localparam READ_SPRITE_INFO     = 5'd1;
    localparam STORE_SPRITE_INFO    = 5'd2;
    localparam SPRITE_TRAVERSE      = 5'd3;
    localparam READ_TILE16_PREP     = 5'd4;
    localparam READ_TILE16_DATA     = 5'd5;
    localparam READ_TILE32_PREP     = 5'd6;
    localparam READ_TILE32_DATA     = 5'd7;
    localparam WRITE_LINE_PREP      = 5'd8;
    localparam WRITE_LINE_DO        = 5'd9;
    localparam NEXT_SPRITE          = 5'd10;
    localparam NEXT_LINE            = 5'd11;
    localparam FINAL_WAIT           = 5'd12;
    localparam CLEAR_TRAVERSE       = 5'd13;
    localparam CLEAR_LINE_PREP      = 5'd14;
    localparam CLEAR_LINE_DO        = 5'd15;
    localparam CLEAR_NEXT_SPRITE    = 5'd16;
    localparam CLEAR_NEXT_LINE      = 5'd17;

    // State machine registers
    reg [4:0] state, next_state;

    // Sprite table memory (internal)
    reg [31:0] sprite_table [0:MAX_SPRITES-1];

    // reset sprites to all FFFF_FFFF
    integer i;
    initial begin
        for (i = 0; i < MAX_SPRITES; i = i + 1)
            sprite_table[i] = 32'hFFFFFFFF;
    end

    // Control registers
    reg [5:0] sprite_index;        // Current sprite being processed (0-31)
    reg [4:0] line_index;          // Current line in the sprite (0-31)
    reg [6:0] pattern_index;       // Tile pattern index (0-127)
    reg       is_sprite32;         // 1 if sprite is 32x32, 0 if 16x16
    reg [11:0] sprite_x;           // X position
    reg [11:0] sprite_y;           // Y position

    // Control wires
    wire [31:0] tile16_cur_addr = tile16_addr +
                                (pattern_index * TILE16_SIZE * TILE16_SIZE * PIXEL_BYTE_SIZE) +
                                (line_index * TILE16_SIZE * PIXEL_BYTE_SIZE);

    wire [31:0] tile32_cur_addr = tile32_addr +
                                (pattern_index * TILE32_SIZE * TILE32_SIZE * PIXEL_BYTE_SIZE) +
                                (line_index * TILE32_SIZE * PIXEL_BYTE_SIZE);

    // AXI burst counters
    reg [7:0] read_count;          // Number of words read in current burst


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
                    next_state = CLEAR_TRAVERSE;
            end
            CLEAR_TRAVERSE: begin
                if (sprite_index >= MAX_SPRITES) begin
                    // Finished clearing all old sprites
                    next_state = READ_SPRITE_INFO;
                end else if (sprite_table[sprite_index] == 32'hFFFFFFFF) begin
                    // Invalid sprite, move to next
                    next_state = CLEAR_NEXT_SPRITE;
                end else begin
                    // Valid sprite found for clearing
                    next_state = CLEAR_LINE_PREP;
                end
            end

            CLEAR_LINE_PREP: begin
                if (!write_busy)
                    next_state = CLEAR_LINE_DO;
            end

            CLEAR_LINE_DO: begin
                if ((is_sprite32 && line_index < TILE32_SIZE-1) ||
                    (!is_sprite32 && line_index < TILE16_SIZE-1)) begin
                    next_state = CLEAR_NEXT_LINE;
                end else begin
                    next_state = CLEAR_NEXT_SPRITE;
                end
            end

            CLEAR_NEXT_LINE: begin
                next_state = CLEAR_LINE_PREP;
            end

            CLEAR_NEXT_SPRITE: begin
                next_state = CLEAR_TRAVERSE;
            end

            READ_SPRITE_INFO: begin
                if (m_axi_arready && m_axi_arvalid)
                    next_state = STORE_SPRITE_INFO;
            end

            STORE_SPRITE_INFO: begin
                if (m_axi_rvalid && m_axi_rlast)
                    next_state = SPRITE_TRAVERSE;
            end

            SPRITE_TRAVERSE: begin
                if (sprite_index >= MAX_SPRITES) begin
                    // Finished processing all sprites
                    next_state = FINAL_WAIT;
                end else if (sprite_table[sprite_index] != 32'hFFFFFFFF) begin
                    // Valid sprite found
                    if (is_sprite32) // Size bit
                        next_state = READ_TILE32_PREP;
                    else
                        next_state = READ_TILE16_PREP;
                end else begin
                    // Invalid sprite, move to next
                    next_state = NEXT_SPRITE;
                end
            end

            READ_TILE16_PREP: begin
                next_state = READ_TILE16_DATA;
            end

            READ_TILE16_DATA: begin
                if (m_axi_rvalid && m_axi_rlast)
                    next_state = WRITE_LINE_PREP;
            end

            READ_TILE32_PREP: begin
                next_state = READ_TILE32_DATA;
            end

            READ_TILE32_DATA: begin
                if (m_axi_rvalid && m_axi_rlast)
                    next_state = WRITE_LINE_PREP;
            end

            WRITE_LINE_PREP: begin
                if (!write_busy)
                    next_state = WRITE_LINE_DO;
            end

            WRITE_LINE_DO: begin
                // Write scheduled, check if we need to process more lines
                if ((is_sprite32 && line_index < TILE32_SIZE-1) ||
                    (!is_sprite32 && line_index < TILE16_SIZE-1)) begin
                    next_state = NEXT_LINE;
                end else begin
                    next_state = NEXT_SPRITE;
                end
            end

            NEXT_LINE: begin
                if (is_sprite32)
                    next_state = READ_TILE32_PREP;
                else
                    next_state = READ_TILE16_PREP;
            end

            NEXT_SPRITE: begin
                next_state = SPRITE_TRAVERSE;
            end

            FINAL_WAIT: begin
                if (!write_busy) begin
                    next_state = IDLE;
                end
            end

            default:
                next_state = IDLE;
        endcase
    end

    // Control logic
    always @(posedge clk) begin
        if (!rst_n) begin
            // Reset all registers
            m_axi_araddr <= 32'b0;
            m_axi_arlen <= 8'b0;
            m_axi_arsize <= 3'b0;
            m_axi_arburst <= 2'b0;
            m_axi_arvalid <= 1'b0;
            m_axi_rready <= 1'b0;

            write_address <= 32'b0;
            write_data <= 512'b0;
            write_enable <= 1'b0;
            write_half_size <= 1'b0;

            sprite_index <= 6'b0;
            line_index <= 5'b0;
            pattern_index <= 7'b0;
            is_sprite32 <= 1'b0;
            sprite_x <= 12'b0;
            sprite_y <= 12'b0;

            read_count <= 8'b0;

            busy <= 1'b0;

        end else begin
            // Default values
            if (m_axi_arready && m_axi_arvalid)
                m_axi_arvalid <= 1'b0;

            if (m_axi_rvalid && m_axi_rready)
                m_axi_rready <= 1'b0;

            if (write_enable)
                write_enable <= 1'b0;

            // Track busy state
            busy <= (state != IDLE || next_state != IDLE);

            case (state)
                IDLE: begin
                    sprite_index <= 6'b0;
                    line_index <= 5'b0;
                end
                CLEAR_TRAVERSE: begin
                    if (next_state == CLEAR_LINE_PREP) begin
                        // Setup for clearing sprite
                        is_sprite32 <= sprite_table[sprite_index][31];
                        pattern_index <= sprite_table[sprite_index][30:24];
                        sprite_y <= sprite_table[sprite_index][23:12];
                        sprite_x <= sprite_table[sprite_index][11:0];
                        line_index <= 5'b0;
                    end
                end

                CLEAR_LINE_PREP: begin
                    if (next_state == CLEAR_LINE_DO) begin
                        // Fill write_data with zeros to clear
                        write_data <= 512'b0;

                        // Setup size based on sprite type
                        if (is_sprite32) begin
                            write_half_size <= 1'b0; // Use full data width
                        end else begin
                            write_half_size <= 1'b1; // Only use half of data width
                        end

                        // Setup write address for clearing
                        write_address <= buffer_addr + (sprite_y + line_index) * FRAME_BUFFER_STRIDE +
                                        sprite_x * PIXEL_BYTE_SIZE;
                        write_enable <= 1'b1;
                    end
                end

                CLEAR_LINE_DO: begin
                    // No action needed
                end

                CLEAR_NEXT_LINE: begin
                    line_index <= line_index + 1;
                end

                CLEAR_NEXT_SPRITE: begin
                    sprite_index <= sprite_index + 1;
                    line_index <= 5'b0;
                end

                READ_SPRITE_INFO: begin
                    sprite_index <= 0;
                    if (!m_axi_arvalid) begin
                        // Setup AXI read burst for sprite info table
                        m_axi_araddr <= sprite_addr;
                        m_axi_arlen <= MAX_SPRITES - 1;  // Burst length
                        m_axi_arsize <= 3'b010;          // 4 bytes (32 bits)
                        m_axi_arburst <= 2'b01;          // INCR
                        m_axi_arvalid <= 1'b1;

                        // Setup read data tracking
                        read_count <= 8'b0;
                        m_axi_rready <= 1'b1;
                    end
                end

                STORE_SPRITE_INFO: begin
                    if (m_axi_rvalid && m_axi_rready) begin
                        // Store received sprite data
                        sprite_table[read_count] <= m_axi_rdata;
                        read_count <= read_count + 1;

                        if (!m_axi_rlast)
                            m_axi_rready <= 1'b1;
                    end
                end

                SPRITE_TRAVERSE: begin
                    if (next_state == READ_TILE16_PREP || next_state == READ_TILE32_PREP) begin
                        // Setup for sprite processing
                        is_sprite32 <= sprite_table[sprite_index][31];
                        pattern_index <= sprite_table[sprite_index][30:24];
                        sprite_y <= sprite_table[sprite_index][23:12];
                        sprite_x <= sprite_table[sprite_index][11:0];
                        line_index <= 5'b0;
                    end
                end

                READ_TILE16_PREP: begin
                    // Setup AXI read for tile line
                    m_axi_araddr <= tile16_cur_addr;
                    m_axi_arlen <= (TILE16_SIZE * PIXEL_BYTE_SIZE) / 4 - 1; // 16 pixels * 2 bytes / 4 bytes per word
                    m_axi_arsize <= 3'b010;  // 4 bytes
                    m_axi_arburst <= 2'b01;  // INCR
                    m_axi_arvalid <= 1'b1;

                    // Setup read data tracking
                    read_count <= 8'b0;
                    m_axi_rready <= 1'b1;
                end

                READ_TILE16_DATA: begin
                    if (m_axi_rvalid && m_axi_rready) begin
                        // Process received data (each AXI read provides 2 pixels)
                        read_count <= read_count + 1;

                        // For each 32-bit word, extract two 16-bit pixels
                        write_data[(read_count * 32)+:32] <= m_axi_rdata;

                        if (!m_axi_rlast)
                            m_axi_rready <= 1'b1;
                    end
                end

                READ_TILE32_PREP: begin
                    // Setup AXI read for tile line
                    m_axi_araddr <= tile32_cur_addr;
                    m_axi_arlen <= (TILE32_SIZE * PIXEL_BYTE_SIZE) / 4 - 1; // 32 pixels * 2 bytes / 4 bytes per word
                    m_axi_arsize <= 3'b010;  // 4 bytes
                    m_axi_arburst <= 2'b01;  // INCR
                    m_axi_arvalid <= 1'b1;

                    // Setup read data tracking
                    read_count <= 8'b0;
                    m_axi_rready <= 1'b1;
                end

                READ_TILE32_DATA: begin
                    if (m_axi_rvalid && m_axi_rready) begin
                        // Process received data (each AXI read provides 2 pixels)
                        read_count <= read_count + 1;

                        // For each 32-bit word, extract two 16-bit pixels
                        write_data[(read_count*32)+:32] <= m_axi_rdata;
                        if (!m_axi_rlast)
                            m_axi_rready <= 1'b1;
                    end
                end

                WRITE_LINE_PREP: begin
                    if (next_state == WRITE_LINE_DO) begin
                        // start writing
                        // Pack data for axi4_write_master
                        if (is_sprite32) begin
                            write_half_size <= 1'b0; // Use full data width
                        end else begin
                            write_half_size <= 1'b1; // Only use half of data width
                        end

                        // Setup write parameters
                        write_address <= buffer_addr + (sprite_y + line_index) * FRAME_BUFFER_STRIDE +
                                        sprite_x * PIXEL_BYTE_SIZE;
                        write_enable <= 1'b1;
                    end
                end

                WRITE_LINE_DO: begin
                    // No actions needed, state machine handles transitions
                end

                NEXT_LINE: begin
                    // Move to next line of the sprite
                    line_index <= line_index + 1;
                end

                NEXT_SPRITE: begin
                    // Move to next sprite
                    sprite_index <= sprite_index + 1;
                    line_index <= 5'b0;
                end

                FINAL_WAIT: begin
                    // Nothing to do here, just wait for writes to complete
                end
            endcase
        end
    end
endmodule