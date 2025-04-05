module sprite_controller #(
    parameter integer C_S_AXI_DATA_WIDTH    = 32,
    parameter integer C_S_AXI_ADDR_WIDTH    = 5,
    parameter integer C_SCREEN_WIDTH        = 800,
    parameter integer C_SCREEN_HEIGHT       = 600,
    parameter integer C_MAX_SPRITES         = 32,
    parameter integer C_SPRITE_DATA_WIDTH   = 32,
    parameter integer C_TILE16_COUNT        = 128,
    parameter integer C_TILE32_COUNT        = 128,
    parameter integer C_PIXEL_BYTE_SIZE     = 2,
    parameter integer C_M_AXI_DATA_WIDTH    = 32,
    parameter integer C_SPRITE_LINE_WIDTH   = 512
) (
    // Clock and Reset (sync)
    input wire aclk,
    input wire aresetn,

    // irq output signal
    output wire interrupt,

    // AXI4-LITE Slave Interface (COPIED from XILINX IP PACKAGER)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
    input wire [2 : 0] s_axi_awprot,
    input wire  s_axi_awvalid,
    output wire  s_axi_awready,
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
    input wire  s_axi_wvalid,
    output wire  s_axi_wready,
    output wire [1 : 0] s_axi_bresp,
    output wire  s_axi_bvalid,
    input wire  s_axi_bready,
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
    input wire [2 : 0] s_axi_arprot,
    input wire  s_axi_arvalid,
    output wire  s_axi_arready,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
    output wire [1 : 0] s_axi_rresp,
    output wire  s_axi_rvalid,
    input wire  s_axi_rready,

    // AXI4 Master Interface
    // Read Channels
    // AXI4 Read Address Channel
    output wire [31:0] m_axi_araddr,
    output wire [7:0]  m_axi_arlen,
    output wire [2:0]  m_axi_arsize,
    output wire [1:0]  m_axi_arburst,
    output wire        m_axi_arvalid,
    input wire        m_axi_arready,
    // AXI4 Read Data Channel
    input wire [31:0] m_axi_rdata,
    input wire [1:0]  m_axi_rresp,
    input wire        m_axi_rlast,
    input wire        m_axi_rvalid,
    output wire        m_axi_rready,

    // Write Channels
    // AXI4 Write Address Channel
    output wire [31:0] m_axi_awaddr,
    output wire [7:0]  m_axi_awlen,
    output wire [2:0]  m_axi_awsize,
    output wire [1:0]  m_axi_awburst,
    output wire        m_axi_awvalid,
    input wire        m_axi_awready,

    // AXI4 Write Data Channel
    output wire [31:0] m_axi_wdata,
    output wire [3:0]  m_axi_wstrb,
    output wire        m_axi_wlast,
    output wire        m_axi_wvalid,
    input wire        m_axi_wready,

    // AXI4 Write Response Channel
    input wire [1:0]  m_axi_bresp,
    input wire        m_axi_bvalid,
    output wire        m_axi_bready
);

// Internal connections
wire [31:0] tile16_addr;
wire [31:0] tile32_addr;
wire [31:0] sprite_addr;
wire [31:0] buffer_addr;
wire [31:0] writer_addr;
wire [C_SPRITE_LINE_WIDTH-1:0] writer_data;
wire reader_enable;
wire reader_busy;
wire writer_enable;
wire writer_halfsize;
wire writer_busy;


// instances
sprite_controller_ctrl #(
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
) inst_ctrl (
    .interrupt(interrupt),
    .tile16_addr(tile16_addr),
    .tile32_addr(tile32_addr),
    .sprite_addr(sprite_addr),
    .buffer_addr(buffer_addr),
    .enable(reader_enable),
    .busy(reader_busy),
    .write_busy(writer_busy),

    .S_AXI_ACLK(aclk),
    .S_AXI_ARESETN(aresetn),
    .S_AXI_AWADDR(s_axi_awaddr),
    .S_AXI_AWPROT(s_axi_awprot),
    .S_AXI_AWVALID(s_axi_awvalid),
    .S_AXI_AWREADY(s_axi_awready),
    .S_AXI_WDATA(s_axi_wdata),
    .S_AXI_WSTRB(s_axi_wstrb),
    .S_AXI_WVALID(s_axi_wvalid),
    .S_AXI_WREADY(s_axi_wready),
    .S_AXI_BRESP(s_axi_bresp),
    .S_AXI_BVALID(s_axi_bvalid),
    .S_AXI_BREADY(s_axi_bready),
    .S_AXI_ARADDR(s_axi_araddr),
    .S_AXI_ARPROT(s_axi_arprot),
    .S_AXI_ARVALID(s_axi_arvalid),
    .S_AXI_ARREADY(s_axi_arready),
    .S_AXI_RDATA(s_axi_rdata),
    .S_AXI_RRESP(s_axi_rresp),
    .S_AXI_RVALID(s_axi_rvalid),
    .S_AXI_RREADY(s_axi_rready)
);

sprite_reader #(
    .SCREEN_WIDTH(C_SCREEN_WIDTH),
    .SCREEN_HEIGHT(C_SCREEN_HEIGHT),
    .MAX_SPRITES(C_MAX_SPRITES),
    .SPRITE_DATA_WIDTH(C_SPRITE_DATA_WIDTH),
    .TILE16_COUNT(C_TILE16_COUNT),
    .TILE32_COUNT(C_TILE32_COUNT),
    .PIXEL_BYTE_SIZE(C_PIXEL_BYTE_SIZE),
    .AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH)
) inst_reader (
    // Clock and Reset
    .clk(aclk),
    .rst_n(aresetn),

    // Control Interface
    .tile16_addr(tile16_addr),
    .tile32_addr(tile32_addr),
    .sprite_addr(sprite_addr),
    .buffer_addr(buffer_addr),
    .enable(reader_enable),
    .busy(reader_busy),

    // AXI4 Read Address Channel
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),

    // AXI4 Read Data Channel
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready),

    // Interface to AXI4 Write Master
    .write_address(writer_addr),
    .write_data(writer_data),
    .write_enable(writer_enable),
    .write_half_size(writer_halfsize),
    .write_busy(writer_busy)
);

sprite_writer #(
    .DATA_WIDTH(C_SPRITE_LINE_WIDTH)
) inst_writer (
    // Clock and Reset
    .clk(aclk),
    .rst_n(aresetn),

    // Control Interface
    .address(writer_addr),
    .data(writer_data),
    .enable(writer_enable),
    .half_size(writer_halfsize),
    .busy(writer_busy),

    // AXI4 Write Address Channel
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),

    // AXI4 Write Data Channel
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),

    // AXI4 Write Response Channel
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready)
);

endmodule