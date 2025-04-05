
`timescale 1 ns / 1 ps

module sprite_controller_ctrl #(
    // Users to add parameters here

    // User parameters ends
    // Do not modify the parameters beyond this line

    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH    = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH    = 5
) (
    // Users to add ports here
    output wire         interrupt,
    output wire [31:0]  tile16_addr,
    output wire [31:0]  tile32_addr,
    output wire [31:0]  sprite_addr,
    output wire [31:0]  buffer_addr,
    output wire         enable,
    input  wire         busy,
    input  wire         write_busy,
    // User ports ends
    // Do not modify the ports beyond this line

    // Global Clock Signal
    input wire  S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input wire  S_AXI_ARESETN,
    // Write address (issued by master, acceped by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
    // privilege and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
    // valid write address and control information.
    input wire  S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
    // to accept an address and associated control signals.
    output wire  S_AXI_AWREADY,
    // Write data (issued by master, acceped by Slave)
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
    // valid data. There is one write strobe bit for each eight
    // bits of the write data bus.
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
    // data and strobes are available.
    input wire  S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    output wire  S_AXI_WREADY,
    // Write response. This signal indicates the status
    // of the write transaction.
    output wire [1 : 0] S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
    // is signaling a valid write response.
    output wire  S_AXI_BVALID,
    // Response ready. This signal indicates that the master
    // can accept a write response.
    input wire  S_AXI_BREADY,
    // Read address (issued by master, acceped by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether the
    // transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
    // is signaling valid read address and control information.
    input wire  S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
    // ready to accept an address and associated control signals.
    output wire  S_AXI_ARREADY,
    // Read data (issued by slave)
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response. This signal indicates the status of the
    // read transfer.
    output wire [1 : 0] S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
    // signaling the required read data.
    output wire  S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    input wire  S_AXI_RREADY
);

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_awaddr;
    reg     axi_awready;
    reg     axi_wready;
    reg [1 : 0]     axi_bresp;
    reg     axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_araddr;
    reg     axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0]  axi_rdata;
    reg [1 : 0]     axi_rresp;
    reg     axi_rvalid;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 2;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 6

    // slv_reg0 -> Control Register     R/W
    //  - bit 0 -> enable, auto-clear after 1 cycle
    //  - bit 1 -> enable interrupt
    //  - bit 2 -> interrupt ack, write 1 to clear interrupt, auto-clear after 1 cycle
    localparam CR_ENABLE_BIT    = 0;
    localparam CR_INTENA_BIT    = 1;
    localparam CR_INTACK_BIT    = 2;
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg0;

    // slv_reg1 -> Status Register      R
    //  - bit 0 -> reader is busy
    //  - bit 1 -> writer is busy
    //  - bit 2 -> interrupt request, when finished and interrupt is enabled, will interrupt
    localparam SR_RDBUSY_BIT    = 0;
    localparam SR_WRBUSY_BIT    = 1;
    localparam SR_INTREQ_BIT    = 2;
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg1;

    // slv_reg2 -> tile16 Address
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg2;
    // slv_reg3 -> tile32 Address
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg3;
    // slv_reg4 -> sprite Address
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg4;
    // slv_reg5 -> buffer Address
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg5;


    wire     slv_reg_rden;
    wire     slv_reg_wren;
    reg [C_S_AXI_DATA_WIDTH-1:0]    reg_data_out;
    reg aw_en;

    // I/O Connections assignments

    assign S_AXI_AWREADY    = axi_awready;
    assign S_AXI_WREADY = axi_wready;
    assign S_AXI_BRESP  = axi_bresp;
    assign S_AXI_BVALID = axi_bvalid;
    assign S_AXI_ARREADY    = axi_arready;
    assign S_AXI_RDATA  = axi_rdata;
    assign S_AXI_RRESP  = axi_rresp;
    assign S_AXI_RVALID = axi_rvalid;
    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.

    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_awready <= 1'b0;
            aw_en <= 1'b1;
        end else begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
                // slave is ready to accept write address when
                // there is a valid write address and write data
                // on the write address and data bus. This design
                // expects no outstanding transactions.
                axi_awready <= 1'b1;
                aw_en <= 1'b0;
            end else if (S_AXI_BREADY && axi_bvalid) begin
                aw_en <= 1'b1;
                axi_awready <= 1'b0;
            end else begin
                axi_awready <= 1'b0;
            end
        end
    end

    // Implement axi_awaddr latching
    // This process is used to latch the address when both
    // S_AXI_AWVALID and S_AXI_WVALID are valid.

    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_awaddr <= 0;
        end else begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
                // Write Address latching
                axi_awaddr <= S_AXI_AWADDR;
            end
        end
    end

    // Implement axi_wready generation
    // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
    // de-asserted when reset is low.

    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_wready <= 1'b0;
        end else begin
            if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en ) begin
                // slave is ready to accept write data when
                // there is a valid write address and write data
                // on the write address and data bus. This design
                // expects no outstanding transactions.
                axi_wready <= 1'b1;
            end else begin
                axi_wready <= 1'b0;
            end
        end
    end

    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;


    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg0[CR_ENABLE_BIT] <= 0;
            slv_reg0[CR_INTENA_BIT] <= 0;
            slv_reg0[SR_INTREQ_BIT] <= 0;
            slv_reg0[31:3]          <= 0;
        end else if (
            slv_reg_wren &&
            axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 0 &&
            S_AXI_WSTRB[0] == 1
        ) begin
            slv_reg0[CR_ENABLE_BIT] <= S_AXI_WDATA[CR_ENABLE_BIT];
            slv_reg0[CR_INTENA_BIT] <= S_AXI_WDATA[CR_INTENA_BIT];
            slv_reg0[CR_INTACK_BIT] <= S_AXI_WDATA[CR_INTACK_BIT];
            slv_reg0[31:3]          <= 0;
        end else begin
            slv_reg0[CR_ENABLE_BIT] <= 0;   // auto clear
            slv_reg0[CR_INTENA_BIT] <= slv_reg0[CR_INTENA_BIT];
            slv_reg0[CR_INTACK_BIT] <= 0;   // auto clear
            slv_reg0[31:3]          <= 0;
        end
    end
    assign enable = slv_reg0[CR_ENABLE_BIT];


    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg1[SR_RDBUSY_BIT] <= 0;
            slv_reg1[SR_WRBUSY_BIT] <= 0;
            slv_reg1[SR_INTREQ_BIT] <= 0;
            slv_reg1[31:3]          <= 0;
        end else begin
            slv_reg1[SR_RDBUSY_BIT] <= busy;
            slv_reg1[SR_WRBUSY_BIT] <= write_busy;
            if (slv_reg0[CR_INTENA_BIT] && !busy && slv_reg1[SR_RDBUSY_BIT]) begin
                slv_reg1[SR_INTREQ_BIT] <= 1;
            end else if (slv_reg0[CR_INTACK_BIT]) begin
                slv_reg1[SR_INTREQ_BIT] <= 0;
            end else begin
                slv_reg1[SR_INTREQ_BIT] <= slv_reg1[SR_INTREQ_BIT];
            end
            slv_reg1[31:3]          <= 0;
        end
    end
    assign interrupt = slv_reg1[SR_INTREQ_BIT];


    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg2 <= 0;
        end else if (slv_reg_wren && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2) begin
            if ( S_AXI_WSTRB[0] == 1 ) slv_reg2[(0*8) +: 8] <= S_AXI_WDATA[(0*8) +: 8];
            if ( S_AXI_WSTRB[1] == 1 ) slv_reg2[(1*8) +: 8] <= S_AXI_WDATA[(1*8) +: 8];
            if ( S_AXI_WSTRB[2] == 1 ) slv_reg2[(2*8) +: 8] <= S_AXI_WDATA[(2*8) +: 8];
            if ( S_AXI_WSTRB[3] == 1 ) slv_reg2[(3*8) +: 8] <= S_AXI_WDATA[(3*8) +: 8];
        end else begin
            slv_reg2 <= slv_reg2;
        end
    end
    assign tile16_addr = slv_reg2;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg3 <= 0;
        end else if (slv_reg_wren && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3) begin
            if ( S_AXI_WSTRB[0] == 1 ) slv_reg3[(0*8) +: 8] <= S_AXI_WDATA[(0*8) +: 8];
            if ( S_AXI_WSTRB[1] == 1 ) slv_reg3[(1*8) +: 8] <= S_AXI_WDATA[(1*8) +: 8];
            if ( S_AXI_WSTRB[2] == 1 ) slv_reg3[(2*8) +: 8] <= S_AXI_WDATA[(2*8) +: 8];
            if ( S_AXI_WSTRB[3] == 1 ) slv_reg3[(3*8) +: 8] <= S_AXI_WDATA[(3*8) +: 8];
        end else begin
            slv_reg3 <= slv_reg3;
        end
    end
    assign tile32_addr = slv_reg3;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg4 <= 0;
        end else if (slv_reg_wren && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4) begin
            if ( S_AXI_WSTRB[0] == 1 ) slv_reg4[(0*8) +: 8] <= S_AXI_WDATA[(0*8) +: 8];
            if ( S_AXI_WSTRB[1] == 1 ) slv_reg4[(1*8) +: 8] <= S_AXI_WDATA[(1*8) +: 8];
            if ( S_AXI_WSTRB[2] == 1 ) slv_reg4[(2*8) +: 8] <= S_AXI_WDATA[(2*8) +: 8];
            if ( S_AXI_WSTRB[3] == 1 ) slv_reg4[(3*8) +: 8] <= S_AXI_WDATA[(3*8) +: 8];
        end else begin
            slv_reg4 <= slv_reg4;
        end
    end
    assign sprite_addr = slv_reg4;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg5 <= 0;
        end else if (slv_reg_wren && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 5) begin
            if ( S_AXI_WSTRB[0] == 1 ) slv_reg5[(0*8) +: 8] <= S_AXI_WDATA[(0*8) +: 8];
            if ( S_AXI_WSTRB[1] == 1 ) slv_reg5[(1*8) +: 8] <= S_AXI_WDATA[(1*8) +: 8];
            if ( S_AXI_WSTRB[2] == 1 ) slv_reg5[(2*8) +: 8] <= S_AXI_WDATA[(2*8) +: 8];
            if ( S_AXI_WSTRB[3] == 1 ) slv_reg5[(3*8) +: 8] <= S_AXI_WDATA[(3*8) +: 8];
        end else begin
            slv_reg5 <= slv_reg5;
        end
    end
    assign buffer_addr = slv_reg5;

    // Implement write response logic generation
    // The write response and response valid signals are asserted by the slave
    // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
    // This marks the acceptance of address and indicates the status of
    // write transaction.

    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end else if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
            // indicates a valid write response is available
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; // 'OKAY' response
            // work error responses in future
        end else if (S_AXI_BREADY && axi_bvalid) begin
            //check if bready is asserted while bvalid is high)
            //(there is a possibility that bready is always asserted high)
            axi_bvalid <= 1'b0;
        end
    end

    // Implement axi_arready generation
    // axi_arready is asserted for one S_AXI_ACLK clock cycle when
    // S_AXI_ARVALID is asserted. axi_awready is
    // de-asserted when reset (active low) is asserted.
    // The read address is also latched when S_AXI_ARVALID is
    // asserted. axi_araddr is reset to zero on reset assertion.

    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_arready <= 1'b0;
            axi_araddr  <= 32'b0;
        end else if (~axi_arready && S_AXI_ARVALID) begin
            // indicates that the slave has acceped the valid read address
            axi_arready <= 1'b1;
            // Read address latching
            axi_araddr  <= S_AXI_ARADDR;
        end else begin
            axi_arready <= 1'b0;
        end
    end

    // Implement axi_arvalid generation
    // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_ARVALID and axi_arready are asserted. The slave registers
    // data are available on the axi_rdata bus at this instance. The
    // assertion of axi_rvalid marks the validity of read data on the
    // bus and axi_rresp indicates the status of read transaction.axi_rvalid
    // is deasserted on reset (active low). axi_rresp and axi_rdata are
    // cleared to zero on reset (active low).
    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_rvalid <= 0;
            axi_rresp  <= 0;
        end else if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
            // Valid read data is available at the read data bus
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; // 'OKAY' response
        end else if (axi_rvalid && S_AXI_RREADY) begin
            // Read data is accepted by the master
            axi_rvalid <= 1'b0;
        end

    end

    // Implement memory mapped register select and read logic generation
    // Slave register read enable is asserted when valid address is available
    // and the slave is ready to accept the read address.
    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
    always @(*) begin
        // Address decoding for reading registers
        case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
        3'h0   : reg_data_out <= slv_reg0;
        3'h1   : reg_data_out <= slv_reg1;
        3'h2   : reg_data_out <= slv_reg2;
        3'h3   : reg_data_out <= slv_reg3;
        3'h4   : reg_data_out <= slv_reg4;
        3'h5   : reg_data_out <= slv_reg5;
        default : reg_data_out <= 0;
        endcase
    end

    // Output register or memory read data
    always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
          axi_rdata  <= 0;
        end else if (slv_reg_rden) begin
            // When there is a valid read address (S_AXI_ARVALID) with
            // acceptance of read address by the slave (axi_arready),
            // output the read dada
            axi_rdata <= reg_data_out;     // register read data
        end
    end

    // Add user logic here

    // User logic ends

    endmodule
