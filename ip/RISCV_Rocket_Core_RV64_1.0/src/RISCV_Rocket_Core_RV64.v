`timescale 1 ns / 1 ps

`include "settings.vh"

module RISCV_Rocket_Core_RV64 #(

    parameter integer C_DRAM_BASE             = `RISCV_DRAM_BASE,
    parameter integer C_DRAM_BITS             = `RISCV_DRAM_BITS,

    // ============
    // AXI Master 0
    // ============
    parameter integer C_M0_AXI_ID_WIDTH       = 5,
    parameter integer C_M0_AXI_ADDR_WIDTH     = 32,
    parameter integer C_M0_AXI_DATA_WIDTH     = 64,
    
    // ============
    // AXI Master 1
    // ============
    parameter integer C_M1_AXI_ID_WIDTH       = 5,
    parameter integer C_M1_AXI_ADDR_WIDTH     = 32,
    parameter integer C_M1_AXI_DATA_WIDTH     = 64,

    // =========
    // AXI Slave
    // =========
    parameter integer C_S_AXI_ID_WIDTH        = 12,
    parameter integer C_S_AXI_DATA_WIDTH      = 32,
    parameter integer C_S_AXI_ADDR_WIDTH      = 32
)
(
    // ============
    // AXI Master 0
    // ============
    input  wire                                m0_axi_aclk,
    input  wire                                m0_axi_aresetn,
    output wire [C_M0_AXI_ID_WIDTH-1 : 0]      m0_axi_awid,
    output wire [C_M0_AXI_ADDR_WIDTH-1 : 0]    m0_axi_awaddr,
    output wire [7 : 0]                        m0_axi_awlen,
    output wire [2 : 0]                        m0_axi_awsize,
    output wire [1 : 0]                        m0_axi_awburst,
    output wire                                m0_axi_awlock,
    output wire [3 : 0]                        m0_axi_awcache,
    output wire [2 : 0]                        m0_axi_awprot,
    output wire [3 : 0]                        m0_axi_awqos,
    output wire [3 : 0]                        m0_axi_awregion,
    output wire                                m0_axi_awvalid,
    input  wire                                m0_axi_awready,
    output wire [C_M0_AXI_DATA_WIDTH-1 : 0]    m0_axi_wdata,
    output wire [C_M0_AXI_DATA_WIDTH/8-1 : 0]  m0_axi_wstrb,
    output wire                                m0_axi_wlast,
    output wire                                m0_axi_wvalid,
    input  wire                                m0_axi_wready,
    input  wire [C_M0_AXI_ID_WIDTH-1 : 0]      m0_axi_bid,
    input  wire [1 : 0]                        m0_axi_bresp,
    input  wire                                m0_axi_bvalid,
    output wire                                m0_axi_bready,
    output wire [C_M0_AXI_ID_WIDTH-1 : 0]      m0_axi_arid,
    output wire [C_M0_AXI_ADDR_WIDTH-1 : 0]    m0_axi_araddr,
    output wire [7 : 0]                        m0_axi_arlen,
    output wire [2 : 0]                        m0_axi_arsize,
    output wire [1 : 0]                        m0_axi_arburst,
    output wire                                m0_axi_arlock,
    output wire [3 : 0]                        m0_axi_arcache,
    output wire [2 : 0]                        m0_axi_arprot,
    output wire [3 : 0]                        m0_axi_arqos,
    output wire [3 : 0]                        m0_axi_arregion,
    output wire                                m0_axi_arvalid,
    input  wire                                m0_axi_arready,
    input  wire [C_M0_AXI_ID_WIDTH-1 : 0]      m0_axi_rid,
    input  wire [C_M0_AXI_DATA_WIDTH-1 : 0]    m0_axi_rdata,
    input  wire [1 : 0]                        m0_axi_rresp,
    input  wire                                m0_axi_rlast,
    input  wire                                m0_axi_rvalid,
    output wire                                m0_axi_rready,
    
    // ============
    // AXI Master 1
    // ============
    input  wire                                m1_axi_aclk,
    input  wire                                m1_axi_aresetn,
    output wire [C_M1_AXI_ID_WIDTH-1 : 0]      m1_axi_awid,
    output wire [C_M1_AXI_ADDR_WIDTH-1 : 0]    m1_axi_awaddr,
    output wire [7 : 0]                        m1_axi_awlen,
    output wire [2 : 0]                        m1_axi_awsize,
    output wire [1 : 0]                        m1_axi_awburst,
    output wire                                m1_axi_awlock,
    output wire [3 : 0]                        m1_axi_awcache,
    output wire [2 : 0]                        m1_axi_awprot,
    output wire [3 : 0]                        m1_axi_awqos,
    output wire [3 : 0]                        m1_axi_awregion,
    output wire                                m1_axi_awvalid,
    input  wire                                m1_axi_awready,
    output wire [C_M1_AXI_DATA_WIDTH-1 : 0]    m1_axi_wdata,
    output wire [C_M1_AXI_DATA_WIDTH/8-1 : 0]  m1_axi_wstrb,
    output wire                                m1_axi_wlast,
    output wire                                m1_axi_wvalid,
    input  wire                                m1_axi_wready,
    input  wire [C_M1_AXI_ID_WIDTH-1 : 0]      m1_axi_bid,
    input  wire [1 : 0]                        m1_axi_bresp,
    input  wire                                m1_axi_bvalid,
    output wire                                m1_axi_bready,
    output wire [C_M1_AXI_ID_WIDTH-1 : 0]      m1_axi_arid,
    output wire [C_M1_AXI_ADDR_WIDTH-1 : 0]    m1_axi_araddr,
    output wire [7 : 0]                        m1_axi_arlen,
    output wire [2 : 0]                        m1_axi_arsize,
    output wire [1 : 0]                        m1_axi_arburst,
    output wire                                m1_axi_arlock,
    output wire [3 : 0]                        m1_axi_arcache,
    output wire [2 : 0]                        m1_axi_arprot,
    output wire [3 : 0]                        m1_axi_arqos,
    output wire [3 : 0]                        m1_axi_arregion,
    output wire                                m1_axi_arvalid,
    input  wire                                m1_axi_arready,
    input  wire [C_M1_AXI_ID_WIDTH-1 : 0]      m1_axi_rid,
    input  wire [C_M1_AXI_DATA_WIDTH-1 : 0]    m1_axi_rdata,
    input  wire [1 : 0]                        m1_axi_rresp,
    input  wire                                m1_axi_rlast,
    input  wire                                m1_axi_rvalid,
    output wire                                m1_axi_rready,


    // =========
    // AXI Slave
    // =========
    input  wire                                s_axi_aclk,
    input  wire                                s_axi_aresetn,
    input  wire [C_S_AXI_ID_WIDTH-1 : 0]       s_axi_awid,
    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     s_axi_awaddr,
    input  wire [7 : 0]                        s_axi_awlen,
    input  wire [2 : 0]                        s_axi_awsize,
    input  wire [1 : 0]                        s_axi_awburst,
    input  wire                                s_axi_awlock,
    input  wire [3 : 0]                        s_axi_awcache,
    input  wire [2 : 0]                        s_axi_awprot,
    input  wire [3 : 0]                        s_axi_awqos,
    input  wire [3 : 0]                        s_axi_awregion,
    input  wire                                s_axi_awvalid,
    output wire                                s_axi_awready,
    input  wire [C_S_AXI_DATA_WIDTH-1 : 0]     s_axi_wdata,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
    input  wire                                s_axi_wlast,
    input  wire                                s_axi_wvalid,
    output wire                                s_axi_wready,
    output wire [C_S_AXI_ID_WIDTH-1 : 0]       s_axi_bid,
    output wire [1 : 0]                        s_axi_bresp,
    output wire                                s_axi_bvalid,
    input  wire                                s_axi_bready,
    input  wire [C_S_AXI_ID_WIDTH-1 : 0]       s_axi_arid,
    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     s_axi_araddr,
    input  wire [7 : 0]                        s_axi_arlen,
    input  wire [2 : 0]                        s_axi_arsize,
    input  wire [1 : 0]                        s_axi_arburst,
    input  wire                                s_axi_arlock,
    input  wire [3 : 0]                        s_axi_arcache,
    input  wire [2 : 0]                        s_axi_arprot,
    input  wire [3 : 0]                        s_axi_arqos,
    input  wire [3 : 0]                        s_axi_arregion,
    input  wire                                s_axi_arvalid,
    output wire                                s_axi_arready,
    output wire [C_S_AXI_ID_WIDTH-1 : 0]       s_axi_rid,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0]     s_axi_rdata,
    output wire [1 : 0]                        s_axi_rresp,
    output wire                                s_axi_rlast,
    output wire                                s_axi_rvalid,
    input  wire                                s_axi_rready
);

    RISCV_Rocket_Core_RV64_AXI #(
        .C_DRAM_BASE            (C_DRAM_BASE),
        .C_DRAM_BITS            (C_DRAM_BITS),

        // ============
        // AXI Master 0
        // ============
        .C_M0_AXI_ID_WIDTH       (C_M0_AXI_ID_WIDTH),
        .C_M0_AXI_ADDR_WIDTH     (C_M0_AXI_ADDR_WIDTH),
        .C_M0_AXI_DATA_WIDTH     (C_M0_AXI_DATA_WIDTH),
        
        // ============
        // AXI Master 1
        // ============
        .C_M1_AXI_ID_WIDTH       (C_M1_AXI_ID_WIDTH),
        .C_M1_AXI_ADDR_WIDTH     (C_M1_AXI_ADDR_WIDTH),
        .C_M1_AXI_DATA_WIDTH     (C_M1_AXI_DATA_WIDTH),
        
        // =========
        // AXI Slave   
        // =========
        .C_S_AXI_ID_WIDTH       (C_S_AXI_ID_WIDTH),
        .C_S_AXI_DATA_WIDTH     (C_S_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH     (C_S_AXI_ADDR_WIDTH)
    )
    RISCV_Rocket_Core_RV64_AXI_inst (
        // ============
        // AXI Master 0
        // ============
        .M0_AXI_ACLK     (m0_axi_aclk),
        .M0_AXI_ARESETN  (m0_axi_aresetn),
        .M0_AXI_AWID     (m0_axi_awid),
        .M0_AXI_AWADDR   (m0_axi_awaddr),
        .M0_AXI_AWLEN    (m0_axi_awlen),
        .M0_AXI_AWSIZE   (m0_axi_awsize),
        .M0_AXI_AWREGION (m0_axi_awregion),
        .M0_AXI_AWBURST  (m0_axi_awburst),
        .M0_AXI_AWLOCK   (m0_axi_awlock),
        .M0_AXI_AWCACHE  (m0_axi_awcache),
        .M0_AXI_AWPROT   (m0_axi_awprot),
        .M0_AXI_AWQOS    (m0_axi_awqos),
        .M0_AXI_AWVALID  (m0_axi_awvalid),
        .M0_AXI_AWREADY  (m0_axi_awready),
        .M0_AXI_WDATA    (m0_axi_wdata),
        .M0_AXI_WSTRB    (m0_axi_wstrb),
        .M0_AXI_WLAST    (m0_axi_wlast),
        .M0_AXI_WVALID   (m0_axi_wvalid),
        .M0_AXI_WREADY   (m0_axi_wready),
        .M0_AXI_BID      (m0_axi_bid),
        .M0_AXI_BRESP    (m0_axi_bresp),
        .M0_AXI_BVALID   (m0_axi_bvalid),
        .M0_AXI_BREADY   (m0_axi_bready),
        .M0_AXI_ARID     (m0_axi_arid),
        .M0_AXI_ARADDR   (m0_axi_araddr),
        .M0_AXI_ARLEN    (m0_axi_arlen),
        .M0_AXI_ARSIZE   (m0_axi_arsize),
        .M0_AXI_ARREGION (m0_axi_arregion),
        .M0_AXI_ARBURST  (m0_axi_arburst),
        .M0_AXI_ARLOCK   (m0_axi_arlock),
        .M0_AXI_ARCACHE  (m0_axi_arcache),
        .M0_AXI_ARPROT   (m0_axi_arprot),
        .M0_AXI_ARQOS    (m0_axi_arqos),
        .M0_AXI_ARVALID  (m0_axi_arvalid),
        .M0_AXI_ARREADY  (m0_axi_arready),
        .M0_AXI_RID      (m0_axi_rid),
        .M0_AXI_RDATA    (m0_axi_rdata),
        .M0_AXI_RRESP    (m0_axi_rresp),
        .M0_AXI_RLAST    (m0_axi_rlast),
        .M0_AXI_RVALID   (m0_axi_rvalid),
        .M0_AXI_RREADY   (m0_axi_rready),
        
        // ============
        // AXI Master 1
        // ============
        .M1_AXI_ACLK     (m1_axi_aclk),
        .M1_AXI_ARESETN  (m1_axi_aresetn),
        .M1_AXI_AWID     (m1_axi_awid),
        .M1_AXI_AWADDR   (m1_axi_awaddr),
        .M1_AXI_AWLEN    (m1_axi_awlen),
        .M1_AXI_AWSIZE   (m1_axi_awsize),
        .M1_AXI_AWREGION (m1_axi_awregion),
        .M1_AXI_AWBURST  (m1_axi_awburst),
        .M1_AXI_AWLOCK   (m1_axi_awlock),
        .M1_AXI_AWCACHE  (m1_axi_awcache),
        .M1_AXI_AWPROT   (m1_axi_awprot),
        .M1_AXI_AWQOS    (m1_axi_awqos),
        .M1_AXI_AWVALID  (m1_axi_awvalid),
        .M1_AXI_AWREADY  (m1_axi_awready),
        .M1_AXI_WDATA    (m1_axi_wdata),
        .M1_AXI_WSTRB    (m1_axi_wstrb),
        .M1_AXI_WLAST    (m1_axi_wlast),
        .M1_AXI_WVALID   (m1_axi_wvalid),
        .M1_AXI_WREADY   (m1_axi_wready),
        .M1_AXI_BID      (m1_axi_bid),
        .M1_AXI_BRESP    (m1_axi_bresp),
        .M1_AXI_BVALID   (m1_axi_bvalid),
        .M1_AXI_BREADY   (m1_axi_bready),
        .M1_AXI_ARID     (m1_axi_arid),
        .M1_AXI_ARADDR   (m1_axi_araddr),
        .M1_AXI_ARLEN    (m1_axi_arlen),
        .M1_AXI_ARSIZE   (m1_axi_arsize),
        .M1_AXI_ARREGION (m1_axi_arregion),
        .M1_AXI_ARBURST  (m1_axi_arburst),
        .M1_AXI_ARLOCK   (m1_axi_arlock),
        .M1_AXI_ARCACHE  (m1_axi_arcache),
        .M1_AXI_ARPROT   (m1_axi_arprot),
        .M1_AXI_ARQOS    (m1_axi_arqos),
        .M1_AXI_ARVALID  (m1_axi_arvalid),
        .M1_AXI_ARREADY  (m1_axi_arready),
        .M1_AXI_RID      (m1_axi_rid),
        .M1_AXI_RDATA    (m1_axi_rdata),
        .M1_AXI_RRESP    (m1_axi_rresp),
        .M1_AXI_RLAST    (m1_axi_rlast),
        .M1_AXI_RVALID   (m1_axi_rvalid),
        .M1_AXI_RREADY   (m1_axi_rready),

        // =========
        // AXI Slave
        // =========
        .S_AXI_ACLK     (s_axi_aclk),
        .S_AXI_ARESETN  (s_axi_aresetn),
        .S_AXI_AWID     (s_axi_awid),
        .S_AXI_AWADDR   (s_axi_awaddr),
        .S_AXI_AWLEN    (s_axi_awlen),
        .S_AXI_AWSIZE   (s_axi_awsize),
        .S_AXI_AWBURST  (s_axi_awburst),
        .S_AXI_AWLOCK   (s_axi_awlock),
        .S_AXI_AWCACHE  (),
        .S_AXI_AWPROT   (s_axi_awprot),
        .S_AXI_AWQOS    (s_axi_awqos),
        .S_AXI_AWREGION (s_axi_awregion),
        .S_AXI_AWVALID  (s_axi_awvalid),
        .S_AXI_AWREADY  (s_axi_awready),
        .S_AXI_WDATA    (s_axi_wdata),
        .S_AXI_WSTRB    (s_axi_wstrb),
        .S_AXI_WLAST    (s_axi_wlast),
        .S_AXI_WVALID   (s_axi_wvalid),
        .S_AXI_WREADY   (s_axi_wready),
        .S_AXI_BID      (s_axi_bid),
        .S_AXI_BRESP    (2'b00),
        .S_AXI_BVALID   (s_axi_bvalid),
        .S_AXI_BREADY   (s_axi_bready),
        .S_AXI_ARID     (s_axi_arid),
        .S_AXI_ARADDR   (s_axi_araddr),
        .S_AXI_ARLEN    (s_axi_arlen),
        .S_AXI_ARSIZE   (s_axi_arsize),
        .S_AXI_ARBURST  (s_axi_arburst),
        .S_AXI_ARLOCK   (s_axi_arlock),
        .S_AXI_ARCACHE  (),
        .S_AXI_ARPROT   (s_axi_arprot),
        .S_AXI_ARQOS    (s_axi_arqos),
        .S_AXI_ARREGION (s_axi_arregion),
        .S_AXI_ARVALID  (s_axi_arvalid),
        .S_AXI_ARREADY  (s_axi_arready),
        .S_AXI_RID      (s_axi_rid),
        .S_AXI_RDATA    (s_axi_rdata),
        .S_AXI_RRESP    (),
        .S_AXI_RLAST    (s_axi_rlast),
        .S_AXI_RVALID   (s_axi_rvalid),
        .S_AXI_RREADY   (s_axi_rready)
    );

endmodule