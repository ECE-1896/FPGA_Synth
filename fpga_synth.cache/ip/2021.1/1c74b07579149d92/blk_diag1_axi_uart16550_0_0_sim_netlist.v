// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Sep 12 00:26:32 2024
// Host        : DESKTOP-9UI98RB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_diag1_axi_uart16550_0_0_sim_netlist.v
// Design      : blk_diag1_axi_uart16550_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    Bus_RNW_reg_reg_0,
    Q,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    wrReq_d1);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input Bus_RNW_reg_reg_0;
  input Q;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input wrReq_d1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire Q;
  wire Wr;
  wire bus2ip_rdce_i;
  wire bus2ip_wrce_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire wrReq_d1;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bus2ip_rdreq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wrReq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce_i));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    wr_d_i_1
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(wrReq_d1),
        .O(Wr));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (bus2ip_reset_int_core,
    ce_out_i,
    s_axi_rvalid,
    s_axi_bvalid,
    SR,
    rst_reg,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4] ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    s_axi_arvalid,
    rx_fifo_rst,
    p_2_in44_in,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rready,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_awaddr,
    wrReq_d1);
  output bus2ip_reset_int_core;
  output ce_out_i;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]SR;
  output rst_reg;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4] ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input s_axi_arvalid;
  input rx_fifo_rst;
  input p_2_in44_in;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input s_axi_rready;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [7:0]Q;
  input s_axi_aresetn;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input wrReq_d1;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire Wr;
  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire p_2_in44_in;
  wire rst_reg;
  wire rx_fifo_rst;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wvalid;
  wire wrReq_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (ce_out_i),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .Q(Q),
        .SR(bus2ip_reset_int_core),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4] ),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .p_2_in44_in(p_2_in44_in),
        .rst_reg_0(SR),
        .rst_reg_1(rst_reg),
        .rx_fifo_rst(rx_fifo_rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(wrReq_d1));
endmodule

(* C_EXTERNAL_XIN_CLK_HZ = "1000000" *) (* C_FAMILY = "zynq" *) (* C_HAS_EXTERNAL_RCLK = "1" *) 
(* C_HAS_EXTERNAL_XIN = "1" *) (* C_IS_A_16550 = "1" *) (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
(* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_uart16550
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rclk,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn,
    xin,
    xout);
  input s_axi_aclk;
  input s_axi_aresetn;
  (* sigis = "INTERRUPT" *) output ip2intc_irpt;
  input freeze;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output baudoutn;
  input ctsn;
  input dcdn;
  output ddis;
  input dsrn;
  output dtrn;
  output out1n;
  output out2n;
  (* sigis = "CLK" *) input rclk;
  input rin;
  output rtsn;
  output rxrdyn;
  input sin;
  output sout;
  output txrdyn;
  (* sigis = "CLK" *) input xin;
  output xout;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_4;
  wire AXI_LITE_IPIF_I_n_5;
  wire [2:0]Addr;
  wire [7:0]Dout;
  wire \IPIC_IF_I_1/wrReq_d1 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ;
  wire \UART16550_I_1/p_2_in44_in ;
  wire \UART16550_I_1/rx_fifo_rst ;
  wire Wr;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rclk;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;
  wire xin;
  wire xout;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif AXI_LITE_IPIF_I
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (s_axi_arready),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (s_axi_awready),
        .Q(Dout),
        .SR(AXI_LITE_IPIF_I_n_4),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4] (Addr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .p_2_in44_in(\UART16550_I_1/p_2_in44_in ),
        .rst_reg(AXI_LITE_IPIF_I_n_5),
        .rx_fifo_rst(\UART16550_I_1/rx_fifo_rst ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart XUART_I_1
       (.Q(Dout),
        .SR(AXI_LITE_IPIF_I_n_4),
        .Wr(Wr),
        .\addr_d_reg[2] (Addr),
        .baudoutN_int_i_reg(baudoutn),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .p_2_in44_in(\UART16550_I_1/p_2_in44_in ),
        .rclk(rclk),
        .rin(rin),
        .rtsn(rtsn),
        .rx_fifo_rst(\UART16550_I_1/rx_fifo_rst ),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sin(sin),
        .sout(sout),
        .thre_iir_set_reg(AXI_LITE_IPIF_I_n_5),
        .txrdyn(txrdyn),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ),
        .xin(xin),
        .xout(xout));
endmodule

(* CHECK_LICENSE_TYPE = "blk_diag1_axi_uart16550_0_0,axi_uart16550,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_uart16550,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rclk,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn,
    xin,
    xout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blk_diag1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  input freeze;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN blk_diag1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART BAUDOUTn" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *) output baudoutn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART CTSn" *) input ctsn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DCDn" *) input dcdn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DDIS" *) output ddis;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DSRn" *) input dsrn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART DTRn" *) output dtrn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART OUT1n" *) output out1n;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART OUT2n" *) output out2n;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RCLK" *) input rclk;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RI" *) input rin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RTSn" *) output rtsn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RXRDYn" *) output rxrdyn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) input sin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output sout;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TXRDYn" *) output txrdyn;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART XIN" *) input xin;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART XOUT" *) output xout;

  wire \<const0> ;
  wire baudoutn;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rclk;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;
  wire xin;
  wire xout;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:8]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_EXTERNAL_XIN_CLK_HZ = "1000000" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_EXTERNAL_RCLK = "1" *) 
  (* C_HAS_EXTERNAL_XIN = "1" *) 
  (* C_IS_A_16550 = "1" *) 
  (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_uart16550 U0
       (.baudoutn(baudoutn),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rclk(rclk),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[4:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[4:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_U0_s_axi_rdata_UNCONNECTED[31:8],\^s_axi_rdata }),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[7:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .xin(xin),
        .xout(xout));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (rst_reg,
    scndry_out,
    bus2ip_reset_int_core,
    rclk_d3,
    rclk,
    s_axi_aclk);
  output rst_reg;
  output scndry_out;
  input bus2ip_reset_int_core;
  input rclk_d3;
  input rclk;
  input s_axi_aclk;

  wire bus2ip_reset_int_core;
  wire rclk;
  wire rclk_d3;
  wire rst_reg;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rclk),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    sin_d1_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(scndry_out),
        .I2(rclk_d3),
        .O(rst_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
   (xout,
    scndry_out,
    E,
    \GENERATING_EXTERNAL_XIN.xin_d3_reg ,
    xin_d3,
    bus2ip_reset_int_core,
    baudoutN_int_i_reg,
    xin,
    s_axi_aclk);
  output xout;
  output scndry_out;
  output [0:0]E;
  output \GENERATING_EXTERNAL_XIN.xin_d3_reg ;
  input xin_d3;
  input bus2ip_reset_int_core;
  input baudoutN_int_i_reg;
  input xin;
  input s_axi_aclk;

  wire [0:0]E;
  wire \GENERATING_EXTERNAL_XIN.xin_d3_reg ;
  wire baudoutN_int_i_reg;
  wire bus2ip_reset_int_core;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire xin;
  wire xin_d3;
  wire xout;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xin),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \baudCounter[15]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(xin_d3),
        .I2(scndry_out),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    baudoutN_int_i_i_1
       (.I0(xin_d3),
        .I1(scndry_out),
        .I2(baudoutN_int_i_reg),
        .O(\GENERATING_EXTERNAL_XIN.xin_d3_reg ));
  LUT2 #(
    .INIT(4'hB)) 
    xout_INST_0
       (.I0(xin_d3),
        .I1(scndry_out),
        .O(xout));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f
   (fifo_full_p1,
    Q,
    FIFO_Full_reg,
    tx_fifo_rd_en_int,
    tx_fifo_full,
    tx_fifo_wr_en_d,
    SS,
    s_axi_aclk);
  output fifo_full_p1;
  output [4:0]Q;
  input FIFO_Full_reg;
  input tx_fifo_rd_en_int;
  input tx_fifo_full;
  input tx_fifo_wr_en_d;
  input [0:0]SS;
  input s_axi_aclk;

  wire FIFO_Full_i_2_n_0;
  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i[3]_i_2_n_0 ;
  wire \INFERRED_GEN.cnt_i[3]_i_3_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_2_n_0 ;
  wire [4:0]Q;
  wire [0:0]SS;
  wire [4:0]addr_i_p1;
  wire fifo_full_p1;
  wire s_axi_aclk;
  wire tx_fifo_full;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;

  LUT6 #(
    .INIT(64'h0082002200080088)) 
    FIFO_Full_i_1
       (.I0(FIFO_Full_i_2_n_0),
        .I1(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .I2(FIFO_Full_reg),
        .I3(Q[4]),
        .I4(tx_fifo_rd_en_int),
        .I5(Q[3]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h8288080000001011)) 
    FIFO_Full_i_2
       (.I0(Q[2]),
        .I1(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I2(tx_fifo_full),
        .I3(tx_fifo_wr_en_d),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(FIFO_Full_i_2_n_0));
  LUT6 #(
    .INIT(64'hDF20DFDF20DF2020)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(tx_fifo_rd_en_int),
        .I1(Q[4]),
        .I2(FIFO_Full_reg),
        .I3(tx_fifo_full),
        .I4(tx_fifo_wr_en_d),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hDFF2200D)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(tx_fifo_wr_en_d),
        .I1(tx_fifo_full),
        .I2(Q[0]),
        .I3(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I4(Q[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hAAAA6AAAA9A9AAA9)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(Q[2]),
        .I1(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(tx_fifo_wr_en_d),
        .I4(tx_fifo_full),
        .I5(Q[0]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hF7FFFFEF08000010)) 
    \INFERRED_GEN.cnt_i[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\INFERRED_GEN.cnt_i[3]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I5(Q[3]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[3]_i_2 
       (.I0(tx_fifo_full),
        .I1(tx_fifo_wr_en_d),
        .O(\INFERRED_GEN.cnt_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \INFERRED_GEN.cnt_i[3]_i_3 
       (.I0(FIFO_Full_reg),
        .I1(Q[4]),
        .I2(tx_fifo_rd_en_int),
        .O(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h525AF4F0)) 
    \INFERRED_GEN.cnt_i[4]_i_1 
       (.I0(Q[3]),
        .I1(tx_fifo_rd_en_int),
        .I2(Q[4]),
        .I3(FIFO_Full_reg),
        .I4(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .O(addr_i_p1[4]));
  LUT6 #(
    .INIT(64'h0800FFFF0000FFAE)) 
    \INFERRED_GEN.cnt_i[4]_i_2 
       (.I0(Q[1]),
        .I1(tx_fifo_wr_en_d),
        .I2(tx_fifo_full),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i[3]_i_3_n_0 ),
        .I5(Q[2]),
        .O(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f_1
   (fifo_trigger_level_flag,
    Q,
    fifo_full_p1,
    lsr4_set,
    lsr3_set,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    \GENERATING_FIFOS.fcr_reg[0] ,
    \INFERRED_GEN.cnt_i_reg[4]_1 ,
    data3,
    rx_fifo_rd_en_d,
    \INFERRED_GEN.cnt_i_reg[1]_0 ,
    character_received,
    have_bi_in_fifo_n,
    rx_fifo_full,
    \INFERRED_GEN.cnt_i_reg[0]_0 ,
    rx_fifo_data_in,
    rx_fifo_rd_en_d1,
    out,
    lsr2_rst_reg,
    chipSelect,
    wr_d,
    lsr2_rst,
    SS,
    s_axi_aclk);
  output fifo_trigger_level_flag;
  output [4:0]Q;
  output fifo_full_p1;
  output lsr4_set;
  output lsr3_set;
  output \INFERRED_GEN.cnt_i_reg[4]_0 ;
  output \GENERATING_FIFOS.fcr_reg[0] ;
  output \INFERRED_GEN.cnt_i_reg[4]_1 ;
  input [1:0]data3;
  input rx_fifo_rd_en_d;
  input \INFERRED_GEN.cnt_i_reg[1]_0 ;
  input character_received;
  input have_bi_in_fifo_n;
  input rx_fifo_full;
  input \INFERRED_GEN.cnt_i_reg[0]_0 ;
  input [1:0]rx_fifo_data_in;
  input rx_fifo_rd_en_d1;
  input [1:0]out;
  input lsr2_rst_reg;
  input chipSelect;
  input wr_d;
  input lsr2_rst;
  input [0:0]SS;
  input s_axi_aclk;

  wire FIFO_Full_i_2__0_n_0;
  wire FIFO_Full_i_3_n_0;
  wire \GENERATING_FIFOS.fcr_reg[0] ;
  wire \INFERRED_GEN.cnt_i[3]_i_3__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[0]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[1]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_1 ;
  wire [4:0]Q;
  wire Rx_fifo_trigger_i_2_n_0;
  wire Rx_fifo_trigger_i_3_n_0;
  wire [0:0]SS;
  wire [4:0]addr_i_p1;
  wire character_received;
  wire chipSelect;
  wire [1:0]data3;
  wire fifo_full_p1;
  wire fifo_trigger_level_flag;
  wire have_bi_in_fifo_n;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr3_set;
  wire lsr4_set;
  wire [1:0]out;
  wire [1:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire s_axi_aclk;
  wire wr_d;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h08020008)) 
    FIFO_Full_i_1__0
       (.I0(FIFO_Full_i_2__0_n_0),
        .I1(FIFO_Full_i_3_n_0),
        .I2(Q[4]),
        .I3(rx_fifo_rd_en_d),
        .I4(Q[3]),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h8288202200000400)) 
    FIFO_Full_i_2__0
       (.I0(Q[2]),
        .I1(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I2(Q[4]),
        .I3(rx_fifo_rd_en_d),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(FIFO_Full_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0CAE0C0C0C0C080C)) 
    FIFO_Full_i_3
       (.I0(Q[0]),
        .I1(rx_fifo_rd_en_d),
        .I2(Q[4]),
        .I3(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(FIFO_Full_i_3_n_0));
  LUT6 #(
    .INIT(64'h9999699999999999)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\INFERRED_GEN.cnt_i[3]_i_3__0_n_0 ),
        .I2(character_received),
        .I3(have_bi_in_fifo_n),
        .I4(rx_fifo_full),
        .I5(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAA659AA)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(Q[1]),
        .I1(rx_fifo_rd_en_d),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hAAAA59AAAAA6AAAA)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(Q[2]),
        .I1(rx_fifo_rd_en_d),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I5(Q[1]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hF7FFFFEF08000010)) 
    \INFERRED_GEN.cnt_i[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\INFERRED_GEN.cnt_i_reg[1]_0 ),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i[3]_i_3__0_n_0 ),
        .I5(Q[3]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[3]_i_3__0 
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d),
        .O(\INFERRED_GEN.cnt_i[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h52F0F0F0F0F0F0F4)) 
    \INFERRED_GEN.cnt_i[4]_i_1__0 
       (.I0(Q[3]),
        .I1(rx_fifo_rd_en_d),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ),
        .O(addr_i_p1[4]));
  LUT6 #(
    .INIT(64'h2222B22222222222)) 
    \INFERRED_GEN.cnt_i[4]_i_2__0 
       (.I0(Q[0]),
        .I1(\INFERRED_GEN.cnt_i[3]_i_3__0_n_0 ),
        .I2(character_received),
        .I3(have_bi_in_fifo_n),
        .I4(rx_fifo_full),
        .I5(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .O(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(SS));
  LUT6 #(
    .INIT(64'h00000000BAAAFFFB)) 
    Rx_fifo_trigger_i_1
       (.I0(Q[3]),
        .I1(data3[0]),
        .I2(Q[2]),
        .I3(Rx_fifo_trigger_i_2_n_0),
        .I4(data3[1]),
        .I5(Rx_fifo_trigger_i_3_n_0),
        .O(fifo_trigger_level_flag));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Rx_fifo_trigger_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(Rx_fifo_trigger_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAEAEAEAEAEA)) 
    Rx_fifo_trigger_i_3
       (.I0(Q[4]),
        .I1(data3[1]),
        .I2(data3[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(Rx_fifo_trigger_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \iir[3]_i_3 
       (.I0(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I1(Q[4]),
        .O(\GENERATING_FIFOS.fcr_reg[0] ));
  LUT6 #(
    .INIT(64'h44444FFF44444444)) 
    lsr2_rst_i_1
       (.I0(Q[4]),
        .I1(lsr2_rst_reg),
        .I2(chipSelect),
        .I3(wr_d),
        .I4(rx_fifo_rd_en_d),
        .I5(lsr2_rst),
        .O(\INFERRED_GEN.cnt_i_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \lsr[2]_i_6 
       (.I0(Q[4]),
        .I1(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I2(rx_fifo_rd_en_d1),
        .I3(rx_fifo_rd_en_d),
        .O(\INFERRED_GEN.cnt_i_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A3A0A0A0A0A)) 
    \lsr[3]_i_2 
       (.I0(rx_fifo_data_in[1]),
        .I1(Q[4]),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(rx_fifo_rd_en_d1),
        .I4(rx_fifo_rd_en_d),
        .I5(out[1]),
        .O(lsr3_set));
  LUT6 #(
    .INIT(64'h0A0A0A3A0A0A0A0A)) 
    \lsr[4]_i_2 
       (.I0(rx_fifo_data_in[0]),
        .I1(Q[4]),
        .I2(\INFERRED_GEN.cnt_i_reg[0]_0 ),
        .I3(rx_fifo_rd_en_d1),
        .I4(rx_fifo_rd_en_d),
        .I5(out[0]),
        .O(lsr4_set));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f
   (\GENERATING_FIFOS.fcr_reg[0] ,
    \GENERATING_FIFOS.fcr_reg[0]_0 ,
    out,
    tx_fifo_wr_en_d,
    tx_fifo_full,
    \tsr_reg[2] ,
    \tsr_reg[2]_0 ,
    \tsr_reg[6] ,
    \tsr_reg[7] ,
    Q,
    s_axi_aclk);
  output \GENERATING_FIFOS.fcr_reg[0] ;
  output \GENERATING_FIFOS.fcr_reg[0]_0 ;
  output [5:0]out;
  input tx_fifo_wr_en_d;
  input tx_fifo_full;
  input \tsr_reg[2] ;
  input [0:0]\tsr_reg[2]_0 ;
  input [1:0]\tsr_reg[6] ;
  input [7:0]\tsr_reg[7] ;
  input [3:0]Q;
  input s_axi_aclk;

  wire \GENERATING_FIFOS.fcr_reg[0] ;
  wire \GENERATING_FIFOS.fcr_reg[0]_0 ;
  wire [3:0]Q;
  wire [5:0]out;
  wire s_axi_aclk;
  wire \tsr_reg[2] ;
  wire [0:0]\tsr_reg[2]_0 ;
  wire [1:0]\tsr_reg[6] ;
  wire [7:0]\tsr_reg[7] ;
  wire [6:2]tx_fifo_data_out;
  wire tx_fifo_full;
  wire tx_fifo_wr_en_d;
  wire tx_fifo_wr_en_i;

  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [7]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [6]),
        .Q(tx_fifo_data_out[6]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [5]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [4]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [3]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [2]),
        .Q(tx_fifo_data_out[2]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [1]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \INFERRED_GEN.data_reg[15][7]_srl16_i_1 
       (.I0(tx_fifo_wr_en_d),
        .I1(tx_fifo_full),
        .O(tx_fifo_wr_en_i));
  LUT4 #(
    .INIT(16'h0B08)) 
    \tsr[2]_i_2 
       (.I0(tx_fifo_data_out[2]),
        .I1(\tsr_reg[2] ),
        .I2(\tsr_reg[2]_0 ),
        .I3(\tsr_reg[6] [0]),
        .O(\GENERATING_FIFOS.fcr_reg[0] ));
  LUT4 #(
    .INIT(16'h0B08)) 
    \tsr[6]_i_2 
       (.I0(tx_fifo_data_out[6]),
        .I1(\tsr_reg[2] ),
        .I2(\tsr_reg[2]_0 ),
        .I3(\tsr_reg[6] [1]),
        .O(\GENERATING_FIFOS.fcr_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f__parameterized0
   (rx_error_in_fifo_cnt_dn0,
    out,
    D,
    lsr2_set,
    rx_fifo_rd_en_d,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    \Dout_reg[0] ,
    clockDiv,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[0]_2 ,
    \Dout_reg[3] ,
    \Dout_reg[3]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[3]_2 ,
    \Dout_reg[6] ,
    \Dout_reg[6]_0 ,
    \Dout_reg[6]_1 ,
    \Dout_reg[7] ,
    \Dout_reg[6]_2 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[5]_0 ,
    \Dout_reg[4] ,
    \Dout_reg[3]_3 ,
    \Dout_reg[0]_3 ,
    \lsr_reg[2] ,
    \lsr_reg[2]_0 ,
    \lsr_reg[2]_1 ,
    rx_fifo_data_in,
    rx_fifo_wr_en_i,
    Q,
    s_axi_aclk);
  output rx_error_in_fifo_cnt_dn0;
  output [3:0]out;
  output [5:0]D;
  output lsr2_set;
  input rx_fifo_rd_en_d;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input \Dout_reg[0] ;
  input [1:0]clockDiv;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[0]_2 ;
  input \Dout_reg[3] ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[3]_2 ;
  input \Dout_reg[6] ;
  input \Dout_reg[6]_0 ;
  input \Dout_reg[6]_1 ;
  input [5:0]\Dout_reg[7] ;
  input \Dout_reg[6]_2 ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[5]_0 ;
  input \Dout_reg[4] ;
  input [1:0]\Dout_reg[3]_3 ;
  input \Dout_reg[0]_3 ;
  input [0:0]\lsr_reg[2] ;
  input \lsr_reg[2]_0 ;
  input \lsr_reg[2]_1 ;
  input [10:0]rx_fifo_data_in;
  input rx_fifo_wr_en_i;
  input [3:0]Q;
  input s_axi_aclk;

  wire [5:0]D;
  wire \Dout[0]_i_5_n_0 ;
  wire \Dout[3]_i_6_n_0 ;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[0]_3 ;
  wire \Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire [1:0]\Dout_reg[3]_3 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[5]_0 ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire [5:0]\Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire [3:0]Q;
  wire [1:0]clockDiv;
  wire lsr2_set;
  wire [0:0]\lsr_reg[2] ;
  wire \lsr_reg[2]_0 ;
  wire \lsr_reg[2]_1 ;
  wire [3:0]out;
  wire rx_error_in_fifo_cnt_dn0;
  wire [10:0]rx_fifo_data_in;
  wire [10:0]rx_fifo_data_out;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \Dout[0]_i_1 
       (.I0(\Dout_reg[0] ),
        .I1(clockDiv[1]),
        .I2(\Dout_reg[0]_0 ),
        .I3(\Dout_reg[0]_1 ),
        .I4(\Dout_reg[0]_2 ),
        .I5(\Dout[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[0]_i_5 
       (.I0(\Dout_reg[6]_1 ),
        .I1(rx_fifo_data_out[0]),
        .I2(\Dout_reg[3]_3 [0]),
        .I3(\Dout_reg[0]_3 ),
        .I4(\Dout_reg[7] [0]),
        .I5(\Dout_reg[6]_2 ),
        .O(\Dout[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \Dout[3]_i_1 
       (.I0(\Dout_reg[3] ),
        .I1(clockDiv[0]),
        .I2(\Dout_reg[3]_0 ),
        .I3(\Dout_reg[3]_1 ),
        .I4(\Dout_reg[3]_2 ),
        .I5(\Dout[3]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[3]_i_6 
       (.I0(\Dout_reg[6]_1 ),
        .I1(rx_fifo_data_out[3]),
        .I2(\Dout_reg[3]_3 [1]),
        .I3(\Dout_reg[0]_3 ),
        .I4(\Dout_reg[7] [1]),
        .I5(\Dout_reg[6]_2 ),
        .O(\Dout[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \Dout[4]_i_1 
       (.I0(\Dout_reg[4] ),
        .I1(rx_fifo_data_out[4]),
        .I2(\Dout_reg[6]_1 ),
        .I3(\Dout_reg[7] [2]),
        .I4(\Dout_reg[6]_2 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFFEEFE)) 
    \Dout[5]_i_1 
       (.I0(\Dout_reg[5] ),
        .I1(\Dout_reg[5]_0 ),
        .I2(rx_fifo_data_out[5]),
        .I3(\Dout_reg[6]_1 ),
        .I4(\Dout_reg[7] [3]),
        .I5(\Dout_reg[6]_2 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFFEEFE)) 
    \Dout[6]_i_1 
       (.I0(\Dout_reg[6] ),
        .I1(\Dout_reg[6]_0 ),
        .I2(rx_fifo_data_out[6]),
        .I3(\Dout_reg[6]_1 ),
        .I4(\Dout_reg[7] [4]),
        .I5(\Dout_reg[6]_2 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hEEFEEEFEFFFFEEFE)) 
    \Dout[7]_i_2 
       (.I0(\Dout_reg[7]_0 ),
        .I1(\Dout_reg[7]_1 ),
        .I2(rx_fifo_data_out[7]),
        .I3(\Dout_reg[6]_1 ),
        .I4(\Dout_reg[7] [5]),
        .I5(\Dout_reg[6]_2 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFE00FEFE)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(rx_fifo_data_out[10]),
        .I3(rx_fifo_rd_en_d),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .O(rx_error_in_fifo_cnt_dn0));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[10]),
        .Q(rx_fifo_data_out[10]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][10]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[0]),
        .Q(rx_fifo_data_out[0]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[9]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[8]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[7]),
        .Q(rx_fifo_data_out[7]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[6]),
        .Q(rx_fifo_data_out[6]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[5]),
        .Q(rx_fifo_data_out[5]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[4]),
        .Q(rx_fifo_data_out[4]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[3]),
        .Q(rx_fifo_data_out[3]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][8]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[2]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][9]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[1]),
        .Q(out[0]));
  LUT5 #(
    .INIT(32'h08AA0808)) 
    \lsr[2]_i_2 
       (.I0(\lsr_reg[2] ),
        .I1(rx_fifo_data_out[10]),
        .I2(\lsr_reg[2]_0 ),
        .I3(\lsr_reg[2]_1 ),
        .I4(rx_fifo_data_in[10]),
        .O(lsr2_set));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic_if
   (wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    Rd,
    bus2ip_reset_int_core,
    bus2ip_wrce_i,
    s_axi_aclk,
    bus2ip_rdce_i);
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output Rd;
  input bus2ip_reset_int_core;
  input bus2ip_wrce_i;
  input s_axi_aclk;
  input bus2ip_rdce_i;

  wire Rd;
  wire bus2ip_rdce_i;
  wire bus2ip_rdreq_d1;
  wire bus2ip_rdreq_d2;
  wire bus2ip_rdreq_d3;
  wire bus2ip_rdreq_d4;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ip2bus_rdack;
  wire ip2bus_rdack_d1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_d1;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire wrReq_d1;
  wire wrReq_d2;
  wire wrReq_d3;

  FDRE IP2Bus_RdAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_d1),
        .Q(s_axi_arready),
        .R(bus2ip_reset_int_core));
  FDRE IP2Bus_WrAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_d1),
        .Q(s_axi_awready),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_i),
        .Q(bus2ip_rdreq_d1),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d1),
        .Q(bus2ip_rdreq_d2),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d2),
        .Q(bus2ip_rdreq_d3),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d4_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d3),
        .Q(bus2ip_rdreq_d4),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_rdack_d1_i_1
       (.I0(bus2ip_rdreq_d3),
        .I1(bus2ip_rdreq_d4),
        .O(ip2bus_rdack));
  FDRE ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack),
        .Q(ip2bus_rdack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_d1_i_1
       (.I0(wrReq_d2),
        .I1(wrReq_d3),
        .O(ip2bus_wrack));
  FDRE ip2bus_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack),
        .Q(ip2bus_wrack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    rd_d_i_1
       (.I0(bus2ip_rdreq_d1),
        .I1(bus2ip_rdreq_d2),
        .O(Rd));
  FDRE wrReq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_i),
        .Q(wrReq_d1),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d1),
        .Q(wrReq_d2),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d2),
        .Q(wrReq_d3),
        .R(bus2ip_reset_int_core));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx16550
   (rx_fifo_data_in,
    character_received,
    have_bi_in_fifo_n,
    rst_reg,
    \lsr_reg[1] ,
    \Lcr_reg[0] ,
    Rx_error_in_fifo0,
    Data_ready_reg_0,
    SR,
    rx_fifo_wr_en_i,
    D,
    \Rbr_reg[7]_0 ,
    s_axi_aclk,
    sin_d1_reg_0,
    rx_sin,
    bus2ip_reset_int_core,
    \lsr_reg[0] ,
    Q,
    \lsr_reg[0]_0 ,
    readStrobe,
    \lsr_reg[1]_0 ,
    lsr_reg0,
    \lsr_reg[1]_1 ,
    \lsr_reg[1]_2 ,
    parity_error_d_reg_0,
    rclk_d3,
    scndry_out,
    resynch_clkdiv_frame_d_reg_0,
    mcr4_d,
    \lsr_reg[0]_1 ,
    rx_fifo_full,
    SS,
    rx_fifo_rd_en_d,
    \Dout_reg[2] ,
    clockDiv,
    \Dout_reg[2]_0 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[2]_2 ,
    \Dout_reg[1] ,
    \Dout_reg[1]_0 ,
    \Dout_reg[1]_1 ,
    \Dout_reg[1]_2 ,
    \Dout_reg[1]_3 ,
    \Dout_reg[2]_3 ,
    out,
    \Dout_reg[1]_4 );
  output [10:0]rx_fifo_data_in;
  output character_received;
  output have_bi_in_fifo_n;
  output rst_reg;
  output \lsr_reg[1] ;
  output \Lcr_reg[0] ;
  output Rx_error_in_fifo0;
  output Data_ready_reg_0;
  output [0:0]SR;
  output rx_fifo_wr_en_i;
  output [1:0]D;
  output [5:0]\Rbr_reg[7]_0 ;
  input s_axi_aclk;
  input sin_d1_reg_0;
  input rx_sin;
  input bus2ip_reset_int_core;
  input \lsr_reg[0] ;
  input [0:0]Q;
  input \lsr_reg[0]_0 ;
  input readStrobe;
  input \lsr_reg[1]_0 ;
  input lsr_reg0;
  input [1:0]\lsr_reg[1]_1 ;
  input \lsr_reg[1]_2 ;
  input [5:0]parity_error_d_reg_0;
  input rclk_d3;
  input scndry_out;
  input [0:0]resynch_clkdiv_frame_d_reg_0;
  input mcr4_d;
  input \lsr_reg[0]_1 ;
  input rx_fifo_full;
  input [0:0]SS;
  input rx_fifo_rd_en_d;
  input \Dout_reg[2] ;
  input [1:0]clockDiv;
  input \Dout_reg[2]_0 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[2]_2 ;
  input \Dout_reg[1] ;
  input \Dout_reg[1]_0 ;
  input \Dout_reg[1]_1 ;
  input \Dout_reg[1]_2 ;
  input \Dout_reg[1]_3 ;
  input [1:0]\Dout_reg[2]_3 ;
  input [1:0]out;
  input \Dout_reg[1]_4 ;

  wire [1:0]D;
  wire Data_ready_reg_0;
  wire \Dout[1]_i_5_n_0 ;
  wire \Dout[2]_i_6_n_0 ;
  wire \Dout_reg[1] ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[1]_2 ;
  wire \Dout_reg[1]_3 ;
  wire \Dout_reg[1]_4 ;
  wire \Dout_reg[2] ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire \Dout_reg[2]_2 ;
  wire [1:0]\Dout_reg[2]_3 ;
  wire \FSM_sequential_receive_state[0]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_5_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_5_n_0 ;
  wire \Lcr_reg[0] ;
  wire [0:0]Q;
  wire [2:1]Rbr;
  wire [5:0]\Rbr_reg[7]_0 ;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire [0:0]SS;
  wire break_interrupt_error_d_i_10_n_0;
  wire break_interrupt_error_d_i_11_n_0;
  wire break_interrupt_error_d_i_1_n_0;
  wire break_interrupt_error_d_i_2_n_0;
  wire break_interrupt_error_d_i_3_n_0;
  wire break_interrupt_error_d_i_4_n_0;
  wire break_interrupt_error_d_i_5_n_0;
  wire break_interrupt_error_d_i_6_n_0;
  wire break_interrupt_error_d_i_7_n_0;
  wire break_interrupt_error_d_i_8_n_0;
  wire break_interrupt_error_d_i_9_n_0;
  wire break_interrupt_error_d_reg_n_0;
  wire break_interrupt_flag;
  wire break_interrupt_flag_i_2_n_0;
  wire break_interrupt_i0;
  wire bus2ip_reset_int_core;
  wire character_received;
  wire character_received_com;
  wire character_received_d;
  wire character_received_flag;
  wire character_received_flag0;
  wire character_received_rclk;
  wire clk1x;
  wire clk1x0;
  wire clk1x_d;
  wire clk1x_i_3_n_0;
  wire clk1x_i_4_n_0;
  wire clk1x_i_5_n_0;
  wire clk2x;
  wire clk2x0;
  wire clk_div_en_i_1_n_0;
  wire clk_div_en_i_2_n_0;
  wire clk_div_en_i_3_n_0;
  wire clk_div_en_i_4_n_0;
  wire clk_div_en_reg_n_0;
  wire \clkdiv[0]_i_1__0_n_0 ;
  wire \clkdiv[1]_i_1__0_n_0 ;
  wire \clkdiv[2]_i_1__0_n_0 ;
  wire \clkdiv[2]_i_2_n_0 ;
  wire \clkdiv[3]_i_1__0_n_0 ;
  wire \clkdiv[3]_i_2__0_n_0 ;
  wire \clkdiv[3]_i_3_n_0 ;
  wire \clkdiv[3]_i_4_n_0 ;
  wire \clkdiv[3]_i_5_n_0 ;
  wire \clkdiv[3]_i_6_n_0 ;
  wire \clkdiv[3]_i_7_n_0 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire [1:0]clockDiv;
  wire clock_1x_early;
  wire clock_1x_early0;
  wire framing_error_d;
  wire framing_error_d_i_1_n_0;
  wire framing_error_d_i_2_n_0;
  wire framing_error_flag;
  wire framing_error_flag0;
  wire framing_error_flag_i_1_n_0;
  wire framing_error_i0;
  wire got_start_bit_com;
  wire got_start_bit_d;
  wire have_bi_in_fifo_n;
  wire have_bi_in_fifo_n_i_i_1_n_0;
  wire have_bi_in_fifo_n_i_i_2_n_0;
  wire load_rbr_com;
  wire load_rbr_d;
  wire load_rbr_d_i_1_n_0;
  wire lsr1_set;
  wire \lsr[0]_i_2_n_0 ;
  wire lsr_reg0;
  wire \lsr_reg[0] ;
  wire \lsr_reg[0]_0 ;
  wire \lsr_reg[0]_1 ;
  wire \lsr_reg[1] ;
  wire \lsr_reg[1]_0 ;
  wire [1:0]\lsr_reg[1]_1 ;
  wire \lsr_reg[1]_2 ;
  wire mcr4_d;
  wire [3:0]next_state;
  wire [1:0]out;
  wire parity_error_d;
  wire parity_error_d0;
  wire parity_error_d_i_10_n_0;
  wire parity_error_d_i_2_n_0;
  wire parity_error_d_i_3_n_0;
  wire parity_error_d_i_4_n_0;
  wire parity_error_d_i_5_n_0;
  wire parity_error_d_i_6_n_0;
  wire parity_error_d_i_7_n_0;
  wire parity_error_d_i_8_n_0;
  wire parity_error_d_i_9_n_0;
  wire [5:0]parity_error_d_reg_0;
  wire parity_error_i0;
  wire parity_error_latch;
  wire parity_error_latch_i_1_n_0;
  wire rbr_d0;
  wire \rbr_d[0]_i_1_n_0 ;
  wire \rbr_d[1]_i_1_n_0 ;
  wire \rbr_d[2]_i_1_n_0 ;
  wire \rbr_d[3]_i_1_n_0 ;
  wire \rbr_d[4]_i_1_n_0 ;
  wire \rbr_d[5]_i_1_n_0 ;
  wire \rbr_d[6]_i_1_n_0 ;
  wire \rbr_d[7]_i_2_n_0 ;
  wire rclk_d3;
  wire readStrobe;
  wire [3:0]receive_state;
  wire resynch_clkdiv;
  wire resynch_clkdiv_d;
  wire resynch_clkdiv_d_i_2_n_0;
  wire resynch_clkdiv_frame_d;
  wire resynch_clkdiv_frame_d_i_1_n_0;
  wire resynch_clkdiv_frame_d_i_2_n_0;
  wire [0:0]resynch_clkdiv_frame_d_reg_0;
  wire resynch_clkdiv_startbit;
  wire resynch_clkdiv_startbit_d;
  wire resynch_clkdiv_startbit_d_i_2_n_0;
  wire [7:0]rsr;
  wire rst_reg;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_wr_en_i;
  wire rx_parity_com;
  wire rx_rst;
  wire rx_sin;
  wire s_axi_aclk;
  wire scndry_out;
  wire sin_d1;
  wire sin_d10;
  wire sin_d1_reg_0;
  wire sin_d2;
  wire sin_d3;
  wire sin_d4;
  wire sin_d5;
  wire sin_d6;
  wire sin_d7;
  wire sin_d8;
  wire sin_d9;

  FDRE Data_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag),
        .Q(character_received),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \Dout[1]_i_1 
       (.I0(\Dout_reg[1] ),
        .I1(clockDiv[0]),
        .I2(\Dout_reg[1]_0 ),
        .I3(\Dout_reg[1]_1 ),
        .I4(\Dout_reg[1]_2 ),
        .I5(\Dout[1]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[1]_i_5 
       (.I0(\Dout_reg[1]_3 ),
        .I1(\Dout_reg[2]_3 [0]),
        .I2(Rbr[1]),
        .I3(\lsr_reg[0]_0 ),
        .I4(out[0]),
        .I5(\Dout_reg[1]_4 ),
        .O(\Dout[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \Dout[2]_i_1 
       (.I0(\Dout_reg[2] ),
        .I1(clockDiv[1]),
        .I2(\Dout_reg[2]_0 ),
        .I3(\Dout_reg[2]_1 ),
        .I4(\Dout_reg[2]_2 ),
        .I5(\Dout[2]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[2]_i_6 
       (.I0(\Dout_reg[1]_3 ),
        .I1(\Dout_reg[2]_3 [1]),
        .I2(Rbr[2]),
        .I3(\lsr_reg[0]_0 ),
        .I4(out[1]),
        .I5(\Dout_reg[1]_4 ),
        .O(\Dout[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BB8B88888B8B)) 
    \FSM_sequential_receive_state[0]_i_1 
       (.I0(\FSM_sequential_receive_state[0]_i_2_n_0 ),
        .I1(receive_state[3]),
        .I2(receive_state[0]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .I5(sin_d2),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000B002F)) 
    \FSM_sequential_receive_state[0]_i_2 
       (.I0(parity_error_d_reg_0[1]),
        .I1(parity_error_d_reg_0[0]),
        .I2(receive_state[0]),
        .I3(\FSM_sequential_receive_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_receive_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_receive_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_receive_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_receive_state[0]_i_3 
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .O(\FSM_sequential_receive_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_sequential_receive_state[0]_i_4 
       (.I0(sin_d2),
        .I1(parity_error_d_reg_0[2]),
        .I2(parity_error_d_reg_0[3]),
        .O(\FSM_sequential_receive_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8ACF8ACF00000FF0)) 
    \FSM_sequential_receive_state[0]_i_5 
       (.I0(parity_error_d_reg_0[3]),
        .I1(\Lcr_reg[0] ),
        .I2(receive_state[0]),
        .I3(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(\FSM_sequential_receive_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCDCCCDCC000F00F0)) 
    \FSM_sequential_receive_state[1]_i_1 
       (.I0(\FSM_sequential_receive_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_receive_state[1]_i_3_n_0 ),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(receive_state[0]),
        .I5(receive_state[3]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'hFF00FE00FFFEFF00)) 
    \FSM_sequential_receive_state[1]_i_2 
       (.I0(parity_error_d_reg_0[3]),
        .I1(sin_d2),
        .I2(parity_error_d_reg_0[2]),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[0]),
        .I5(parity_error_d_reg_0[1]),
        .O(\FSM_sequential_receive_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0100A1A0)) 
    \FSM_sequential_receive_state[1]_i_3 
       (.I0(receive_state[0]),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(parity_error_d_reg_0[2]),
        .I4(\Lcr_reg[0] ),
        .I5(\FSM_sequential_receive_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_receive_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0101010100000300)) 
    \FSM_sequential_receive_state[1]_i_4 
       (.I0(parity_error_d_reg_0[3]),
        .I1(sin_d2),
        .I2(parity_error_d_reg_0[2]),
        .I3(receive_state[0]),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(\FSM_sequential_receive_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0D9A0D9A0D1A0D9A)) 
    \FSM_sequential_receive_state[2]_i_1 
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .I4(parity_error_d_reg_0[1]),
        .I5(parity_error_d_reg_0[0]),
        .O(next_state[2]));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \FSM_sequential_receive_state[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(mcr4_d),
        .I2(resynch_clkdiv_frame_d_reg_0),
        .I3(have_bi_in_fifo_n),
        .O(parity_error_d0));
  LUT6 #(
    .INIT(64'h444447C444444744)) 
    \FSM_sequential_receive_state[3]_i_2 
       (.I0(\FSM_sequential_receive_state[3]_i_3_n_0 ),
        .I1(receive_state[3]),
        .I2(receive_state[0]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .I5(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h0535053707353535)) 
    \FSM_sequential_receive_state[3]_i_3 
       (.I0(receive_state[1]),
        .I1(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I2(receive_state[2]),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[1]),
        .I5(parity_error_d_reg_0[0]),
        .O(\FSM_sequential_receive_state[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_receive_state[3]_i_4 
       (.I0(parity_error_d_reg_0[2]),
        .I1(sin_d2),
        .O(\FSM_sequential_receive_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_receive_state[3]_i_5 
       (.I0(parity_error_d_reg_0[3]),
        .I1(sin_d2),
        .I2(parity_error_d_reg_0[2]),
        .O(\FSM_sequential_receive_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[0]),
        .Q(receive_state[0]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[1]),
        .Q(receive_state[1]),
        .R(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[2]),
        .Q(receive_state[2]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[3]),
        .Q(receive_state[3]),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_transmit_state[3]_i_4 
       (.I0(parity_error_d_reg_0[0]),
        .I1(parity_error_d_reg_0[1]),
        .O(\Lcr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \INFERRED_GEN.cnt_i[3]_i_2__0 
       (.I0(character_received),
        .I1(have_bi_in_fifo_n),
        .I2(rx_fifo_full),
        .I3(\lsr_reg[0] ),
        .O(Data_ready_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \INFERRED_GEN.data_reg[15][10]_srl16_i_1 
       (.I0(\lsr_reg[0] ),
        .I1(rx_fifo_full),
        .I2(have_bi_in_fifo_n),
        .I3(character_received),
        .O(rx_fifo_wr_en_i));
  FDRE \Rbr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[0]),
        .Q(\Rbr_reg[7]_0 [0]),
        .R(rx_rst));
  FDRE \Rbr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[1]),
        .Q(Rbr[1]),
        .R(rx_rst));
  FDRE \Rbr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[2]),
        .Q(Rbr[2]),
        .R(rx_rst));
  FDRE \Rbr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[3]),
        .Q(\Rbr_reg[7]_0 [1]),
        .R(rx_rst));
  FDRE \Rbr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[4]),
        .Q(\Rbr_reg[7]_0 [2]),
        .R(rx_rst));
  FDRE \Rbr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[5]),
        .Q(\Rbr_reg[7]_0 [3]),
        .R(rx_rst));
  FDRE \Rbr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[6]),
        .Q(\Rbr_reg[7]_0 [4]),
        .R(rx_rst));
  FDRE \Rbr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[7]),
        .Q(\Rbr_reg[7]_0 [5]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'h00FE)) 
    Rx_error_in_fifo_i_1
       (.I0(rx_fifo_data_in[9]),
        .I1(rx_fifo_data_in[10]),
        .I2(rx_fifo_data_in[8]),
        .I3(Data_ready_reg_0),
        .O(Rx_error_in_fifo0));
  LUT6 #(
    .INIT(64'h000000008ABA8AAA)) 
    break_interrupt_error_d_i_1
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(break_interrupt_error_d_i_2_n_0),
        .I2(clk1x),
        .I3(break_interrupt_error_d_i_3_n_0),
        .I4(sin_d2),
        .I5(parity_error_d0),
        .O(break_interrupt_error_d_i_1_n_0));
  LUT6 #(
    .INIT(64'hC100CD00C100C100)) 
    break_interrupt_error_d_i_10
       (.I0(parity_error_d_reg_0[2]),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(receive_state[3]),
        .I4(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I5(parity_error_d_i_8_n_0),
        .O(break_interrupt_error_d_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    break_interrupt_error_d_i_11
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .O(break_interrupt_error_d_i_11_n_0));
  LUT6 #(
    .INIT(64'h4400040044440444)) 
    break_interrupt_error_d_i_2
       (.I0(break_interrupt_error_d_i_4_n_0),
        .I1(receive_state[3]),
        .I2(break_interrupt_error_d_i_5_n_0),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .I5(break_interrupt_error_d_i_6_n_0),
        .O(break_interrupt_error_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h0D0D0D0D00000D00)) 
    break_interrupt_error_d_i_3
       (.I0(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I1(break_interrupt_error_d_i_7_n_0),
        .I2(break_interrupt_error_d_i_8_n_0),
        .I3(receive_state[0]),
        .I4(break_interrupt_error_d_i_9_n_0),
        .I5(break_interrupt_error_d_i_10_n_0),
        .O(break_interrupt_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000000000FFDF)) 
    break_interrupt_error_d_i_4
       (.I0(parity_error_d_i_8_n_0),
        .I1(parity_error_d_reg_0[3]),
        .I2(parity_error_d_reg_0[2]),
        .I3(sin_d2),
        .I4(receive_state[2]),
        .I5(receive_state[0]),
        .O(break_interrupt_error_d_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    break_interrupt_error_d_i_5
       (.I0(receive_state[0]),
        .I1(parity_error_d_reg_0[3]),
        .I2(parity_error_d_reg_0[2]),
        .I3(sin_d2),
        .I4(parity_error_d_reg_0[1]),
        .I5(parity_error_d_reg_0[0]),
        .O(break_interrupt_error_d_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF8BCBFBFB)) 
    break_interrupt_error_d_i_6
       (.I0(parity_error_d_reg_0[3]),
        .I1(receive_state[2]),
        .I2(receive_state[0]),
        .I3(\Lcr_reg[0] ),
        .I4(parity_error_d_reg_0[2]),
        .I5(sin_d2),
        .O(break_interrupt_error_d_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBFDFFFFFFFFFFFF)) 
    break_interrupt_error_d_i_7
       (.I0(receive_state[2]),
        .I1(parity_error_d_reg_0[1]),
        .I2(parity_error_d_reg_0[0]),
        .I3(receive_state[1]),
        .I4(receive_state[3]),
        .I5(receive_state[0]),
        .O(break_interrupt_error_d_i_7_n_0));
  LUT6 #(
    .INIT(64'h00FCCFAA00000000)) 
    break_interrupt_error_d_i_8
       (.I0(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[1]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .I5(break_interrupt_error_d_i_11_n_0),
        .O(break_interrupt_error_d_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    break_interrupt_error_d_i_9
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .I2(receive_state[3]),
        .O(break_interrupt_error_d_i_9_n_0));
  FDRE break_interrupt_error_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_error_d_i_1_n_0),
        .Q(break_interrupt_error_d_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFBE)) 
    break_interrupt_flag_i_1
       (.I0(character_received_rclk),
        .I1(resynch_clkdiv_frame_d_reg_0),
        .I2(mcr4_d),
        .I3(bus2ip_reset_int_core),
        .O(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    break_interrupt_flag_i_2
       (.I0(scndry_out),
        .I1(rclk_d3),
        .I2(break_interrupt_error_d_reg_n_0),
        .I3(break_interrupt_flag),
        .O(break_interrupt_flag_i_2_n_0));
  FDRE break_interrupt_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_flag_i_2_n_0),
        .Q(break_interrupt_flag),
        .R(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    break_interrupt_i_i_1
       (.I0(character_received_flag),
        .I1(break_interrupt_flag),
        .O(break_interrupt_i0));
  FDRE break_interrupt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_i0),
        .Q(rx_fifo_data_in[8]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \character_counter[9]_i_1 
       (.I0(Data_ready_reg_0),
        .I1(SS),
        .I2(Q),
        .I3(rx_fifo_rd_en_d),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0F000010)) 
    character_received_d_i_1
       (.I0(parity_error_d_reg_0[2]),
        .I1(receive_state[2]),
        .I2(receive_state[3]),
        .I3(receive_state[0]),
        .I4(receive_state[1]),
        .O(character_received_com));
  FDRE character_received_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(character_received_com),
        .Q(character_received_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h20)) 
    character_received_flag_i_1
       (.I0(character_received_d),
        .I1(rclk_d3),
        .I2(scndry_out),
        .O(character_received_flag0));
  FDRE character_received_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag0),
        .Q(character_received_flag),
        .R(framing_error_flag0));
  FDRE character_received_rclk_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(character_received_d),
        .Q(character_received_rclk),
        .R(rx_rst));
  FDRE clk1x_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x),
        .Q(clk1x_d),
        .R(rx_rst));
  LUT3 #(
    .INIT(8'hF6)) 
    clk1x_i_1
       (.I0(resynch_clkdiv_frame_d_reg_0),
        .I1(mcr4_d),
        .I2(bus2ip_reset_int_core),
        .O(rx_rst));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    clk1x_i_2
       (.I0(clk1x_i_3_n_0),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(\clkdiv_reg_n_0_[2] ),
        .I4(\clkdiv_reg_n_0_[3] ),
        .I5(sin_d1_reg_0),
        .O(clk1x0));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    clk1x_i_3
       (.I0(resynch_clkdiv_startbit),
        .I1(sin_d1_reg_0),
        .I2(clk1x_i_4_n_0),
        .I3(sin_d5),
        .I4(sin_d6),
        .I5(clk1x_i_5_n_0),
        .O(clk1x_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    clk1x_i_4
       (.I0(framing_error_d),
        .I1(got_start_bit_d),
        .O(clk1x_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000500000010000)) 
    clk1x_i_5
       (.I0(clock_1x_early),
        .I1(parity_error_d_reg_0[2]),
        .I2(receive_state[1]),
        .I3(receive_state[0]),
        .I4(receive_state[3]),
        .I5(receive_state[2]),
        .O(clk1x_i_5_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x0),
        .Q(clk1x),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    clk2x_i_1
       (.I0(sin_d1_reg_0),
        .I1(\clkdiv_reg_n_0_[2] ),
        .I2(\clkdiv_reg_n_0_[1] ),
        .I3(\clkdiv_reg_n_0_[0] ),
        .I4(\clkdiv_reg_n_0_[3] ),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h8888808800000000)) 
    clk_div_en_i_1
       (.I0(\clkdiv[3]_i_4_n_0 ),
        .I1(have_bi_in_fifo_n),
        .I2(clk_div_en_i_2_n_0),
        .I3(clk1x_d),
        .I4(clk_div_en_i_3_n_0),
        .I5(clk_div_en_i_4_n_0),
        .O(clk_div_en_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    clk_div_en_i_2
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .O(clk_div_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    clk_div_en_i_3
       (.I0(receive_state[3]),
        .I1(receive_state[0]),
        .O(clk_div_en_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    clk_div_en_i_4
       (.I0(sin_d1),
        .I1(sin_d2),
        .I2(got_start_bit_d),
        .I3(sin_d1_reg_0),
        .I4(clk_div_en_reg_n_0),
        .O(clk_div_en_i_4_n_0));
  FDRE clk_div_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_div_en_i_1_n_0),
        .Q(clk_div_en_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \clkdiv[0]_i_1__0 
       (.I0(\clkdiv[3]_i_5_n_0 ),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(resynch_clkdiv_frame_d),
        .I3(resynch_clkdiv_startbit_d),
        .I4(resynch_clkdiv_d),
        .O(\clkdiv[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABE)) 
    \clkdiv[1]_i_1__0 
       (.I0(\clkdiv[3]_i_5_n_0 ),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv_reg_n_0_[1] ),
        .I3(resynch_clkdiv_frame_d),
        .I4(resynch_clkdiv_startbit_d),
        .I5(resynch_clkdiv_d),
        .O(\clkdiv[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000078FFFFFFFF)) 
    \clkdiv[2]_i_1__0 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[2] ),
        .I3(resynch_clkdiv_frame_d),
        .I4(resynch_clkdiv_startbit_d),
        .I5(\clkdiv[2]_i_2_n_0 ),
        .O(\clkdiv[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5455555555555555)) 
    \clkdiv[2]_i_2 
       (.I0(resynch_clkdiv_d),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[1]),
        .I3(parity_error_d_reg_0[2]),
        .I4(clk2x),
        .I5(\clkdiv[3]_i_7_n_0 ),
        .O(\clkdiv[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \clkdiv[3]_i_1__0 
       (.I0(clk1x_i_3_n_0),
        .I1(clk_div_en_reg_n_0),
        .I2(\clkdiv[3]_i_4_n_0 ),
        .O(\clkdiv[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clkdiv[3]_i_2__0 
       (.I0(resynch_clkdiv_frame_d),
        .I1(resynch_clkdiv_startbit_d),
        .I2(resynch_clkdiv_d),
        .I3(sin_d1_reg_0),
        .I4(\clkdiv[3]_i_5_n_0 ),
        .O(\clkdiv[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1110111111111110)) 
    \clkdiv[3]_i_3 
       (.I0(\clkdiv[3]_i_5_n_0 ),
        .I1(resynch_clkdiv_d),
        .I2(resynch_clkdiv_startbit_d),
        .I3(resynch_clkdiv_frame_d),
        .I4(\clkdiv_reg_n_0_[3] ),
        .I5(\clkdiv[3]_i_6_n_0 ),
        .O(\clkdiv[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \clkdiv[3]_i_4 
       (.I0(bus2ip_reset_int_core),
        .I1(mcr4_d),
        .I2(resynch_clkdiv_frame_d_reg_0),
        .O(\clkdiv[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \clkdiv[3]_i_5 
       (.I0(\clkdiv[3]_i_7_n_0 ),
        .I1(clk2x),
        .I2(parity_error_d_reg_0[2]),
        .I3(parity_error_d_reg_0[1]),
        .I4(parity_error_d_reg_0[0]),
        .O(\clkdiv[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clkdiv[3]_i_6 
       (.I0(\clkdiv_reg_n_0_[2] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .O(\clkdiv[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \clkdiv[3]_i_7 
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .O(\clkdiv[3]_i_7_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[0]_i_1__0_n_0 ),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[1]_i_1__0_n_0 ),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[2]_i_1__0_n_0 ),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[3]_i_3_n_0 ),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    clock_1x_early_i_1
       (.I0(sin_d1_reg_0),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv_reg_n_0_[1] ),
        .I3(\clkdiv_reg_n_0_[3] ),
        .I4(\clkdiv_reg_n_0_[2] ),
        .O(clock_1x_early0));
  FDRE clock_1x_early_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clock_1x_early0),
        .Q(clock_1x_early),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h4000555540004000)) 
    framing_error_d_i_1
       (.I0(sin_d2),
        .I1(framing_error_d_i_2_n_0),
        .I2(receive_state[3]),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[3]),
        .I5(load_rbr_com),
        .O(framing_error_d_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    framing_error_d_i_2
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .O(framing_error_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h1000102010805000)) 
    framing_error_d_i_3
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .I4(parity_error_d_reg_0[1]),
        .I5(parity_error_d_reg_0[0]),
        .O(load_rbr_com));
  FDRE framing_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(framing_error_d_i_1_n_0),
        .Q(framing_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    framing_error_flag_i_1
       (.I0(scndry_out),
        .I1(rclk_d3),
        .I2(framing_error_d),
        .I3(framing_error_flag),
        .O(framing_error_flag_i_1_n_0));
  FDRE framing_error_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_flag_i_1_n_0),
        .Q(framing_error_flag),
        .R(framing_error_flag0));
  LUT2 #(
    .INIT(4'h8)) 
    framing_error_i_i_1
       (.I0(character_received_flag),
        .I1(framing_error_flag),
        .O(framing_error_i0));
  FDRE framing_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_i0),
        .Q(rx_fifo_data_in[9]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h717F716F7D7F7D7F)) 
    got_start_bit_d_i_1
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .I2(receive_state[3]),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[2]),
        .I5(sin_d2),
        .O(got_start_bit_com));
  FDRE got_start_bit_d_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(got_start_bit_com),
        .Q(got_start_bit_d),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF6FF)) 
    have_bi_in_fifo_n_i_i_1
       (.I0(resynch_clkdiv_frame_d_reg_0),
        .I1(mcr4_d),
        .I2(bus2ip_reset_int_core),
        .I3(have_bi_in_fifo_n_i_i_2_n_0),
        .O(have_bi_in_fifo_n_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000454055555555)) 
    have_bi_in_fifo_n_i_i_2
       (.I0(sin_d2),
        .I1(rx_fifo_data_in[8]),
        .I2(\lsr_reg[0] ),
        .I3(character_received_flag),
        .I4(break_interrupt_flag),
        .I5(have_bi_in_fifo_n),
        .O(have_bi_in_fifo_n_i_i_2_n_0));
  FDRE have_bi_in_fifo_n_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(have_bi_in_fifo_n_i_i_1_n_0),
        .Q(have_bi_in_fifo_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008A80)) 
    load_rbr_d_i_1
       (.I0(\clkdiv[3]_i_4_n_0 ),
        .I1(load_rbr_com),
        .I2(clk2x),
        .I3(load_rbr_d),
        .I4(resynch_clkdiv_d),
        .O(load_rbr_d_i_1_n_0));
  FDRE load_rbr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(load_rbr_d_i_1_n_0),
        .Q(load_rbr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0444000004440444)) 
    \lsr[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\lsr[0]_i_2_n_0 ),
        .I2(\lsr_reg[0] ),
        .I3(Q),
        .I4(\lsr_reg[0]_0 ),
        .I5(readStrobe),
        .O(rst_reg));
  LUT6 #(
    .INIT(64'hBBFBFFFB88F8FFF8)) 
    \lsr[0]_i_2 
       (.I0(\lsr_reg[1]_1 [0]),
        .I1(lsr_reg0),
        .I2(character_received),
        .I3(\lsr_reg[0] ),
        .I4(Q),
        .I5(\lsr_reg[0]_1 ),
        .O(\lsr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FECE)) 
    \lsr[1]_i_1 
       (.I0(\lsr_reg[1]_0 ),
        .I1(lsr1_set),
        .I2(lsr_reg0),
        .I3(\lsr_reg[1]_1 [1]),
        .I4(\lsr_reg[1]_2 ),
        .I5(bus2ip_reset_int_core),
        .O(\lsr_reg[1] ));
  LUT4 #(
    .INIT(16'hC808)) 
    \lsr[1]_i_2 
       (.I0(\lsr_reg[0]_1 ),
        .I1(character_received),
        .I2(\lsr_reg[0] ),
        .I3(rx_fifo_full),
        .O(lsr1_set));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    parity_error_d_i_1
       (.I0(parity_error_d_i_2_n_0),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(parity_error_d_i_3_n_0),
        .I4(parity_error_d_i_4_n_0),
        .I5(parity_error_d_i_5_n_0),
        .O(rx_parity_com));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    parity_error_d_i_10
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .O(parity_error_d_i_10_n_0));
  LUT6 #(
    .INIT(64'hF7F7FD00F700FDFD)) 
    parity_error_d_i_2
       (.I0(parity_error_d_reg_0[5]),
        .I1(parity_error_d_reg_0[4]),
        .I2(parity_error_d_i_6_n_0),
        .I3(parity_error_d_i_7_n_0),
        .I4(sin_d2),
        .I5(parity_error_d),
        .O(parity_error_d_i_2_n_0));
  LUT6 #(
    .INIT(64'h0060F06F0066F066)) 
    parity_error_d_i_3
       (.I0(sin_d2),
        .I1(parity_error_d),
        .I2(framing_error_d_i_2_n_0),
        .I3(receive_state[3]),
        .I4(parity_error_d_reg_0[4]),
        .I5(receive_state[0]),
        .O(parity_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000C6663666)) 
    parity_error_d_i_4
       (.I0(parity_error_d),
        .I1(sin_d2),
        .I2(parity_error_d_i_8_n_0),
        .I3(parity_error_d_reg_0[5]),
        .I4(parity_error_d_reg_0[4]),
        .I5(parity_error_d_i_9_n_0),
        .O(parity_error_d_i_4_n_0));
  LUT5 #(
    .INIT(32'hA0280A28)) 
    parity_error_d_i_5
       (.I0(parity_error_d_i_10_n_0),
        .I1(parity_error_d),
        .I2(sin_d2),
        .I3(parity_error_d_reg_0[5]),
        .I4(parity_error_d_reg_0[4]),
        .O(parity_error_d_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFEDF)) 
    parity_error_d_i_6
       (.I0(receive_state[1]),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[1]),
        .I3(receive_state[2]),
        .O(parity_error_d_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF1020FF)) 
    parity_error_d_i_7
       (.I0(parity_error_d_reg_0[1]),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[5]),
        .I3(receive_state[1]),
        .I4(receive_state[2]),
        .O(parity_error_d_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    parity_error_d_i_8
       (.I0(parity_error_d_reg_0[0]),
        .I1(parity_error_d_reg_0[1]),
        .O(parity_error_d_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    parity_error_d_i_9
       (.I0(receive_state[2]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(receive_state[1]),
        .O(parity_error_d_i_9_n_0));
  FDRE parity_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(rx_parity_com),
        .Q(parity_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    parity_error_i_i_1
       (.I0(parity_error_latch),
        .I1(character_received_flag),
        .I2(parity_error_d_reg_0[3]),
        .O(parity_error_i0));
  FDRE parity_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_i0),
        .Q(rx_fifo_data_in[10]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    parity_error_latch_i_1
       (.I0(parity_error_d),
        .I1(load_rbr_d),
        .I2(clk2x),
        .I3(parity_error_latch),
        .O(parity_error_latch_i_1_n_0));
  FDRE parity_error_latch_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_latch_i_1_n_0),
        .Q(parity_error_latch),
        .R(framing_error_flag0));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \rbr_d[0]_i_1 
       (.I0(rsr[1]),
        .I1(rsr[3]),
        .I2(rsr[0]),
        .I3(parity_error_d_reg_0[1]),
        .I4(parity_error_d_reg_0[0]),
        .I5(rsr[2]),
        .O(\rbr_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[1]_i_1 
       (.I0(rsr[1]),
        .I1(rsr[3]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[2]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[4]),
        .O(\rbr_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[2]_i_1 
       (.I0(rsr[2]),
        .I1(rsr[4]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[3]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[5]),
        .O(\rbr_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[3]_i_1 
       (.I0(rsr[3]),
        .I1(rsr[5]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[4]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[6]),
        .O(\rbr_d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[4]_i_1 
       (.I0(rsr[4]),
        .I1(rsr[6]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[5]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[7]),
        .O(\rbr_d[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    \rbr_d[5]_i_1 
       (.I0(rsr[6]),
        .I1(parity_error_d_reg_0[0]),
        .I2(rsr[5]),
        .I3(parity_error_d_reg_0[1]),
        .I4(rsr[7]),
        .O(\rbr_d[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE020)) 
    \rbr_d[6]_i_1 
       (.I0(rsr[7]),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[1]),
        .I3(rsr[6]),
        .O(\rbr_d[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rbr_d[7]_i_1 
       (.I0(clk1x),
        .I1(load_rbr_d),
        .O(rbr_d0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rbr_d[7]_i_2 
       (.I0(rsr[7]),
        .I1(parity_error_d_reg_0[1]),
        .I2(parity_error_d_reg_0[0]),
        .O(\rbr_d[7]_i_2_n_0 ));
  FDRE \rbr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[0]_i_1_n_0 ),
        .Q(rx_fifo_data_in[0]),
        .R(rx_rst));
  FDRE \rbr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[1]_i_1_n_0 ),
        .Q(rx_fifo_data_in[1]),
        .R(rx_rst));
  FDRE \rbr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[2]_i_1_n_0 ),
        .Q(rx_fifo_data_in[2]),
        .R(rx_rst));
  FDRE \rbr_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[3]_i_1_n_0 ),
        .Q(rx_fifo_data_in[3]),
        .R(rx_rst));
  FDRE \rbr_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[4]_i_1_n_0 ),
        .Q(rx_fifo_data_in[4]),
        .R(rx_rst));
  FDRE \rbr_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[5]_i_1_n_0 ),
        .Q(rx_fifo_data_in[5]),
        .R(rx_rst));
  FDRE \rbr_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[6]_i_1_n_0 ),
        .Q(rx_fifo_data_in[6]),
        .R(rx_rst));
  FDRE \rbr_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[7]_i_2_n_0 ),
        .Q(rx_fifo_data_in[7]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h0000000000800180)) 
    resynch_clkdiv_d_i_1
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .I2(receive_state[0]),
        .I3(receive_state[3]),
        .I4(parity_error_d_reg_0[2]),
        .I5(resynch_clkdiv_d_i_2_n_0),
        .O(resynch_clkdiv));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    resynch_clkdiv_d_i_2
       (.I0(sin_d1_reg_0),
        .I1(clock_1x_early),
        .I2(got_start_bit_d),
        .I3(framing_error_d),
        .I4(sin_d5),
        .I5(sin_d6),
        .O(resynch_clkdiv_d_i_2_n_0));
  FDRE resynch_clkdiv_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv),
        .Q(resynch_clkdiv_d),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hF2FFFFF202000002)) 
    resynch_clkdiv_frame_d_i_1
       (.I0(resynch_clkdiv_startbit_d_i_2_n_0),
        .I1(resynch_clkdiv_frame_d_i_2_n_0),
        .I2(bus2ip_reset_int_core),
        .I3(mcr4_d),
        .I4(resynch_clkdiv_frame_d_reg_0),
        .I5(resynch_clkdiv_frame_d),
        .O(resynch_clkdiv_frame_d_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFBFFFBFFFFFFFFF)) 
    resynch_clkdiv_frame_d_i_2
       (.I0(receive_state[3]),
        .I1(receive_state[0]),
        .I2(receive_state[1]),
        .I3(parity_error_d_reg_0[2]),
        .I4(receive_state[2]),
        .I5(framing_error_d),
        .O(resynch_clkdiv_frame_d_i_2_n_0));
  FDRE resynch_clkdiv_frame_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_frame_d_i_1_n_0),
        .Q(resynch_clkdiv_frame_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    resynch_clkdiv_startbit_d_i_1
       (.I0(resynch_clkdiv_startbit_d_i_2_n_0),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(receive_state[0]),
        .I4(receive_state[3]),
        .O(resynch_clkdiv_startbit));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    resynch_clkdiv_startbit_d_i_2
       (.I0(rclk_d3),
        .I1(scndry_out),
        .I2(bus2ip_reset_int_core),
        .I3(got_start_bit_d),
        .I4(sin_d9),
        .I5(sin_d10),
        .O(resynch_clkdiv_startbit_d_i_2_n_0));
  FDRE resynch_clkdiv_startbit_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_startbit),
        .Q(resynch_clkdiv_startbit_d),
        .R(rx_rst));
  FDRE \rsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[1]),
        .Q(rsr[0]),
        .R(rx_rst));
  FDRE \rsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[2]),
        .Q(rsr[1]),
        .R(rx_rst));
  FDRE \rsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[3]),
        .Q(rsr[2]),
        .R(rx_rst));
  FDRE \rsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[4]),
        .Q(rsr[3]),
        .R(rx_rst));
  FDRE \rsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[5]),
        .Q(rsr[4]),
        .R(rx_rst));
  FDRE \rsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[6]),
        .Q(rsr[5]),
        .R(rx_rst));
  FDRE \rsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[7]),
        .Q(rsr[6]),
        .R(rx_rst));
  FDRE \rsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(sin_d2),
        .Q(rsr[7]),
        .R(rx_rst));
  FDRE sin_d10_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d9),
        .Q(sin_d10),
        .R(rx_rst));
  FDRE sin_d1_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(rx_sin),
        .Q(sin_d1),
        .R(rx_rst));
  FDRE sin_d2_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d1),
        .Q(sin_d2),
        .R(rx_rst));
  FDRE sin_d3_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d2),
        .Q(sin_d3),
        .R(rx_rst));
  FDRE sin_d4_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d3),
        .Q(sin_d4),
        .R(rx_rst));
  FDRE sin_d5_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d4),
        .Q(sin_d5),
        .R(rx_rst));
  FDRE sin_d6_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d5),
        .Q(sin_d6),
        .R(rx_rst));
  FDRE sin_d7_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d6),
        .Q(sin_d7),
        .R(rx_rst));
  FDRE sin_d8_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d7),
        .Q(sin_d8),
        .R(rx_rst));
  FDRE sin_d9_reg
       (.C(s_axi_aclk),
        .CE(sin_d1_reg_0),
        .D(sin_d8),
        .Q(sin_d9),
        .R(rx_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_block
   (rx_fifo_full,
    Rx_error_in_fifo,
    Q,
    \character_counter_reg[9] ,
    thre_iir_set_reg,
    rx_error_in_fifo_cnt_dn0,
    out,
    D,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    \lsr_reg[0] ,
    \INFERRED_GEN.cnt_i_reg[4] ,
    thre_iir_set_reg_0,
    thre_iir_set_reg_1,
    \lsr_reg[2] ,
    bus2ip_reset_int_core,
    s_axi_aclk,
    SS,
    Rx_error_in_fifo0,
    rclk_d3,
    scndry_out,
    data3,
    rx_fifo_rd_en_d,
    \INFERRED_GEN.cnt_i_reg[1] ,
    character_received,
    have_bi_in_fifo_n,
    \INFERRED_GEN.cnt_i_reg[0] ,
    \Dout_reg[3] ,
    \iir_reg[3] ,
    thre_iir_set_reg_2,
    thre_iir_set_reg_3,
    thre_iir_set_reg_4,
    thre_iir_set,
    writing_thr,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    \Dout_reg[6] ,
    rd_d,
    chipSelect,
    \Dout_reg[0] ,
    clockDiv,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[0]_2 ,
    \Dout_reg[3]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[3]_2 ,
    \Dout_reg[3]_3 ,
    \Dout_reg[6]_0 ,
    \Dout_reg[6]_1 ,
    \Dout_reg[6]_2 ,
    \Dout_reg[7] ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[5]_0 ,
    \Dout_reg[4] ,
    \Dout_reg[0]_3 ,
    rx_fifo_data_in,
    rx_fifo_rd_en_d1,
    \lsr_reg[2]_0 ,
    p_0_in37_in,
    \iir_reg[2] ,
    p_1_in38_in,
    p_2_in39_in,
    rxrdyN_int_reg,
    rxrdyN_int_reg_0,
    lsr2_rst_reg,
    wr_d,
    lsr2_rst,
    \iir_reg[0] ,
    thre_iir_set_reg_5,
    thre_iir_set_reg_6,
    thre_iir_set_reg_7,
    thre_iir_set_reg_8,
    rx_fifo_wr_en_i,
    SR);
  output rx_fifo_full;
  output Rx_error_in_fifo;
  output [0:0]Q;
  output \character_counter_reg[9] ;
  output thre_iir_set_reg;
  output rx_error_in_fifo_cnt_dn0;
  output [1:0]out;
  output [5:0]D;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  output \lsr_reg[0] ;
  output \INFERRED_GEN.cnt_i_reg[4] ;
  output thre_iir_set_reg_0;
  output thre_iir_set_reg_1;
  output \lsr_reg[2] ;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input [0:0]SS;
  input Rx_error_in_fifo0;
  input rclk_d3;
  input scndry_out;
  input [1:0]data3;
  input rx_fifo_rd_en_d;
  input \INFERRED_GEN.cnt_i_reg[1] ;
  input character_received;
  input have_bi_in_fifo_n;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input [3:0]\Dout_reg[3] ;
  input \iir_reg[3] ;
  input thre_iir_set_reg_2;
  input thre_iir_set_reg_3;
  input thre_iir_set_reg_4;
  input thre_iir_set;
  input writing_thr;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input \Dout_reg[6] ;
  input rd_d;
  input chipSelect;
  input \Dout_reg[0] ;
  input [1:0]clockDiv;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[0]_2 ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[3]_2 ;
  input \Dout_reg[3]_3 ;
  input \Dout_reg[6]_0 ;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[6]_2 ;
  input [5:0]\Dout_reg[7] ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[5]_0 ;
  input \Dout_reg[4] ;
  input \Dout_reg[0]_3 ;
  input [10:0]rx_fifo_data_in;
  input rx_fifo_rd_en_d1;
  input [0:0]\lsr_reg[2]_0 ;
  input p_0_in37_in;
  input \iir_reg[2] ;
  input p_1_in38_in;
  input p_2_in39_in;
  input rxrdyN_int_reg;
  input rxrdyN_int_reg_0;
  input lsr2_rst_reg;
  input wr_d;
  input lsr2_rst;
  input \iir_reg[0] ;
  input thre_iir_set_reg_5;
  input thre_iir_set_reg_6;
  input thre_iir_set_reg_7;
  input thre_iir_set_reg_8;
  input rx_fifo_wr_en_i;
  input [0:0]SR;

  wire [5:0]D;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[0]_3 ;
  wire [3:0]\Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire \Dout_reg[3]_3 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[5]_0 ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire [5:0]\Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire Rx_error_in_fifo;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire [0:0]SS;
  wire bus2ip_reset_int_core;
  wire \character_counter_reg[9] ;
  wire character_received;
  wire chipSelect;
  wire [1:0]clockDiv;
  wire [1:0]data3;
  wire fifo_trigger_level_flag;
  wire have_bi_in_fifo_n;
  wire \iir_reg[0] ;
  wire \iir_reg[2] ;
  wire \iir_reg[3] ;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire \lsr_reg[0] ;
  wire \lsr_reg[2] ;
  wire [0:0]\lsr_reg[2]_0 ;
  wire [1:0]out;
  wire p_0_in37_in;
  wire p_1_in38_in;
  wire p_2_in39_in;
  wire rclk_d3;
  wire rd_d;
  wire rx_error_in_fifo_cnt_dn0;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_wr_en_i;
  wire rxrdyN_int_reg;
  wire rxrdyN_int_reg_0;
  wire s_axi_aclk;
  wire scndry_out;
  wire srl_fifo_rbu_f_i1_n_13;
  wire thre_iir_set;
  wire thre_iir_set_reg;
  wire thre_iir_set_reg_0;
  wire thre_iir_set_reg_1;
  wire thre_iir_set_reg_2;
  wire thre_iir_set_reg_3;
  wire thre_iir_set_reg_4;
  wire thre_iir_set_reg_5;
  wire thre_iir_set_reg_6;
  wire thre_iir_set_reg_7;
  wire thre_iir_set_reg_8;
  wire wr_d;
  wire writing_thr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_control rx_fifo_control_1
       (.Q(Q),
        .Rx_error_in_fifo(Rx_error_in_fifo),
        .Rx_error_in_fifo0(Rx_error_in_fifo0),
        .SR(SR),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .\character_counter_reg[9]_0 (\character_counter_reg[9] ),
        .chipSelect(chipSelect),
        .fifo_trigger_level_flag(fifo_trigger_level_flag),
        .\iir[3]_i_2_0 (\Dout_reg[6] ),
        .\iir_reg[0] (\iir_reg[0] ),
        .\iir_reg[1] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\iir_reg[2] (\Dout_reg[3] [2:0]),
        .\iir_reg[2]_0 (\iir_reg[2] ),
        .\iir_reg[3] (srl_fifo_rbu_f_i1_n_13),
        .\iir_reg[3]_0 (\iir_reg[3] ),
        .\lsr_reg[0] (\lsr_reg[0] ),
        .\lsr_reg[2] (\lsr_reg[2] ),
        .p_0_in37_in(p_0_in37_in),
        .p_1_in38_in(p_1_in38_in),
        .p_2_in39_in(p_2_in39_in),
        .rclk_d3(rclk_d3),
        .rd_d(rd_d),
        .rxrdyN_int_reg(rxrdyN_int_reg),
        .rxrdyN_int_reg_0(rxrdyN_int_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .thre_iir_set(thre_iir_set),
        .thre_iir_set_reg(thre_iir_set_reg),
        .thre_iir_set_reg_0(thre_iir_set_reg_0),
        .thre_iir_set_reg_1(thre_iir_set_reg_1),
        .thre_iir_set_reg_2(thre_iir_set_reg_2),
        .thre_iir_set_reg_3(thre_iir_set_reg_3),
        .thre_iir_set_reg_4(thre_iir_set_reg_4),
        .thre_iir_set_reg_5(thre_iir_set_reg_5),
        .thre_iir_set_reg_6(thre_iir_set_reg_6),
        .thre_iir_set_reg_7(thre_iir_set_reg_7),
        .thre_iir_set_reg_8(thre_iir_set_reg_8),
        .writing_thr(writing_thr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f__parameterized0 srl_fifo_rbu_f_i1
       (.D(D),
        .\Dout_reg[0] (\Dout_reg[0] ),
        .\Dout_reg[0]_0 (\Dout_reg[0]_0 ),
        .\Dout_reg[0]_1 (\Dout_reg[0]_1 ),
        .\Dout_reg[0]_2 (\Dout_reg[0]_2 ),
        .\Dout_reg[0]_3 (\Dout_reg[0]_3 ),
        .\Dout_reg[3] (\Dout_reg[3]_0 ),
        .\Dout_reg[3]_0 (\Dout_reg[3]_1 ),
        .\Dout_reg[3]_1 (\Dout_reg[3]_2 ),
        .\Dout_reg[3]_2 (\Dout_reg[3]_3 ),
        .\Dout_reg[3]_3 ({\Dout_reg[3] [3],\Dout_reg[3] [0]}),
        .\Dout_reg[4] (\Dout_reg[4] ),
        .\Dout_reg[5] (\Dout_reg[5] ),
        .\Dout_reg[5]_0 (\Dout_reg[5]_0 ),
        .\Dout_reg[6] (\Dout_reg[6]_0 ),
        .\Dout_reg[6]_0 (\Dout_reg[6]_1 ),
        .\Dout_reg[6]_1 (\Dout_reg[6]_2 ),
        .\Dout_reg[6]_2 (\Dout_reg[6] ),
        .\Dout_reg[7] (\Dout_reg[7] ),
        .\Dout_reg[7]_0 (\Dout_reg[7]_0 ),
        .\Dout_reg[7]_1 (\Dout_reg[7]_1 ),
        .\GENERATING_FIFOS.fcr_reg[0] (srl_fifo_rbu_f_i1_n_13),
        .\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .\INFERRED_GEN.cnt_i_reg[0] (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q(Q),
        .SS(SS),
        .character_received(character_received),
        .chipSelect(chipSelect),
        .clockDiv(clockDiv),
        .data3(data3),
        .fifo_trigger_level_flag(fifo_trigger_level_flag),
        .have_bi_in_fifo_n(have_bi_in_fifo_n),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(lsr2_rst_reg),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .\lsr_reg[2] (\lsr_reg[2]_0 ),
        .out(out),
        .rx_error_in_fifo_cnt_dn0(rx_error_in_fifo_cnt_dn0),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk),
        .wr_d(wr_d));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_control
   (Rx_error_in_fifo,
    \character_counter_reg[9]_0 ,
    thre_iir_set_reg,
    \lsr_reg[0] ,
    thre_iir_set_reg_0,
    thre_iir_set_reg_1,
    \lsr_reg[2] ,
    bus2ip_reset_int_core,
    fifo_trigger_level_flag,
    s_axi_aclk,
    Rx_error_in_fifo0,
    rclk_d3,
    scndry_out,
    \iir_reg[3] ,
    \iir_reg[2] ,
    \iir_reg[3]_0 ,
    thre_iir_set_reg_2,
    thre_iir_set_reg_3,
    thre_iir_set_reg_4,
    thre_iir_set,
    writing_thr,
    \iir[3]_i_2_0 ,
    rd_d,
    chipSelect,
    \iir_reg[1] ,
    p_0_in37_in,
    \iir_reg[2]_0 ,
    p_1_in38_in,
    p_2_in39_in,
    Q,
    rxrdyN_int_reg,
    rxrdyN_int_reg_0,
    \iir_reg[0] ,
    thre_iir_set_reg_5,
    thre_iir_set_reg_6,
    thre_iir_set_reg_7,
    thre_iir_set_reg_8,
    SR);
  output Rx_error_in_fifo;
  output \character_counter_reg[9]_0 ;
  output thre_iir_set_reg;
  output \lsr_reg[0] ;
  output thre_iir_set_reg_0;
  output thre_iir_set_reg_1;
  output \lsr_reg[2] ;
  input bus2ip_reset_int_core;
  input fifo_trigger_level_flag;
  input s_axi_aclk;
  input Rx_error_in_fifo0;
  input rclk_d3;
  input scndry_out;
  input \iir_reg[3] ;
  input [2:0]\iir_reg[2] ;
  input \iir_reg[3]_0 ;
  input thre_iir_set_reg_2;
  input thre_iir_set_reg_3;
  input thre_iir_set_reg_4;
  input thre_iir_set;
  input writing_thr;
  input \iir[3]_i_2_0 ;
  input rd_d;
  input chipSelect;
  input \iir_reg[1] ;
  input p_0_in37_in;
  input \iir_reg[2]_0 ;
  input p_1_in38_in;
  input p_2_in39_in;
  input [0:0]Q;
  input rxrdyN_int_reg;
  input rxrdyN_int_reg_0;
  input \iir_reg[0] ;
  input thre_iir_set_reg_5;
  input thre_iir_set_reg_6;
  input thre_iir_set_reg_7;
  input thre_iir_set_reg_8;
  input [0:0]SR;

  wire [0:0]Q;
  wire Rx_error_in_fifo;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire bus2ip_reset_int_core;
  wire character_counter0;
  wire \character_counter[9]_i_4_n_0 ;
  wire \character_counter_reg[9]_0 ;
  wire \character_counter_reg_n_0_[0] ;
  wire \character_counter_reg_n_0_[1] ;
  wire \character_counter_reg_n_0_[2] ;
  wire \character_counter_reg_n_0_[3] ;
  wire \character_counter_reg_n_0_[4] ;
  wire \character_counter_reg_n_0_[5] ;
  wire \character_counter_reg_n_0_[6] ;
  wire \character_counter_reg_n_0_[7] ;
  wire chipSelect;
  wire fifo_trigger_level_flag;
  wire \iir[1]_i_2_n_0 ;
  wire \iir[1]_i_3_n_0 ;
  wire \iir[2]_i_2_n_0 ;
  wire \iir[3]_i_2_0 ;
  wire \iir[3]_i_2_n_0 ;
  wire \iir[3]_i_7_n_0 ;
  wire \iir_reg[0] ;
  wire \iir_reg[1] ;
  wire [2:0]\iir_reg[2] ;
  wire \iir_reg[2]_0 ;
  wire \iir_reg[3] ;
  wire \iir_reg[3]_0 ;
  wire \lsr_reg[0] ;
  wire \lsr_reg[2] ;
  wire p_0_in;
  wire p_0_in37_in;
  wire p_1_in;
  wire p_1_in38_in;
  wire p_2_in39_in;
  wire [9:0]plusOp;
  wire rclk_d3;
  wire rd_d;
  wire rx_fifo_trigger;
  wire rxrdyN_int_reg;
  wire rxrdyN_int_reg_0;
  wire s_axi_aclk;
  wire scndry_out;
  wire thre_iir_set;
  wire thre_iir_set_reg;
  wire thre_iir_set_reg_0;
  wire thre_iir_set_reg_1;
  wire thre_iir_set_reg_2;
  wire thre_iir_set_reg_3;
  wire thre_iir_set_reg_4;
  wire thre_iir_set_reg_5;
  wire thre_iir_set_reg_6;
  wire thre_iir_set_reg_7;
  wire thre_iir_set_reg_8;
  wire writing_thr;

  FDRE Rx_error_in_fifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_error_in_fifo0),
        .Q(Rx_error_in_fifo),
        .R(bus2ip_reset_int_core));
  FDRE Rx_fifo_trigger_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_trigger_level_flag),
        .Q(rx_fifo_trigger),
        .R(bus2ip_reset_int_core));
  LUT1 #(
    .INIT(2'h1)) 
    \character_counter[0]_i_1 
       (.I0(\character_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \character_counter[1]_i_1 
       (.I0(\character_counter_reg_n_0_[0] ),
        .I1(\character_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \character_counter[2]_i_1 
       (.I0(\character_counter_reg_n_0_[2] ),
        .I1(\character_counter_reg_n_0_[0] ),
        .I2(\character_counter_reg_n_0_[1] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \character_counter[3]_i_1 
       (.I0(\character_counter_reg_n_0_[3] ),
        .I1(\character_counter_reg_n_0_[1] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[2] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \character_counter[4]_i_1 
       (.I0(\character_counter_reg_n_0_[4] ),
        .I1(\character_counter_reg_n_0_[2] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[1] ),
        .I4(\character_counter_reg_n_0_[3] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \character_counter[5]_i_1 
       (.I0(\character_counter_reg_n_0_[5] ),
        .I1(\character_counter_reg_n_0_[3] ),
        .I2(\character_counter_reg_n_0_[1] ),
        .I3(\character_counter_reg_n_0_[0] ),
        .I4(\character_counter_reg_n_0_[2] ),
        .I5(\character_counter_reg_n_0_[4] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \character_counter[6]_i_1 
       (.I0(\character_counter_reg_n_0_[6] ),
        .I1(\character_counter[9]_i_4_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \character_counter[7]_i_1 
       (.I0(\character_counter[9]_i_4_n_0 ),
        .I1(\character_counter_reg_n_0_[6] ),
        .I2(\character_counter_reg_n_0_[7] ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \character_counter[8]_i_1 
       (.I0(p_0_in),
        .I1(\character_counter[9]_i_4_n_0 ),
        .I2(\character_counter_reg_n_0_[6] ),
        .I3(\character_counter_reg_n_0_[7] ),
        .O(plusOp[8]));
  LUT5 #(
    .INIT(32'h00040404)) 
    \character_counter[9]_i_2 
       (.I0(rclk_d3),
        .I1(scndry_out),
        .I2(bus2ip_reset_int_core),
        .I3(p_1_in),
        .I4(p_0_in),
        .O(character_counter0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \character_counter[9]_i_3 
       (.I0(p_1_in),
        .I1(\character_counter_reg_n_0_[7] ),
        .I2(\character_counter_reg_n_0_[6] ),
        .I3(\character_counter[9]_i_4_n_0 ),
        .I4(p_0_in),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \character_counter[9]_i_4 
       (.I0(\character_counter_reg_n_0_[4] ),
        .I1(\character_counter_reg_n_0_[2] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[1] ),
        .I4(\character_counter_reg_n_0_[3] ),
        .I5(\character_counter_reg_n_0_[5] ),
        .O(\character_counter[9]_i_4_n_0 ));
  FDRE \character_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[0]),
        .Q(\character_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE \character_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[1]),
        .Q(\character_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE \character_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[2]),
        .Q(\character_counter_reg_n_0_[2] ),
        .R(SR));
  FDRE \character_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[3]),
        .Q(\character_counter_reg_n_0_[3] ),
        .R(SR));
  FDRE \character_counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[4]),
        .Q(\character_counter_reg_n_0_[4] ),
        .R(SR));
  FDRE \character_counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[5]),
        .Q(\character_counter_reg_n_0_[5] ),
        .R(SR));
  FDRE \character_counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[6]),
        .Q(\character_counter_reg_n_0_[6] ),
        .R(SR));
  FDRE \character_counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[7]),
        .Q(\character_counter_reg_n_0_[7] ),
        .R(SR));
  FDRE \character_counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[8]),
        .Q(p_0_in),
        .R(SR));
  FDRE \character_counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[9]),
        .Q(p_1_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0700FFFF)) 
    \iir[0]_i_1 
       (.I0(thre_iir_set),
        .I1(\iir_reg[2] [1]),
        .I2(\iir_reg[0] ),
        .I3(\iir[2]_i_2_n_0 ),
        .I4(\iir[3]_i_2_n_0 ),
        .O(thre_iir_set_reg_0));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \iir[1]_i_1 
       (.I0(\iir[1]_i_2_n_0 ),
        .I1(thre_iir_set),
        .I2(\iir_reg[2] [1]),
        .I3(\iir_reg[3]_0 ),
        .I4(\iir[3]_i_2_n_0 ),
        .O(thre_iir_set_reg_1));
  LUT6 #(
    .INIT(64'h0F0F0FFFBFBF0FFF)) 
    \iir[1]_i_2 
       (.I0(Q),
        .I1(\iir[1]_i_3_n_0 ),
        .I2(\iir_reg[2] [0]),
        .I3(rxrdyN_int_reg),
        .I4(\iir_reg[1] ),
        .I5(rx_fifo_trigger),
        .O(\iir[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iir[1]_i_3 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\iir[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \iir[2]_i_1 
       (.I0(\iir[2]_i_2_n_0 ),
        .I1(\iir[3]_i_2_n_0 ),
        .O(\lsr_reg[2] ));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \iir[2]_i_2 
       (.I0(\iir[1]_i_2_n_0 ),
        .I1(p_0_in37_in),
        .I2(\iir_reg[2]_0 ),
        .I3(p_1_in38_in),
        .I4(p_2_in39_in),
        .I5(\iir_reg[2] [2]),
        .O(\iir[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \iir[3]_i_1 
       (.I0(\iir[3]_i_2_n_0 ),
        .I1(p_1_in),
        .I2(p_0_in),
        .I3(\iir_reg[3] ),
        .I4(\iir_reg[2] [0]),
        .I5(\iir_reg[3]_0 ),
        .O(\character_counter_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h0101010101010001)) 
    \iir[3]_i_2 
       (.I0(bus2ip_reset_int_core),
        .I1(thre_iir_set_reg_5),
        .I2(thre_iir_set_reg_6),
        .I3(\iir[3]_i_7_n_0 ),
        .I4(thre_iir_set_reg_7),
        .I5(thre_iir_set_reg_8),
        .O(\iir[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \iir[3]_i_7 
       (.I0(\iir[3]_i_2_0 ),
        .I1(rd_d),
        .I2(chipSelect),
        .I3(rx_fifo_trigger),
        .I4(\iir_reg[1] ),
        .O(\iir[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4744474747474747)) 
    rxrdyN_int_i_1
       (.I0(rxrdyN_int_reg),
        .I1(rxrdyN_int_reg_0),
        .I2(rx_fifo_trigger),
        .I3(Q),
        .I4(p_0_in),
        .I5(p_1_in),
        .O(\lsr_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000AAAAA200)) 
    thre_iir_set_i_1
       (.I0(thre_iir_set_reg_2),
        .I1(\iir[3]_i_2_n_0 ),
        .I2(thre_iir_set_reg_3),
        .I3(thre_iir_set_reg_4),
        .I4(thre_iir_set),
        .I5(writing_thr),
        .O(thre_iir_set_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    rst_reg_0,
    rst_reg_1,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    s_axi_arvalid,
    rx_fifo_rst,
    p_2_in44_in,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_rready,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_awaddr,
    wrReq_d1);
  output [0:0]SR;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]rst_reg_0;
  output rst_reg_1;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input s_axi_arvalid;
  input rx_fifo_rst;
  input p_2_in44_in;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_rready;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [7:0]Q;
  input s_axi_aresetn;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input wrReq_d1;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire Wr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_2_n_0 ;
  wire [2:0]\bus2ip_addr_i_reg[4]_0 ;
  wire bus2ip_rdce_i;
  wire bus2ip_rnw_i_reg_n_0;
  wire bus2ip_wrce_i;
  wire p_2_in44_in;
  wire rst_i_1_n_0;
  wire [0:0]rst_reg_0;
  wire rst_reg_1;
  wire rx_fifo_rst;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire wrReq_d1;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(s_axi_rresp_i),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F8F88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1 
       (.I0(SR),
        .I1(rx_fifo_rst),
        .O(rst_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(bus2ip_rnw_i_reg_n_0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .Q(start2),
        .Wr(Wr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .wrReq_d1(wrReq_d1));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [2]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    thre_iir_set_i_4
       (.I0(SR),
        .I1(p_2_in44_in),
        .O(rst_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f
   (Q,
    FIFO_Full_reg_0,
    \GENERATING_FIFOS.fcr_reg[0] ,
    \GENERATING_FIFOS.fcr_reg[0]_0 ,
    out,
    SS,
    s_axi_aclk,
    FIFO_Full_reg_1,
    tx_fifo_rd_en_int,
    tx_fifo_wr_en_d,
    txrdyn,
    data3,
    txrdyN_int_reg,
    \tsr_reg[2] ,
    \tsr_reg[6] ,
    \tsr_reg[7] );
  output [0:0]Q;
  output FIFO_Full_reg_0;
  output \GENERATING_FIFOS.fcr_reg[0] ;
  output \GENERATING_FIFOS.fcr_reg[0]_0 ;
  output [5:0]out;
  input [0:0]SS;
  input s_axi_aclk;
  input FIFO_Full_reg_1;
  input tx_fifo_rd_en_int;
  input tx_fifo_wr_en_d;
  input txrdyn;
  input [0:0]data3;
  input txrdyN_int_reg;
  input [0:0]\tsr_reg[2] ;
  input [1:0]\tsr_reg[6] ;
  input [7:0]\tsr_reg[7] ;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire \GENERATING_FIFOS.fcr_reg[0] ;
  wire \GENERATING_FIFOS.fcr_reg[0]_0 ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [0:0]data3;
  wire fifo_full_p1;
  wire [5:0]out;
  wire s_axi_aclk;
  wire [0:0]\tsr_reg[2] ;
  wire [1:0]\tsr_reg[6] ;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_full;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;
  wire txrdyN_int_reg;
  wire txrdyn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_1),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .SS(SS),
        .fifo_full_p1(fifo_full_p1),
        .s_axi_aclk(s_axi_aclk),
        .tx_fifo_full(tx_fifo_full),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f DYNSHREG_F_I
       (.\GENERATING_FIFOS.fcr_reg[0] (\GENERATING_FIFOS.fcr_reg[0] ),
        .\GENERATING_FIFOS.fcr_reg[0]_0 (\GENERATING_FIFOS.fcr_reg[0]_0 ),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[2] (FIFO_Full_reg_1),
        .\tsr_reg[2]_0 (\tsr_reg[2] ),
        .\tsr_reg[6] (\tsr_reg[6] ),
        .\tsr_reg[7] (\tsr_reg[7] ),
        .tx_fifo_full(tx_fifo_full),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(tx_fifo_full),
        .R(SS));
  LUT5 #(
    .INIT(32'h2000EFFF)) 
    txrdyN_int_i_1
       (.I0(tx_fifo_full),
        .I1(txrdyn),
        .I2(data3),
        .I3(FIFO_Full_reg_1),
        .I4(txrdyN_int_reg),
        .O(FIFO_Full_reg_0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f__parameterized0
   (rx_fifo_full,
    fifo_trigger_level_flag,
    Q,
    rx_error_in_fifo_cnt_dn0,
    D,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    \GENERATING_FIFOS.fcr_reg[0] ,
    \INFERRED_GEN.cnt_i_reg[4] ,
    out,
    SS,
    s_axi_aclk,
    data3,
    rx_fifo_rd_en_d,
    \INFERRED_GEN.cnt_i_reg[1] ,
    character_received,
    have_bi_in_fifo_n,
    \INFERRED_GEN.cnt_i_reg[0] ,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    \Dout_reg[0] ,
    clockDiv,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[0]_2 ,
    \Dout_reg[3] ,
    \Dout_reg[3]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[3]_2 ,
    \Dout_reg[6] ,
    \Dout_reg[6]_0 ,
    \Dout_reg[6]_1 ,
    \Dout_reg[7] ,
    \Dout_reg[6]_2 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[5]_0 ,
    \Dout_reg[4] ,
    \Dout_reg[3]_3 ,
    \Dout_reg[0]_3 ,
    rx_fifo_data_in,
    rx_fifo_rd_en_d1,
    \lsr_reg[2] ,
    lsr2_rst_reg,
    chipSelect,
    wr_d,
    lsr2_rst,
    rx_fifo_wr_en_i);
  output rx_fifo_full;
  output fifo_trigger_level_flag;
  output [0:0]Q;
  output rx_error_in_fifo_cnt_dn0;
  output [5:0]D;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  output \GENERATING_FIFOS.fcr_reg[0] ;
  output \INFERRED_GEN.cnt_i_reg[4] ;
  output [1:0]out;
  input [0:0]SS;
  input s_axi_aclk;
  input [1:0]data3;
  input rx_fifo_rd_en_d;
  input \INFERRED_GEN.cnt_i_reg[1] ;
  input character_received;
  input have_bi_in_fifo_n;
  input \INFERRED_GEN.cnt_i_reg[0] ;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input \Dout_reg[0] ;
  input [1:0]clockDiv;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[0]_2 ;
  input \Dout_reg[3] ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[3]_2 ;
  input \Dout_reg[6] ;
  input \Dout_reg[6]_0 ;
  input \Dout_reg[6]_1 ;
  input [5:0]\Dout_reg[7] ;
  input \Dout_reg[6]_2 ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[5]_0 ;
  input \Dout_reg[4] ;
  input [1:0]\Dout_reg[3]_3 ;
  input \Dout_reg[0]_3 ;
  input [10:0]rx_fifo_data_in;
  input rx_fifo_rd_en_d1;
  input [0:0]\lsr_reg[2] ;
  input lsr2_rst_reg;
  input chipSelect;
  input wr_d;
  input lsr2_rst;
  input rx_fifo_wr_en_i;

  wire CNTR_INCR_DECR_ADDN_F_I_n_9;
  wire [5:0]D;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[0]_2 ;
  wire \Dout_reg[0]_3 ;
  wire \Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire [1:0]\Dout_reg[3]_3 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[5]_0 ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire [5:0]\Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \GENERATING_FIFOS.fcr_reg[0] ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \INFERRED_GEN.cnt_i_reg[0] ;
  wire \INFERRED_GEN.cnt_i_reg[1] ;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire character_received;
  wire chipSelect;
  wire [1:0]clockDiv;
  wire [1:0]data3;
  wire fifo_full_p1;
  wire fifo_trigger_level_flag;
  wire have_bi_in_fifo_n;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire [0:0]\lsr_reg[2] ;
  wire [1:0]out;
  wire rx_error_in_fifo_cnt_dn0;
  wire [3:0]rx_fifo_count;
  wire [10:0]rx_fifo_data_in;
  wire [9:8]rx_fifo_data_out;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;
  wire wr_d;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f_1 CNTR_INCR_DECR_ADDN_F_I
       (.\GENERATING_FIFOS.fcr_reg[0] (\GENERATING_FIFOS.fcr_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[0]_0 (\INFERRED_GEN.cnt_i_reg[0] ),
        .\INFERRED_GEN.cnt_i_reg[1]_0 (\INFERRED_GEN.cnt_i_reg[1] ),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (CNTR_INCR_DECR_ADDN_F_I_n_9),
        .\INFERRED_GEN.cnt_i_reg[4]_1 (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q({Q,rx_fifo_count}),
        .SS(SS),
        .character_received(character_received),
        .chipSelect(chipSelect),
        .data3(data3),
        .fifo_full_p1(fifo_full_p1),
        .fifo_trigger_level_flag(fifo_trigger_level_flag),
        .have_bi_in_fifo_n(have_bi_in_fifo_n),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(lsr2_rst_reg),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .out(rx_fifo_data_out),
        .rx_fifo_data_in(rx_fifo_data_in[9:8]),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .s_axi_aclk(s_axi_aclk),
        .wr_d(wr_d));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.D(D),
        .\Dout_reg[0] (\Dout_reg[0] ),
        .\Dout_reg[0]_0 (\Dout_reg[0]_0 ),
        .\Dout_reg[0]_1 (\Dout_reg[0]_1 ),
        .\Dout_reg[0]_2 (\Dout_reg[0]_2 ),
        .\Dout_reg[0]_3 (\Dout_reg[0]_3 ),
        .\Dout_reg[3] (\Dout_reg[3] ),
        .\Dout_reg[3]_0 (\Dout_reg[3]_0 ),
        .\Dout_reg[3]_1 (\Dout_reg[3]_1 ),
        .\Dout_reg[3]_2 (\Dout_reg[3]_2 ),
        .\Dout_reg[3]_3 (\Dout_reg[3]_3 ),
        .\Dout_reg[4] (\Dout_reg[4] ),
        .\Dout_reg[5] (\Dout_reg[5] ),
        .\Dout_reg[5]_0 (\Dout_reg[5]_0 ),
        .\Dout_reg[6] (\Dout_reg[6] ),
        .\Dout_reg[6]_0 (\Dout_reg[6]_0 ),
        .\Dout_reg[6]_1 (\Dout_reg[6]_1 ),
        .\Dout_reg[6]_2 (\Dout_reg[6]_2 ),
        .\Dout_reg[7] (\Dout_reg[7] ),
        .\Dout_reg[7]_0 (\Dout_reg[7]_0 ),
        .\Dout_reg[7]_1 (\Dout_reg[7]_1 ),
        .\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .Q(rx_fifo_count),
        .clockDiv(clockDiv),
        .lsr2_set(lsr2_set),
        .\lsr_reg[2] (\lsr_reg[2] ),
        .\lsr_reg[2]_0 (CNTR_INCR_DECR_ADDN_F_I_n_9),
        .\lsr_reg[2]_1 (\INFERRED_GEN.cnt_i_reg[0] ),
        .out({rx_fifo_data_out,out}),
        .rx_error_in_fifo_cnt_dn0(rx_error_in_fifo_cnt_dn0),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(rx_fifo_full),
        .R(SS));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx16550
   (tx_empty,
    tx_fifo_rd_en_int,
    tsr_loaded,
    Q,
    baudoutN_int_i_reg,
    rx_sin,
    sout,
    bus2ip_reset_int_core,
    s_axi_aclk,
    \FSM_sequential_transmit_state_reg[0]_0 ,
    Sout_reg_0,
    \FSM_sequential_transmit_state_reg[3]_0 ,
    baudoutN_int_i,
    xin_d3,
    baudoutn,
    clockDiv,
    \tsr_reg[0]_0 ,
    \tsr_reg[1]_0 ,
    \tsr_reg[2]_0 ,
    \tsr_reg[3]_0 ,
    \tsr_reg[4]_0 ,
    \tsr_reg[5]_0 ,
    \tsr_reg[6]_0 ,
    out,
    \tsr_reg[7]_0 ,
    \tsr_reg[7]_1 ,
    sin,
    sout_0,
    freeze);
  output tx_empty;
  output tx_fifo_rd_en_int;
  output tsr_loaded;
  output [0:0]Q;
  output baudoutN_int_i_reg;
  output rx_sin;
  output sout;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input \FSM_sequential_transmit_state_reg[0]_0 ;
  input [6:0]Sout_reg_0;
  input \FSM_sequential_transmit_state_reg[3]_0 ;
  input baudoutN_int_i;
  input xin_d3;
  input baudoutn;
  input [15:0]clockDiv;
  input \tsr_reg[0]_0 ;
  input \tsr_reg[1]_0 ;
  input \tsr_reg[2]_0 ;
  input \tsr_reg[3]_0 ;
  input \tsr_reg[4]_0 ;
  input \tsr_reg[5]_0 ;
  input \tsr_reg[6]_0 ;
  input [0:0]out;
  input \tsr_reg[7]_0 ;
  input [0:0]\tsr_reg[7]_1 ;
  input sin;
  input [0:0]sout_0;
  input freeze;

  wire \FSM_sequential_transmit_state[0]_i_2_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_4_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_5_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_5_n_0 ;
  wire \FSM_sequential_transmit_state_reg[0]_0 ;
  wire \FSM_sequential_transmit_state_reg[3]_0 ;
  wire [0:0]Q;
  wire Sout0;
  wire Sout_i_1_n_0;
  wire Sout_i_2_n_0;
  wire Sout_i_3_n_0;
  wire [6:0]Sout_reg_0;
  wire Tsr_loaded_i_1_n_0;
  wire Tx_empty0;
  wire baudoutN_int_i;
  wire baudoutN_int_i_reg;
  wire baudoutn;
  wire baudoutn_INST_0_i_1_n_0;
  wire baudoutn_INST_0_i_2_n_0;
  wire baudoutn_INST_0_i_3_n_0;
  wire baudoutn_INST_0_i_4_n_0;
  wire bus2ip_reset_int_core;
  wire clk1x;
  wire clk1x_i_1__0_n_0;
  wire clk2x;
  wire clk2x0;
  wire [2:0]clkdiv;
  wire \clkdiv[3]_i_1_n_0 ;
  wire \clkdiv[3]_i_2_n_0 ;
  wire [3:0]clkdiv_reg;
  wire [15:0]clockDiv;
  wire freeze;
  wire [6:0]in12;
  wire [3:0]next_state;
  wire [0:0]out;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin;
  wire sout;
  wire [0:0]sout_0;
  wire [2:0]transmit_state;
  wire transmitting_n;
  wire transmitting_n_com;
  wire \tsr[7]_i_2_n_0 ;
  wire \tsr[7]_i_3_n_0 ;
  wire [7:0]tsr_com;
  wire tsr_loaded;
  wire \tsr_reg[0]_0 ;
  wire \tsr_reg[1]_0 ;
  wire \tsr_reg[2]_0 ;
  wire \tsr_reg[3]_0 ;
  wire \tsr_reg[4]_0 ;
  wire \tsr_reg[5]_0 ;
  wire \tsr_reg[6]_0 ;
  wire \tsr_reg[7]_0 ;
  wire [0:0]\tsr_reg[7]_1 ;
  wire \tsr_reg_n_0_[0] ;
  wire tx_empty;
  wire tx_fifo_rd_en_com;
  wire tx_fifo_rd_en_int;
  wire tx_parity;
  wire tx_parity_com;
  wire tx_parity_i_2_n_0;
  wire tx_sout;
  wire xin_d3;

  LUT6 #(
    .INIT(64'hF505FFFCF5050000)) 
    \FSM_sequential_transmit_state[0]_i_1 
       (.I0(\FSM_sequential_transmit_state[0]_i_2_n_0 ),
        .I1(transmit_state[1]),
        .I2(transmit_state[2]),
        .I3(\FSM_sequential_transmit_state_reg[0]_0 ),
        .I4(Q),
        .I5(\FSM_sequential_transmit_state[0]_i_4_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hBBF000F0BBF00000)) 
    \FSM_sequential_transmit_state[0]_i_2 
       (.I0(Sout_reg_0[2]),
        .I1(\FSM_sequential_transmit_state_reg[0]_0 ),
        .I2(Sout_reg_0[3]),
        .I3(transmit_state[1]),
        .I4(transmit_state[0]),
        .I5(\FSM_sequential_transmit_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_transmit_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5455555575555555)) 
    \FSM_sequential_transmit_state[0]_i_4 
       (.I0(transmit_state[0]),
        .I1(Sout_reg_0[1]),
        .I2(Sout_reg_0[0]),
        .I3(transmit_state[2]),
        .I4(transmit_state[1]),
        .I5(Sout_reg_0[3]),
        .O(\FSM_sequential_transmit_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_transmit_state[0]_i_5 
       (.I0(Sout_reg_0[1]),
        .I1(Sout_reg_0[0]),
        .O(\FSM_sequential_transmit_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00006E6666766666)) 
    \FSM_sequential_transmit_state[1]_i_1 
       (.I0(transmit_state[0]),
        .I1(transmit_state[1]),
        .I2(Sout_reg_0[1]),
        .I3(Sout_reg_0[0]),
        .I4(Q),
        .I5(transmit_state[2]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h5212020252122222)) 
    \FSM_sequential_transmit_state[2]_i_1 
       (.I0(transmit_state[2]),
        .I1(Q),
        .I2(transmit_state[1]),
        .I3(Sout_reg_0[2]),
        .I4(transmit_state[0]),
        .I5(\FSM_sequential_transmit_state_reg[3]_0 ),
        .O(next_state[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_transmit_state[3]_i_1 
       (.I0(clk1x),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(Sout0));
  LUT6 #(
    .INIT(64'h0000F0A0CFFF0000)) 
    \FSM_sequential_transmit_state[3]_i_2 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(Sout_reg_0[2]),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(Q),
        .I5(transmit_state[2]),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_transmit_state[3]_i_3 
       (.I0(\FSM_sequential_transmit_state[3]_i_5_n_0 ),
        .I1(clk2x),
        .I2(Sout_reg_0[2]),
        .I3(Sout_reg_0[1]),
        .I4(Sout_reg_0[0]),
        .O(\FSM_sequential_transmit_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_transmit_state[3]_i_5 
       (.I0(transmit_state[2]),
        .I1(Q),
        .I2(transmit_state[0]),
        .I3(transmit_state[1]),
        .O(\FSM_sequential_transmit_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[0]),
        .Q(transmit_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[1]),
        .Q(transmit_state[1]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[2]),
        .Q(transmit_state[2]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[3]),
        .Q(Q),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h1)) 
    Sout_i_1
       (.I0(Sout_reg_0[6]),
        .I1(Sout_i_2_n_0),
        .O(Sout_i_1_n_0));
  LUT6 #(
    .INIT(64'h5151737751510330)) 
    Sout_i_2
       (.I0(Sout_i_3_n_0),
        .I1(\tsr_reg_n_0_[0] ),
        .I2(Q),
        .I3(transmit_state[2]),
        .I4(transmit_state[1]),
        .I5(transmit_state[0]),
        .O(Sout_i_2_n_0));
  LUT6 #(
    .INIT(64'h4044404044444440)) 
    Sout_i_3
       (.I0(transmit_state[2]),
        .I1(Q),
        .I2(transmit_state[0]),
        .I3(Sout_reg_0[5]),
        .I4(tx_parity),
        .I5(Sout_reg_0[4]),
        .O(Sout_i_3_n_0));
  FDSE Sout_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(Sout_i_1_n_0),
        .Q(tx_sout),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    Tsr_loaded_i_1
       (.I0(Sout0),
        .I1(transmit_state[1]),
        .I2(transmit_state[2]),
        .I3(Q),
        .I4(transmit_state[0]),
        .I5(bus2ip_reset_int_core),
        .O(Tsr_loaded_i_1_n_0));
  FDRE Tsr_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tsr_loaded_i_1_n_0),
        .Q(tsr_loaded),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    Tx_empty_i_1
       (.I0(clk1x),
        .I1(transmitting_n),
        .O(Tx_empty0));
  FDSE Tx_empty_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_empty0),
        .Q(tx_empty),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    Tx_fifo_rd_en_i_1
       (.I0(clk1x),
        .I1(transmit_state[0]),
        .I2(Q),
        .I3(transmit_state[2]),
        .I4(transmit_state[1]),
        .O(tx_fifo_rd_en_com));
  FDRE Tx_fifo_rd_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_rd_en_com),
        .Q(tx_fifo_rd_en_int),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'hABA8ABAB)) 
    baudoutn_INST_0
       (.I0(baudoutN_int_i),
        .I1(baudoutn_INST_0_i_1_n_0),
        .I2(baudoutn_INST_0_i_2_n_0),
        .I3(xin_d3),
        .I4(baudoutn),
        .O(baudoutN_int_i_reg));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    baudoutn_INST_0_i_1
       (.I0(clockDiv[6]),
        .I1(clockDiv[1]),
        .I2(clockDiv[2]),
        .I3(clockDiv[0]),
        .I4(baudoutn_INST_0_i_3_n_0),
        .O(baudoutn_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    baudoutn_INST_0_i_2
       (.I0(clockDiv[13]),
        .I1(clockDiv[3]),
        .I2(clockDiv[9]),
        .I3(clockDiv[14]),
        .I4(baudoutn_INST_0_i_4_n_0),
        .O(baudoutn_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudoutn_INST_0_i_3
       (.I0(clockDiv[4]),
        .I1(clockDiv[5]),
        .I2(clockDiv[15]),
        .I3(clockDiv[8]),
        .O(baudoutn_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baudoutn_INST_0_i_4
       (.I0(clockDiv[10]),
        .I1(clockDiv[11]),
        .I2(clockDiv[7]),
        .I3(clockDiv[12]),
        .O(baudoutn_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    clk1x_i_1__0
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[2]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[0]),
        .I4(baudoutN_int_i_reg),
        .O(clk1x_i_1__0_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x_i_1__0_n_0),
        .Q(clk1x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    clk2x_i_1__0
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[2]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[0]),
        .I4(baudoutN_int_i_reg),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \clkdiv[0]_i_1 
       (.I0(clkdiv_reg[0]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \clkdiv[1]_i_1 
       (.I0(clkdiv_reg[1]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I2(clkdiv_reg[0]),
        .O(clkdiv[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \clkdiv[2]_i_1 
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[0]),
        .I2(clkdiv_reg[1]),
        .I3(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \clkdiv[3]_i_1 
       (.I0(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I1(baudoutN_int_i_reg),
        .O(\clkdiv[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h55556AAA)) 
    \clkdiv[3]_i_2 
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[2]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[0]),
        .I4(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(\clkdiv[3]_i_2_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[0]),
        .Q(clkdiv_reg[0]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[1]),
        .Q(clkdiv_reg[1]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[2]),
        .Q(clkdiv_reg[2]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(\clkdiv[3]_i_2_n_0 ),
        .Q(clkdiv_reg[3]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    sin_d1_i_2
       (.I0(tx_sout),
        .I1(sin),
        .I2(sout_0),
        .I3(freeze),
        .O(rx_sin));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h54)) 
    sout_INST_0
       (.I0(Sout_reg_0[6]),
        .I1(tx_sout),
        .I2(sout_0),
        .O(sout));
  LUT6 #(
    .INIT(64'h000080030300C003)) 
    transmitting_n_i_1
       (.I0(Sout_reg_0[2]),
        .I1(transmit_state[1]),
        .I2(transmit_state[0]),
        .I3(Q),
        .I4(transmit_state[2]),
        .I5(\FSM_sequential_transmit_state_reg[0]_0 ),
        .O(transmitting_n_com));
  FDRE transmitting_n_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transmitting_n_com),
        .Q(transmitting_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[0]_i_1 
       (.I0(in12[0]),
        .I1(\tsr_reg[0]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[0]));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[1]_i_1 
       (.I0(in12[1]),
        .I1(\tsr_reg[1]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[1]));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[2]_i_1 
       (.I0(in12[2]),
        .I1(\tsr_reg[2]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[2]));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[3]_i_1 
       (.I0(in12[3]),
        .I1(\tsr_reg[3]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[3]));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[4]_i_1 
       (.I0(in12[4]),
        .I1(\tsr_reg[4]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[4]));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[5]_i_1 
       (.I0(in12[5]),
        .I1(\tsr_reg[5]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[5]));
  LUT6 #(
    .INIT(64'h0C0FFAFAAAAAACAF)) 
    \tsr[6]_i_1 
       (.I0(in12[6]),
        .I1(\tsr_reg[6]_0 ),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .I4(transmit_state[2]),
        .I5(Q),
        .O(tsr_com[6]));
  LUT6 #(
    .INIT(64'h00CF00C055FF55FF)) 
    \tsr[7]_i_1 
       (.I0(\tsr[7]_i_2_n_0 ),
        .I1(out),
        .I2(\tsr_reg[7]_0 ),
        .I3(Q),
        .I4(\tsr_reg[7]_1 ),
        .I5(\tsr[7]_i_3_n_0 ),
        .O(tsr_com[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \tsr[7]_i_2 
       (.I0(transmit_state[1]),
        .I1(transmit_state[2]),
        .O(\tsr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \tsr[7]_i_3 
       (.I0(transmit_state[1]),
        .I1(transmit_state[0]),
        .I2(transmit_state[2]),
        .I3(Q),
        .O(\tsr[7]_i_3_n_0 ));
  FDSE \tsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[0]),
        .Q(\tsr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[1]),
        .Q(in12[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[2]),
        .Q(in12[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[3]),
        .Q(in12[2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[4]),
        .Q(in12[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[5]),
        .Q(in12[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[6]),
        .Q(in12[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[7]),
        .Q(in12[6]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0200F20FF20F0200)) 
    tx_parity_i_1
       (.I0(transmit_state[0]),
        .I1(Sout_reg_0[4]),
        .I2(Q),
        .I3(tx_parity_i_2_n_0),
        .I4(\tsr_reg_n_0_[0] ),
        .I5(tx_parity),
        .O(tx_parity_com));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    tx_parity_i_2
       (.I0(transmit_state[1]),
        .I1(transmit_state[2]),
        .O(tx_parity_i_2_n_0));
  FDRE tx_parity_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tx_parity_com),
        .Q(tx_parity),
        .R(bus2ip_reset_int_core));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_fifo_block
   (Q,
    FIFO_Full_reg,
    \GENERATING_FIFOS.fcr_reg[0] ,
    out,
    \GENERATING_FIFOS.fcr_reg[0]_0 ,
    SS,
    s_axi_aclk,
    FIFO_Full_reg_0,
    tx_fifo_rd_en_int,
    tx_fifo_wr_en_d,
    txrdyn,
    data3,
    txrdyN_int_reg,
    \tsr_reg[2] ,
    \tsr_reg[6] ,
    \tsr_reg[7] );
  output [0:0]Q;
  output FIFO_Full_reg;
  output \GENERATING_FIFOS.fcr_reg[0] ;
  output [5:0]out;
  output \GENERATING_FIFOS.fcr_reg[0]_0 ;
  input [0:0]SS;
  input s_axi_aclk;
  input FIFO_Full_reg_0;
  input tx_fifo_rd_en_int;
  input tx_fifo_wr_en_d;
  input txrdyn;
  input [0:0]data3;
  input txrdyN_int_reg;
  input [0:0]\tsr_reg[2] ;
  input [1:0]\tsr_reg[6] ;
  input [7:0]\tsr_reg[7] ;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \GENERATING_FIFOS.fcr_reg[0] ;
  wire \GENERATING_FIFOS.fcr_reg[0]_0 ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [0:0]data3;
  wire [5:0]out;
  wire s_axi_aclk;
  wire [0:0]\tsr_reg[2] ;
  wire [1:0]\tsr_reg[6] ;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;
  wire txrdyN_int_reg;
  wire txrdyn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f srl_fifo_rbu_f_i1
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .FIFO_Full_reg_1(FIFO_Full_reg_0),
        .\GENERATING_FIFOS.fcr_reg[0] (\GENERATING_FIFOS.fcr_reg[0] ),
        .\GENERATING_FIFOS.fcr_reg[0]_0 (\GENERATING_FIFOS.fcr_reg[0]_0 ),
        .Q(Q),
        .SS(SS),
        .data3(data3),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[2] (\tsr_reg[2] ),
        .\tsr_reg[6] (\tsr_reg[6] ),
        .\tsr_reg[7] (\tsr_reg[7] ),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d),
        .txrdyN_int_reg(txrdyN_int_reg),
        .txrdyn(txrdyn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart16550
   (SS,
    \lsr_reg[5]_0 ,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    baudoutN_int_i_reg_0,
    \baudCounter_reg[6]_0 ,
    rtsn,
    dtrn,
    out1n,
    out2n,
    sout,
    Q,
    s_axi_aclk,
    sin_d1_reg,
    bus2ip_reset_int_core,
    Rd,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    ce_out_i,
    baudoutN_int_i_reg_1,
    rclk_d3,
    scndry_out,
    xin_d3,
    baudoutn,
    thre_iir_set_reg_0,
    freeze,
    sin,
    s_axi_wdata,
    \addr_d_reg[2]_0 ,
    E,
    SR);
  output [0:0]SS;
  output \lsr_reg[5]_0 ;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output baudoutN_int_i_reg_0;
  output \baudCounter_reg[6]_0 ;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  output sout;
  output [7:0]Q;
  input s_axi_aclk;
  input sin_d1_reg;
  input bus2ip_reset_int_core;
  input Rd;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input ce_out_i;
  input baudoutN_int_i_reg_1;
  input rclk_d3;
  input scndry_out;
  input xin_d3;
  input baudoutn;
  input thre_iir_set_reg_0;
  input freeze;
  input sin;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2]_0 ;
  input [0:0]E;
  input [0:0]SR;

  wire Ddis_i_1_n_0;
  wire \Dout[0]_i_2_n_0 ;
  wire \Dout[0]_i_3_n_0 ;
  wire \Dout[0]_i_4_n_0 ;
  wire \Dout[1]_i_2_n_0 ;
  wire \Dout[1]_i_3_n_0 ;
  wire \Dout[1]_i_4_n_0 ;
  wire \Dout[2]_i_2_n_0 ;
  wire \Dout[2]_i_3_n_0 ;
  wire \Dout[2]_i_4_n_0 ;
  wire \Dout[2]_i_5_n_0 ;
  wire \Dout[3]_i_2_n_0 ;
  wire \Dout[3]_i_3_n_0 ;
  wire \Dout[3]_i_4_n_0 ;
  wire \Dout[3]_i_5_n_0 ;
  wire \Dout[3]_i_7_n_0 ;
  wire \Dout[4]_i_2_n_0 ;
  wire \Dout[4]_i_3_n_0 ;
  wire \Dout[4]_i_4_n_0 ;
  wire \Dout[5]_i_2_n_0 ;
  wire \Dout[5]_i_3_n_0 ;
  wire \Dout[5]_i_4_n_0 ;
  wire \Dout[6]_i_2_n_0 ;
  wire \Dout[6]_i_3_n_0 ;
  wire \Dout[6]_i_4_n_0 ;
  wire \Dout[7]_i_3_n_0 ;
  wire \Dout[7]_i_4_n_0 ;
  wire \Dout[7]_i_5_n_0 ;
  wire \Dout[7]_i_6_n_0 ;
  wire \Dout[7]_i_7_n_0 ;
  wire \Dout[7]_i_8_n_0 ;
  wire [0:0]E;
  wire \GENERATING_FIFOS.fcr[0]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[1]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[2]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[3]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[6]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[7]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr_reg_n_0_[0] ;
  wire \GENERATING_FIFOS.fcr_reg_n_0_[1] ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ;
  wire [3:0]\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_10 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_11 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_12 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_13 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_17 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_18 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_19 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_20 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_21 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_3 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_4 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_8 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_9 ;
  wire \GENERATING_FIFOS.tx_fifo_block_1_n_1 ;
  wire \GENERATING_FIFOS.tx_fifo_block_1_n_2 ;
  wire \GENERATING_FIFOS.tx_fifo_block_1_n_9 ;
  wire \GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ;
  wire Intr0;
  wire [0:3]L;
  wire Lcr0;
  wire \Lcr_reg_n_0_[0] ;
  wire \Lcr_reg_n_0_[1] ;
  wire \Lcr_reg_n_0_[2] ;
  wire \Lcr_reg_n_0_[4] ;
  wire \Lcr_reg_n_0_[5] ;
  wire \Lcr_reg_n_0_[6] ;
  wire \Lcr_reg_n_0_[7] ;
  wire [7:0]Q;
  wire [7:0]Rbr;
  wire Rd;
  wire Rx_error_in_fifo;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [7:0]Thr;
  wire Thr0;
  wire Wr;
  wire [2:0]\addr_d_reg[2]_0 ;
  wire [15:0]baudCounter;
  wire baudCounter1;
  wire \baudCounter[0]_i_1_n_0 ;
  wire \baudCounter[10]_i_1_n_0 ;
  wire \baudCounter[11]_i_1_n_0 ;
  wire \baudCounter[12]_i_1_n_0 ;
  wire \baudCounter[13]_i_1_n_0 ;
  wire \baudCounter[14]_i_1_n_0 ;
  wire \baudCounter[15]_i_2_n_0 ;
  wire \baudCounter[15]_i_4_n_0 ;
  wire \baudCounter[15]_i_5_n_0 ;
  wire \baudCounter[15]_i_6_n_0 ;
  wire \baudCounter[15]_i_7_n_0 ;
  wire \baudCounter[1]_i_1_n_0 ;
  wire \baudCounter[2]_i_1_n_0 ;
  wire \baudCounter[3]_i_1_n_0 ;
  wire \baudCounter[4]_i_1_n_0 ;
  wire \baudCounter[5]_i_1_n_0 ;
  wire \baudCounter[6]_i_1_n_0 ;
  wire \baudCounter[7]_i_1_n_0 ;
  wire \baudCounter[8]_i_1_n_0 ;
  wire \baudCounter[9]_i_1_n_0 ;
  wire \baudCounter_reg[6]_0 ;
  wire baud_counter_loaded;
  wire baud_counter_loaded_i_1_n_0;
  wire baud_counter_loaded_i_3_n_0;
  wire baudoutN_int_i;
  wire baudoutN_int_i_reg_0;
  wire baudoutN_int_i_reg_1;
  wire baudoutn;
  wire bus2ip_reset_int_core;
  wire ce_out_i;
  wire character_received;
  wire chipSelect;
  wire [15:0]clockDiv;
  wire ctsN_d;
  wire ctsn;
  wire \d_d_reg_n_0_[0] ;
  wire \d_d_reg_n_0_[1] ;
  wire \d_d_reg_n_0_[2] ;
  wire \d_d_reg_n_0_[3] ;
  wire \d_d_reg_n_0_[5] ;
  wire [7:3]data3;
  wire dcdN_d;
  wire dcdn;
  wire ddis;
  wire divisor_latch_loaded;
  wire divisor_latch_loaded_i_1_n_0;
  wire dlab_i_1_n_0;
  wire dll0;
  wire dlm0;
  wire dsrN_d;
  wire dsrn;
  wire dtrn;
  wire fcr1;
  wire fcr_0_prev;
  wire freeze;
  wire have_bi_in_fifo_n;
  wire [3:0]ier;
  wire ier1;
  wire ier1_d;
  wire \iir[0]_i_2_n_0 ;
  wire \iir[3]_i_10_n_0 ;
  wire \iir[3]_i_4_n_0 ;
  wire \iir[3]_i_5_n_0 ;
  wire \iir[3]_i_6_n_0 ;
  wire \iir[3]_i_8_n_0 ;
  wire \iir[3]_i_9_n_0 ;
  wire \iir_reg_n_0_[0] ;
  wire \iir_reg_n_0_[1] ;
  wire \iir_reg_n_0_[2] ;
  wire \iir_reg_n_0_[3] ;
  wire \iir_reg_n_0_[7] ;
  wire ip2intc_irpt;
  wire load_baudlower;
  wire load_baudupper;
  wire lsr2_rst;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire lsr5_d;
  wire lsr7_set;
  wire \lsr[1]_i_4_n_0 ;
  wire \lsr[2]_i_1_n_0 ;
  wire \lsr[2]_i_3_n_0 ;
  wire \lsr[2]_i_4_n_0 ;
  wire \lsr[3]_i_1_n_0 ;
  wire \lsr[4]_i_1_n_0 ;
  wire \lsr[7]_i_1_n_0 ;
  wire lsr_reg;
  wire lsr_reg0;
  wire lsr_reg014_out;
  wire \lsr_reg[5]_0 ;
  wire \lsr_reg_n_0_[0] ;
  wire \lsr_reg_n_0_[1] ;
  wire \lsr_reg_n_0_[7] ;
  wire mcr0;
  wire mcr4_d;
  wire \mcr_reg_n_0_[0] ;
  wire \mcr_reg_n_0_[2] ;
  wire \mcr_reg_n_0_[3] ;
  wire [15:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \modem_prev_val[0]_i_1_n_0 ;
  wire \modem_prev_val[1]_i_1_n_0 ;
  wire \modem_prev_val[2]_i_1_n_0 ;
  wire \modem_prev_val[3]_i_1_n_0 ;
  wire \modem_prev_val_reg_n_0_[0] ;
  wire \modem_prev_val_reg_n_0_[1] ;
  wire msr1;
  wire \msr[0]_i_2_n_0 ;
  wire \msr[1]_i_1_n_0 ;
  wire \msr[2]_i_1_n_0 ;
  wire \msr[3]_i_1_n_0 ;
  wire \msr[4]_i_1_n_0 ;
  wire \msr[5]_i_1_n_0 ;
  wire \msr[6]_i_1_n_0 ;
  wire \msr[7]_i_1_n_0 ;
  wire msr_reg;
  wire msr_reg0;
  wire \msr_reg_n_0_[0] ;
  wire \msr_reg_n_0_[5] ;
  wire \msr_reg_n_0_[6] ;
  wire \msr_reg_n_0_[7] ;
  wire out1n;
  wire out2n;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in32_in;
  wire p_0_in33_in;
  wire p_0_in34_in;
  wire p_0_in37_in;
  wire p_0_in8_in;
  wire p_1_in38_in;
  wire p_1_in3_in;
  wire p_1_in6_in;
  wire [6:5]p_2_in;
  wire p_2_in39_in;
  wire p_3_in;
  wire p_5_in;
  wire p_71_in;
  wire rclk_d3;
  wire rd_d;
  wire readStrobe;
  wire riN_d;
  wire rin;
  wire rtsn;
  wire rx16550_1_n_13;
  wire rx16550_1_n_14;
  wire rx16550_1_n_15;
  wire rx16550_1_n_17;
  wire rx16550_1_n_20;
  wire rx16550_1_n_21;
  wire rx_error_in_fifo_cnt_dn;
  wire rx_error_in_fifo_cnt_dn0;
  wire rx_error_in_fifo_cnt_up;
  wire \rx_fifo_control_1/Rx_error_in_fifo0 ;
  wire \rx_fifo_control_1/character_counter_rst ;
  wire [10:0]rx_fifo_data_in;
  wire [2:1]rx_fifo_data_out;
  wire rx_fifo_empty;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst0;
  wire rx_fifo_wr_en_i;
  wire rx_sin;
  wire rxrdyN_int_i_2_n_0;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire scndry_out;
  wire [7:0]scr;
  wire scr0;
  wire sin;
  wire sin_d1_reg;
  wire sout;
  wire thre_iir_set;
  wire thre_iir_set_i_2_n_0;
  wire thre_iir_set_i_3_n_0;
  wire thre_iir_set_i_5_n_0;
  wire thre_iir_set_reg_0;
  wire [3:3]transmit_state;
  wire [7:2]tsr_int;
  wire tsr_loaded;
  wire tx_empty;
  wire [7:0]tx_fifo_data_out;
  wire tx_fifo_empty;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_rst;
  wire tx_fifo_rst0;
  wire tx_fifo_wr_en;
  wire tx_fifo_wr_en_d;
  wire txrdyn;
  wire wr_d;
  wire writing_thr;
  wire xin_d3;
  wire xuart_tx_load_sm_1_n_0;
  wire xuart_tx_load_sm_1_n_1;
  wire xuart_tx_load_sm_1_n_10;
  wire xuart_tx_load_sm_1_n_2;
  wire xuart_tx_load_sm_1_n_6;
  wire xuart_tx_load_sm_1_n_7;
  wire xuart_tx_load_sm_1_n_8;
  wire xuart_tx_load_sm_1_n_9;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    Ddis_i_1
       (.I0(chipSelect),
        .I1(rd_d),
        .O(Ddis_i_1_n_0));
  FDRE Ddis_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ddis_i_1_n_0),
        .Q(ddis),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF000000800000008)) 
    \Dout[0]_i_2 
       (.I0(L[0]),
        .I1(clockDiv[0]),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(scr[0]),
        .O(\Dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FAC000000AC0000)) 
    \Dout[0]_i_3 
       (.I0(\lsr_reg_n_0_[0] ),
        .I1(\mcr_reg_n_0_[0] ),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(\msr_reg_n_0_[0] ),
        .O(\Dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \Dout[0]_i_4 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(\Lcr_reg_n_0_[0] ),
        .I2(\Dout[7]_i_8_n_0 ),
        .I3(\iir_reg_n_0_[0] ),
        .I4(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I5(L[0]),
        .O(\Dout[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80800C0080800000)) 
    \Dout[1]_i_2 
       (.I0(scr[1]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[0]),
        .I4(L[1]),
        .I5(clockDiv[9]),
        .O(\Dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FAC000000AC0000)) 
    \Dout[1]_i_3 
       (.I0(\lsr_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(p_0_in32_in),
        .O(\Dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \Dout[1]_i_4 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .I1(\Lcr_reg_n_0_[1] ),
        .I2(\Dout[7]_i_8_n_0 ),
        .I3(\iir_reg_n_0_[1] ),
        .I4(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I5(L[0]),
        .O(\Dout[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080030080800000)) 
    \Dout[2]_i_2 
       (.I0(scr[2]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[0]),
        .I4(L[1]),
        .I5(clockDiv[2]),
        .O(\Dout[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \Dout[2]_i_3 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[0]),
        .I3(L[1]),
        .O(\Dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0C0A00000C0A0)) 
    \Dout[2]_i_4 
       (.I0(\mcr_reg_n_0_[2] ),
        .I1(p_0_in33_in),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(p_0_in37_in),
        .O(\Dout[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[2]_i_5 
       (.I0(\iir_reg_n_0_[2] ),
        .I1(\Lcr_reg_n_0_[2] ),
        .I2(\Dout[7]_i_8_n_0 ),
        .I3(p_0_in1_in),
        .I4(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I5(L[0]),
        .O(\Dout[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80800C0080800000)) 
    \Dout[3]_i_2 
       (.I0(scr[3]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[0]),
        .I4(L[1]),
        .I5(clockDiv[11]),
        .O(\Dout[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \Dout[3]_i_3 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[0]),
        .I3(L[1]),
        .O(\Dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0F0C000A000C0)) 
    \Dout[3]_i_4 
       (.I0(p_1_in38_in),
        .I1(\mcr_reg_n_0_[3] ),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(p_0_in34_in),
        .O(\Dout[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \Dout[3]_i_5 
       (.I0(data3[3]),
        .I1(p_5_in),
        .I2(\Dout[7]_i_8_n_0 ),
        .I3(\iir_reg_n_0_[3] ),
        .I4(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I5(L[0]),
        .O(\Dout[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \Dout[3]_i_7 
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[3]),
        .I3(L[2]),
        .O(\Dout[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAEFFAE)) 
    \Dout[4]_i_2 
       (.I0(\Dout[4]_i_3_n_0 ),
        .I1(clockDiv[12]),
        .I2(\Dout[2]_i_3_n_0 ),
        .I3(\Lcr_reg_n_0_[4] ),
        .I4(\Dout[7]_i_8_n_0 ),
        .I5(\Dout[4]_i_4_n_0 ),
        .O(\Dout[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080030080800000)) 
    \Dout[4]_i_3 
       (.I0(scr[4]),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[0]),
        .I4(L[1]),
        .I5(clockDiv[4]),
        .O(\Dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0C0A00000C0A0)) 
    \Dout[4]_i_4 
       (.I0(p_0_in8_in),
        .I1(msr_reg),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(p_2_in39_in),
        .O(\Dout[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0FC0A00000C0A000)) 
    \Dout[5]_i_2 
       (.I0(\Lcr_reg_n_0_[5] ),
        .I1(\msr_reg_n_0_[5] ),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[1]),
        .I5(\lsr_reg[5]_0 ),
        .O(\Dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[5]_i_3 
       (.I0(\Dout[3]_i_3_n_0 ),
        .I1(clockDiv[5]),
        .I2(clockDiv[13]),
        .I3(\Dout[2]_i_3_n_0 ),
        .I4(scr[5]),
        .I5(\Dout[5]_i_4_n_0 ),
        .O(\Dout[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Dout[5]_i_4 
       (.I0(L[3]),
        .I1(L[1]),
        .I2(L[2]),
        .O(\Dout[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAEFAAAAAAEAAAAAA)) 
    \Dout[6]_i_2 
       (.I0(\Dout[6]_i_4_n_0 ),
        .I1(\msr_reg_n_0_[6] ),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(lsr_reg),
        .O(\Dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[6]_i_3 
       (.I0(\iir_reg_n_0_[7] ),
        .I1(\Lcr_reg_n_0_[6] ),
        .I2(\Dout[7]_i_8_n_0 ),
        .I3(data3[6]),
        .I4(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I5(L[0]),
        .O(\Dout[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[6]_i_4 
       (.I0(\Dout[3]_i_3_n_0 ),
        .I1(clockDiv[6]),
        .I2(clockDiv[14]),
        .I3(\Dout[2]_i_3_n_0 ),
        .I4(scr[6]),
        .I5(\Dout[5]_i_4_n_0 ),
        .O(\Dout[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Dout[7]_i_1 
       (.I0(rd_d),
        .I1(chipSelect),
        .O(readStrobe));
  LUT6 #(
    .INIT(64'hAEFAAAAAAEAAAAAA)) 
    \Dout[7]_i_3 
       (.I0(\Dout[7]_i_7_n_0 ),
        .I1(\msr_reg_n_0_[7] ),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(\lsr_reg_n_0_[7] ),
        .O(\Dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAE0C0CFF0C0C0C)) 
    \Dout[7]_i_4 
       (.I0(data3[7]),
        .I1(\Lcr_reg_n_0_[7] ),
        .I2(\Dout[7]_i_8_n_0 ),
        .I3(\iir_reg_n_0_[7] ),
        .I4(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I5(L[0]),
        .O(\Dout[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \Dout[7]_i_5 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[0]),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\Dout[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Dout[7]_i_6 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(L[2]),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[0]),
        .O(\Dout[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[7]_i_7 
       (.I0(\Dout[3]_i_3_n_0 ),
        .I1(clockDiv[7]),
        .I2(scr[7]),
        .I3(\Dout[5]_i_4_n_0 ),
        .I4(clockDiv[15]),
        .I5(\Dout[2]_i_3_n_0 ),
        .O(\Dout[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \Dout[7]_i_8 
       (.I0(L[2]),
        .I1(L[1]),
        .I2(L[3]),
        .O(\Dout[7]_i_8_n_0 ));
  FDRE \Dout_reg[0] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_13 ),
        .Q(Q[0]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[1] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_21),
        .Q(Q[1]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[2] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(rx16550_1_n_20),
        .Q(Q[2]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[3] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_12 ),
        .Q(Q[3]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[4] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_11 ),
        .Q(Q[4]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[5] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_10 ),
        .Q(Q[5]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[6] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_9 ),
        .Q(Q[6]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[7] 
       (.C(s_axi_aclk),
        .CE(readStrobe),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_8 ),
        .Q(Q[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GENERATING_FIFOS.fcr[0]_i_1 
       (.I0(\d_d_reg_n_0_[0] ),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\lsr[2]_i_3_n_0 ),
        .I5(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\GENERATING_FIFOS.fcr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GENERATING_FIFOS.fcr[1]_i_1 
       (.I0(\d_d_reg_n_0_[1] ),
        .I1(fcr1),
        .I2(bus2ip_reset_int_core),
        .O(\GENERATING_FIFOS.fcr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GENERATING_FIFOS.fcr[2]_i_1 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(fcr1),
        .I2(bus2ip_reset_int_core),
        .O(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GENERATING_FIFOS.fcr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(fcr1),
        .I2(data3[3]),
        .O(\GENERATING_FIFOS.fcr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GENERATING_FIFOS.fcr[6]_i_1 
       (.I0(p_2_in[5]),
        .I1(fcr1),
        .I2(data3[6]),
        .O(\GENERATING_FIFOS.fcr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GENERATING_FIFOS.fcr[7]_i_1 
       (.I0(p_2_in[6]),
        .I1(fcr1),
        .I2(data3[7]),
        .O(\GENERATING_FIFOS.fcr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \GENERATING_FIFOS.fcr[7]_i_2 
       (.I0(fcr_0_prev),
        .I1(chipSelect),
        .I2(wr_d),
        .I3(L[3]),
        .I4(L[2]),
        .I5(L[1]),
        .O(fcr1));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \GENERATING_FIFOS.fcr_0_prev_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\lsr[2]_i_3_n_0 ),
        .I5(fcr_0_prev),
        .O(\GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.fcr_0_prev_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ),
        .Q(fcr_0_prev),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[0]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[1]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \GENERATING_FIFOS.fcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \GENERATING_FIFOS.fcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[3]_i_1_n_0 ),
        .Q(data3[3]),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[6]_i_1_n_0 ),
        .Q(data3[6]),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[7]_i_1_n_0 ),
        .Q(data3[7]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hE9696969)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1 
       (.I0(rx_error_in_fifo_cnt_up),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hBFFCC003)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(rx_error_in_fifo_cnt_up),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE2AAAAAAA)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2 
       (.I0(rx_error_in_fifo_cnt_up),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I5(rx_error_in_fifo_cnt_dn),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hF8F0F0E1)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3 
       (.I0(rx_error_in_fifo_cnt_up),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I4(\lsr[2]_i_4_n_0 ),
        .I5(readStrobe),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_error_in_fifo_cnt_dn0),
        .Q(rx_error_in_fifo_cnt_dn),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .R(SR));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .R(SR));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .R(SR));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .R(SR));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_up_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_error_in_fifo),
        .Q(rx_error_in_fifo_cnt_up),
        .R(bus2ip_reset_int_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_block \GENERATING_FIFOS.rx_fifo_block_1 
       (.D({\GENERATING_FIFOS.rx_fifo_block_1_n_8 ,\GENERATING_FIFOS.rx_fifo_block_1_n_9 ,\GENERATING_FIFOS.rx_fifo_block_1_n_10 ,\GENERATING_FIFOS.rx_fifo_block_1_n_11 ,\GENERATING_FIFOS.rx_fifo_block_1_n_12 ,\GENERATING_FIFOS.rx_fifo_block_1_n_13 }),
        .\Dout_reg[0] (\Dout[0]_i_2_n_0 ),
        .\Dout_reg[0]_0 (\Dout[2]_i_3_n_0 ),
        .\Dout_reg[0]_1 (\Dout[0]_i_3_n_0 ),
        .\Dout_reg[0]_2 (\Dout[0]_i_4_n_0 ),
        .\Dout_reg[0]_3 (\Dout[3]_i_7_n_0 ),
        .\Dout_reg[3] (ier),
        .\Dout_reg[3]_0 (\Dout[3]_i_2_n_0 ),
        .\Dout_reg[3]_1 (\Dout[3]_i_3_n_0 ),
        .\Dout_reg[3]_2 (\Dout[3]_i_4_n_0 ),
        .\Dout_reg[3]_3 (\Dout[3]_i_5_n_0 ),
        .\Dout_reg[4] (\Dout[4]_i_2_n_0 ),
        .\Dout_reg[5] (\Dout[5]_i_2_n_0 ),
        .\Dout_reg[5]_0 (\Dout[5]_i_3_n_0 ),
        .\Dout_reg[6] (\Dout[7]_i_6_n_0 ),
        .\Dout_reg[6]_0 (\Dout[6]_i_2_n_0 ),
        .\Dout_reg[6]_1 (\Dout[6]_i_3_n_0 ),
        .\Dout_reg[6]_2 (\Dout[7]_i_5_n_0 ),
        .\Dout_reg[7] ({Rbr[7:3],Rbr[0]}),
        .\Dout_reg[7]_0 (\Dout[7]_i_3_n_0 ),
        .\Dout_reg[7]_1 (\Dout[7]_i_4_n_0 ),
        .\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ),
        .\INFERRED_GEN.cnt_i_reg[0] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\INFERRED_GEN.cnt_i_reg[1] (rx16550_1_n_17),
        .\INFERRED_GEN.cnt_i_reg[4] (\GENERATING_FIFOS.rx_fifo_block_1_n_18 ),
        .Q(rx_fifo_empty),
        .Rx_error_in_fifo(Rx_error_in_fifo),
        .Rx_error_in_fifo0(\rx_fifo_control_1/Rx_error_in_fifo0 ),
        .SR(\rx_fifo_control_1/character_counter_rst ),
        .SS(SS),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .\character_counter_reg[9] (\GENERATING_FIFOS.rx_fifo_block_1_n_3 ),
        .character_received(character_received),
        .chipSelect(chipSelect),
        .clockDiv({clockDiv[8],clockDiv[3]}),
        .data3(data3[7:6]),
        .have_bi_in_fifo_n(have_bi_in_fifo_n),
        .\iir_reg[0] (\iir[0]_i_2_n_0 ),
        .\iir_reg[2] (\lsr_reg_n_0_[1] ),
        .\iir_reg[3] (\iir[3]_i_4_n_0 ),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(\lsr[1]_i_4_n_0 ),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .\lsr_reg[0] (\GENERATING_FIFOS.rx_fifo_block_1_n_17 ),
        .\lsr_reg[2] (\GENERATING_FIFOS.rx_fifo_block_1_n_21 ),
        .\lsr_reg[2]_0 (p_5_in),
        .out(rx_fifo_data_out),
        .p_0_in37_in(p_0_in37_in),
        .p_1_in38_in(p_1_in38_in),
        .p_2_in39_in(p_2_in39_in),
        .rclk_d3(rclk_d3),
        .rd_d(rd_d),
        .rx_error_in_fifo_cnt_dn0(rx_error_in_fifo_cnt_dn0),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .rxrdyN_int_reg(\lsr_reg_n_0_[0] ),
        .rxrdyN_int_reg_0(rxrdyN_int_i_2_n_0),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .thre_iir_set(thre_iir_set),
        .thre_iir_set_reg(\GENERATING_FIFOS.rx_fifo_block_1_n_4 ),
        .thre_iir_set_reg_0(\GENERATING_FIFOS.rx_fifo_block_1_n_19 ),
        .thre_iir_set_reg_1(\GENERATING_FIFOS.rx_fifo_block_1_n_20 ),
        .thre_iir_set_reg_2(thre_iir_set_i_2_n_0),
        .thre_iir_set_reg_3(thre_iir_set_i_3_n_0),
        .thre_iir_set_reg_4(thre_iir_set_reg_0),
        .thre_iir_set_reg_5(\iir[3]_i_5_n_0 ),
        .thre_iir_set_reg_6(\iir[3]_i_6_n_0 ),
        .thre_iir_set_reg_7(\iir[3]_i_8_n_0 ),
        .thre_iir_set_reg_8(\iir[3]_i_9_n_0 ),
        .wr_d(wr_d),
        .writing_thr(writing_thr));
  FDRE \GENERATING_FIFOS.rx_fifo_rd_en_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_rd_en_d),
        .Q(rx_fifo_rd_en_d1),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \GENERATING_FIFOS.rx_fifo_rd_en_d_i_1 
       (.I0(readStrobe),
        .I1(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I2(L[0]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(L[2]),
        .O(p_71_in));
  FDRE \GENERATING_FIFOS.rx_fifo_rd_en_d_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_71_in),
        .Q(rx_fifo_rd_en_d),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAEAAA)) 
    \GENERATING_FIFOS.rx_fifo_rst_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .I1(\lsr[2]_i_3_n_0 ),
        .I2(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I3(fcr_0_prev),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I5(bus2ip_reset_int_core),
        .O(rx_fifo_rst0));
  FDRE \GENERATING_FIFOS.rx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_rst0),
        .Q(SS),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_fifo_block \GENERATING_FIFOS.tx_fifo_block_1 
       (.FIFO_Full_reg(\GENERATING_FIFOS.tx_fifo_block_1_n_1 ),
        .FIFO_Full_reg_0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\GENERATING_FIFOS.fcr_reg[0] (\GENERATING_FIFOS.tx_fifo_block_1_n_2 ),
        .\GENERATING_FIFOS.fcr_reg[0]_0 (\GENERATING_FIFOS.tx_fifo_block_1_n_9 ),
        .Q(tx_fifo_empty),
        .SS(tx_fifo_rst),
        .data3(data3[3]),
        .out({tx_fifo_data_out[7],tx_fifo_data_out[5:3],tx_fifo_data_out[1:0]}),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[2] (transmit_state),
        .\tsr_reg[6] ({tsr_int[6],tsr_int[2]}),
        .\tsr_reg[7] (Thr),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d),
        .txrdyN_int_reg(\lsr_reg[5]_0 ),
        .txrdyn(txrdyn));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAEAAA)) 
    \GENERATING_FIFOS.tx_fifo_rst_i_1 
       (.I0(p_0_in1_in),
        .I1(\lsr[2]_i_3_n_0 ),
        .I2(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ),
        .I3(fcr_0_prev),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I5(bus2ip_reset_int_core),
        .O(tx_fifo_rst0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GENERATING_FIFOS.tx_fifo_rst_i_2 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .O(\GENERATING_FIFOS.tx_fifo_rst_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_rst0),
        .Q(tx_fifo_rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \GENERATING_FIFOS.tx_fifo_wr_en_d_i_1 
       (.I0(\lsr[2]_i_3_n_0 ),
        .I1(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I2(L[0]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(L[2]),
        .O(tx_fifo_wr_en));
  FDRE \GENERATING_FIFOS.tx_fifo_wr_en_d_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_wr_en),
        .Q(tx_fifo_wr_en_d),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Intr_i_1
       (.I0(\iir_reg_n_0_[0] ),
        .I1(freeze),
        .O(Intr0));
  FDRE Intr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr0),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Lcr[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .O(Lcr0));
  FDSE \Lcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\Lcr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \Lcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(\Lcr_reg_n_0_[1] ),
        .S(bus2ip_reset_int_core));
  FDRE \Lcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\Lcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(p_5_in),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_3_in),
        .Q(\Lcr_reg_n_0_[4] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(\Lcr_reg_n_0_[5] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_2_in[5]),
        .Q(\Lcr_reg_n_0_[6] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_2_in[6]),
        .Q(\Lcr_reg_n_0_[7] ),
        .R(bus2ip_reset_int_core));
  FDSE \Thr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(Thr[0]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(Thr[1]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(Thr[2]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(Thr[3]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_3_in),
        .Q(Thr[4]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(Thr[5]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_2_in[5]),
        .Q(Thr[6]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_2_in[6]),
        .Q(Thr[7]),
        .S(bus2ip_reset_int_core));
  FDRE \addr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [0]),
        .Q(L[3]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [1]),
        .Q(L[2]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [2]),
        .Q(L[1]),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'hE0F1)) 
    \baudCounter[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[0]),
        .I3(baudCounter[0]),
        .O(\baudCounter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[10]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[10]),
        .I3(minusOp[10]),
        .O(\baudCounter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[11]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[11]),
        .I3(minusOp[11]),
        .O(\baudCounter[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[12]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[12]),
        .I3(minusOp[12]),
        .O(\baudCounter[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[13]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[13]),
        .I3(minusOp[13]),
        .O(\baudCounter[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[14]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[14]),
        .I3(minusOp[14]),
        .O(\baudCounter[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[15]_i_2 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[15]),
        .I3(minusOp[15]),
        .O(\baudCounter[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \baudCounter[15]_i_3 
       (.I0(divisor_latch_loaded),
        .I1(\baudCounter[15]_i_4_n_0 ),
        .I2(\baudCounter[15]_i_5_n_0 ),
        .I3(\baudCounter[15]_i_6_n_0 ),
        .I4(\baudCounter[15]_i_7_n_0 ),
        .O(baudCounter1));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \baudCounter[15]_i_4 
       (.I0(baudCounter[10]),
        .I1(baudCounter[9]),
        .I2(baudCounter[15]),
        .I3(baudCounter[12]),
        .O(\baudCounter[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \baudCounter[15]_i_5 
       (.I0(baudCounter[4]),
        .I1(baudCounter[8]),
        .I2(baudCounter[14]),
        .I3(baudCounter[11]),
        .O(\baudCounter[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \baudCounter[15]_i_6 
       (.I0(baudCounter[6]),
        .I1(baudCounter[0]),
        .I2(baudCounter[5]),
        .I3(baudCounter[13]),
        .O(\baudCounter[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \baudCounter[15]_i_7 
       (.I0(baudCounter[1]),
        .I1(baudCounter[2]),
        .I2(baudCounter[3]),
        .I3(baudCounter[7]),
        .O(\baudCounter[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[1]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[1]),
        .I3(minusOp[1]),
        .O(\baudCounter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[2]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[2]),
        .I3(minusOp[2]),
        .O(\baudCounter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[3]),
        .I3(minusOp[3]),
        .O(\baudCounter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[4]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[4]),
        .I3(minusOp[4]),
        .O(\baudCounter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[5]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[5]),
        .I3(minusOp[5]),
        .O(\baudCounter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[6]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[6]),
        .I3(minusOp[6]),
        .O(\baudCounter[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[7]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[7]),
        .I3(minusOp[7]),
        .O(\baudCounter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[8]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[8]),
        .I3(minusOp[8]),
        .O(\baudCounter[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[9]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[9]),
        .I3(minusOp[9]),
        .O(\baudCounter[9]_i_1_n_0 ));
  FDRE \baudCounter_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[0]_i_1_n_0 ),
        .Q(baudCounter[0]),
        .R(1'b0));
  FDRE \baudCounter_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[10]_i_1_n_0 ),
        .Q(baudCounter[10]),
        .R(1'b0));
  FDRE \baudCounter_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[11]_i_1_n_0 ),
        .Q(baudCounter[11]),
        .R(1'b0));
  FDRE \baudCounter_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[12]_i_1_n_0 ),
        .Q(baudCounter[12]),
        .R(1'b0));
  FDRE \baudCounter_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[13]_i_1_n_0 ),
        .Q(baudCounter[13]),
        .R(1'b0));
  FDRE \baudCounter_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[14]_i_1_n_0 ),
        .Q(baudCounter[14]),
        .R(1'b0));
  FDRE \baudCounter_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[15]_i_2_n_0 ),
        .Q(baudCounter[15]),
        .R(1'b0));
  FDRE \baudCounter_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[1]_i_1_n_0 ),
        .Q(baudCounter[1]),
        .R(1'b0));
  FDRE \baudCounter_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[2]_i_1_n_0 ),
        .Q(baudCounter[2]),
        .R(1'b0));
  FDRE \baudCounter_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[3]_i_1_n_0 ),
        .Q(baudCounter[3]),
        .R(1'b0));
  FDRE \baudCounter_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[4]_i_1_n_0 ),
        .Q(baudCounter[4]),
        .R(1'b0));
  FDRE \baudCounter_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[5]_i_1_n_0 ),
        .Q(baudCounter[5]),
        .R(1'b0));
  FDRE \baudCounter_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[6]_i_1_n_0 ),
        .Q(baudCounter[6]),
        .R(1'b0));
  FDRE \baudCounter_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[7]_i_1_n_0 ),
        .Q(baudCounter[7]),
        .R(1'b0));
  FDRE \baudCounter_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[8]_i_1_n_0 ),
        .Q(baudCounter[8]),
        .R(1'b0));
  FDRE \baudCounter_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\baudCounter[9]_i_1_n_0 ),
        .Q(baudCounter[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF00E0)) 
    baud_counter_loaded_i_1
       (.I0(divisor_latch_loaded),
        .I1(\baudCounter_reg[6]_0 ),
        .I2(baudoutn),
        .I3(xin_d3),
        .I4(baud_counter_loaded),
        .O(baud_counter_loaded_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    baud_counter_loaded_i_2
       (.I0(\baudCounter[15]_i_7_n_0 ),
        .I1(baudCounter[6]),
        .I2(baudCounter[0]),
        .I3(baudCounter[5]),
        .I4(baudCounter[13]),
        .I5(baud_counter_loaded_i_3_n_0),
        .O(\baudCounter_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    baud_counter_loaded_i_3
       (.I0(baudCounter[12]),
        .I1(baudCounter[15]),
        .I2(baudCounter[9]),
        .I3(baudCounter[10]),
        .I4(\baudCounter[15]_i_5_n_0 ),
        .O(baud_counter_loaded_i_3_n_0));
  FDRE baud_counter_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baud_counter_loaded_i_1_n_0),
        .Q(baud_counter_loaded),
        .R(bus2ip_reset_int_core));
  FDRE baudoutN_int_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudoutN_int_i_reg_1),
        .Q(baudoutN_int_i),
        .R(1'b0));
  FDRE chipSelect_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ce_out_i),
        .Q(chipSelect),
        .R(bus2ip_reset_int_core));
  FDRE ctsN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctsn),
        .Q(ctsN_d),
        .R(1'b0));
  FDRE \d_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[0]),
        .Q(\d_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \d_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[1]),
        .Q(\d_d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \d_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[2]),
        .Q(\d_d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \d_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[3]),
        .Q(\d_d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \d_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[4]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \d_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[5]),
        .Q(\d_d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \d_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[6]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \d_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[7]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE dcdN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dcdn),
        .Q(dcdN_d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005554)) 
    divisor_latch_loaded_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(load_baudupper),
        .I2(load_baudlower),
        .I3(divisor_latch_loaded),
        .I4(baud_counter_loaded),
        .O(divisor_latch_loaded_i_1_n_0));
  FDRE divisor_latch_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(divisor_latch_loaded_i_1_n_0),
        .Q(divisor_latch_loaded),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    dlab_i_1
       (.I0(L[0]),
        .I1(\lsr[2]_i_3_n_0 ),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(\Lcr_reg_n_0_[7] ),
        .O(dlab_i_1_n_0));
  FDRE dlab_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlab_i_1_n_0),
        .Q(L[0]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \dll[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[0]),
        .I4(L[2]),
        .I5(L[3]),
        .O(dll0));
  FDRE \dll_reg[0] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[0]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[1] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[1]),
        .S(bus2ip_reset_int_core));
  FDSE \dll_reg[2] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[2]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[3] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[3]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[4] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_3_in),
        .Q(clockDiv[4]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[5] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[5]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[6] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_2_in[5]),
        .Q(clockDiv[6]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[7] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_2_in[6]),
        .Q(clockDiv[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \dlm[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[0]),
        .I4(L[2]),
        .I5(L[3]),
        .O(dlm0));
  FDRE \dlm_reg[0] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[8]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[1] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[9]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[2] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[10]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[3] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[11]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[4] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_3_in),
        .Q(clockDiv[12]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[5] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[13]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[6] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_2_in[5]),
        .Q(clockDiv[14]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[7] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_2_in[6]),
        .Q(clockDiv[15]),
        .R(bus2ip_reset_int_core));
  FDRE dsrN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dsrn),
        .Q(dsrN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dtrn_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[0] ),
        .O(dtrn));
  FDRE ier1_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ier[1]),
        .Q(ier1_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \ier[3]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[1]),
        .I5(L[0]),
        .O(ier1));
  FDRE \ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[0] ),
        .Q(ier[0]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[1] ),
        .Q(ier[1]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[2] ),
        .Q(ier[2]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[3] ),
        .Q(ier[3]),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \iir[0]_i_2 
       (.I0(ier[3]),
        .I1(\msr_reg_n_0_[0] ),
        .I2(p_0_in32_in),
        .I3(p_0_in33_in),
        .I4(p_0_in34_in),
        .O(\iir[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \iir[3]_i_10 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .O(\iir[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \iir[3]_i_4 
       (.I0(ier[2]),
        .I1(p_2_in39_in),
        .I2(p_1_in38_in),
        .I3(\lsr_reg_n_0_[1] ),
        .I4(p_0_in37_in),
        .O(\iir[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \iir[3]_i_5 
       (.I0(\Dout[7]_i_5_n_0 ),
        .I1(readStrobe),
        .I2(\iir_reg_n_0_[1] ),
        .I3(\iir_reg_n_0_[2] ),
        .I4(\iir_reg_n_0_[0] ),
        .I5(\iir_reg_n_0_[3] ),
        .O(\iir[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0050000001010000)) 
    \iir[3]_i_6 
       (.I0(\iir[3]_i_9_n_0 ),
        .I1(\iir[3]_i_10_n_0 ),
        .I2(\iir_reg_n_0_[2] ),
        .I3(\lsr[2]_i_4_n_0 ),
        .I4(readStrobe),
        .I5(\iir_reg_n_0_[1] ),
        .O(\iir[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iir[3]_i_8 
       (.I0(\iir_reg_n_0_[1] ),
        .I1(\iir_reg_n_0_[2] ),
        .O(\iir[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iir[3]_i_9 
       (.I0(\iir_reg_n_0_[3] ),
        .I1(\iir_reg_n_0_[0] ),
        .O(\iir[3]_i_9_n_0 ));
  FDRE \iir_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_19 ),
        .Q(\iir_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \iir_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_20 ),
        .Q(\iir_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \iir_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_21 ),
        .Q(\iir_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \iir_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_3 ),
        .Q(\iir_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \iir_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .Q(\iir_reg_n_0_[7] ),
        .R(1'b0));
  FDRE load_baudlower_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dll0),
        .Q(load_baudlower),
        .R(1'b0));
  FDRE load_baudupper_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlm0),
        .Q(load_baudupper),
        .R(1'b0));
  FDRE lsr2_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_18 ),
        .Q(lsr2_rst),
        .R(bus2ip_reset_int_core));
  FDRE lsr5_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr_reg[5]_0 ),
        .Q(lsr5_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \lsr[1]_i_3 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[3]),
        .I4(L[2]),
        .O(lsr_reg0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \lsr[1]_i_4 
       (.I0(chipSelect),
        .I1(rd_d),
        .I2(L[1]),
        .I3(L[3]),
        .I4(L[2]),
        .O(\lsr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEFEEECE)) 
    \lsr[2]_i_1 
       (.I0(p_0_in37_in),
        .I1(lsr2_set),
        .I2(\lsr[2]_i_3_n_0 ),
        .I3(\lsr[2]_i_4_n_0 ),
        .I4(\d_d_reg_n_0_[2] ),
        .I5(lsr_reg014_out),
        .O(\lsr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lsr[2]_i_3 
       (.I0(chipSelect),
        .I1(wr_d),
        .O(\lsr[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \lsr[2]_i_4 
       (.I0(L[2]),
        .I1(L[3]),
        .I2(L[1]),
        .O(\lsr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEAAA)) 
    \lsr[2]_i_5 
       (.I0(lsr2_rst),
        .I1(readStrobe),
        .I2(L[1]),
        .I3(L[3]),
        .I4(L[2]),
        .I5(bus2ip_reset_int_core),
        .O(lsr_reg014_out));
  LUT6 #(
    .INIT(64'h00000000EEFEEECE)) 
    \lsr[3]_i_1 
       (.I0(p_1_in38_in),
        .I1(lsr3_set),
        .I2(\lsr[2]_i_3_n_0 ),
        .I3(\lsr[2]_i_4_n_0 ),
        .I4(\d_d_reg_n_0_[3] ),
        .I5(lsr_reg014_out),
        .O(\lsr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEFEEECE)) 
    \lsr[4]_i_1 
       (.I0(p_2_in39_in),
        .I1(lsr4_set),
        .I2(\lsr[2]_i_3_n_0 ),
        .I3(\lsr[2]_i_4_n_0 ),
        .I4(p_3_in),
        .I5(lsr_reg014_out),
        .O(\lsr[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \lsr[7]_i_1 
       (.I0(lsr7_set),
        .I1(bus2ip_reset_int_core),
        .O(\lsr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \lsr[7]_i_2 
       (.I0(\lsr[1]_i_4_n_0 ),
        .I1(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I5(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(lsr7_set));
  FDRE \lsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx16550_1_n_13),
        .Q(\lsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx16550_1_n_14),
        .Q(\lsr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[2]_i_1_n_0 ),
        .Q(p_0_in37_in),
        .R(1'b0));
  FDRE \lsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[3]_i_1_n_0 ),
        .Q(p_1_in38_in),
        .R(1'b0));
  FDRE \lsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[4]_i_1_n_0 ),
        .Q(p_2_in39_in),
        .R(1'b0));
  FDRE \lsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_10),
        .Q(\lsr_reg[5]_0 ),
        .R(1'b0));
  FDRE \lsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_0),
        .Q(lsr_reg),
        .R(1'b0));
  FDRE \lsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[7]_i_1_n_0 ),
        .Q(\lsr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE mcr4_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in8_in),
        .Q(mcr4_d),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mcr[4]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .O(mcr0));
  FDRE \mcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\mcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(p_0_in),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\mcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(\mcr_reg_n_0_[3] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(p_3_in),
        .Q(p_0_in8_in),
        .R(bus2ip_reset_int_core));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(baudCounter[0]),
        .DI(baudCounter[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(baudCounter[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(baudCounter[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(baudCounter[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(baudCounter[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(baudCounter[5]),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(baudCounter[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(baudCounter[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(baudCounter[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(baudCounter[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(baudCounter[9]),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,baudCounter[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp[15:13]}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(baudCounter[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(baudCounter[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(baudCounter[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(baudCounter[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(baudCounter[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(baudCounter[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(baudCounter[1]),
        .O(minusOp_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[0]_i_1 
       (.I0(ctsN_d),
        .I1(bus2ip_reset_int_core),
        .I2(msr_reg),
        .O(\modem_prev_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[1]_i_1 
       (.I0(dsrN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[5] ),
        .O(\modem_prev_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[2]_i_1 
       (.I0(riN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[6] ),
        .O(\modem_prev_val[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[3]_i_1 
       (.I0(dcdN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[7] ),
        .O(\modem_prev_val[3]_i_1_n_0 ));
  FDRE \modem_prev_val_reg[0] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[0]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[1] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[1]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[2] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[2]_i_1_n_0 ),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \modem_prev_val_reg[3] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[3]_i_1_n_0 ),
        .Q(p_1_in6_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \msr[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(rd_d),
        .I5(chipSelect),
        .O(msr_reg0));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[0]_i_2 
       (.I0(\d_d_reg_n_0_[0] ),
        .I1(msr1),
        .I2(\msr_reg_n_0_[0] ),
        .I3(msr_reg),
        .I4(\modem_prev_val_reg_n_0_[0] ),
        .O(\msr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \msr[0]_i_3 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .O(msr1));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[1]_i_1 
       (.I0(\d_d_reg_n_0_[1] ),
        .I1(msr1),
        .I2(p_0_in32_in),
        .I3(\msr_reg_n_0_[5] ),
        .I4(\modem_prev_val_reg_n_0_[1] ),
        .O(\msr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[2]_i_1 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(msr1),
        .I2(p_0_in33_in),
        .I3(\msr_reg_n_0_[6] ),
        .I4(p_1_in3_in),
        .O(\msr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(msr1),
        .I2(p_0_in34_in),
        .I3(\msr_reg_n_0_[7] ),
        .I4(p_1_in6_in),
        .O(\msr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555555CFC5C0C5)) 
    \msr[4]_i_1 
       (.I0(ctsN_d),
        .I1(p_3_in),
        .I2(msr1),
        .I3(p_0_in8_in),
        .I4(p_0_in),
        .I5(bus2ip_reset_int_core),
        .O(\msr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777723322227233)) 
    \msr[5]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(dsrN_d),
        .I2(\mcr_reg_n_0_[0] ),
        .I3(p_0_in8_in),
        .I4(msr1),
        .I5(\d_d_reg_n_0_[5] ),
        .O(\msr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777723322227233)) 
    \msr[6]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(riN_d),
        .I2(\mcr_reg_n_0_[2] ),
        .I3(p_0_in8_in),
        .I4(msr1),
        .I5(\d_d_reg_n_0_[5] ),
        .O(\msr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777723322227233)) 
    \msr[7]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(dcdN_d),
        .I2(\mcr_reg_n_0_[3] ),
        .I3(p_0_in8_in),
        .I4(msr1),
        .I5(\d_d_reg_n_0_[5] ),
        .O(\msr[7]_i_1_n_0 ));
  FDRE \msr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[0]_i_2_n_0 ),
        .Q(\msr_reg_n_0_[0] ),
        .R(msr_reg0));
  FDRE \msr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[1]_i_1_n_0 ),
        .Q(p_0_in32_in),
        .R(msr_reg0));
  FDRE \msr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[2]_i_1_n_0 ),
        .Q(p_0_in33_in),
        .R(msr_reg0));
  FDRE \msr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[3]_i_1_n_0 ),
        .Q(p_0_in34_in),
        .R(msr_reg0));
  FDRE \msr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[4]_i_1_n_0 ),
        .Q(msr_reg),
        .R(1'b0));
  FDRE \msr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[5]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \msr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[6]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \msr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[7]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out1n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[2] ),
        .O(out1n));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out2n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[3] ),
        .O(out2n));
  FDRE rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rd),
        .Q(rd_d),
        .R(1'b0));
  FDRE riN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rin),
        .Q(riN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rtsn_INST_0
       (.I0(p_0_in8_in),
        .I1(p_0_in),
        .O(rtsn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx16550 rx16550_1
       (.D({rx16550_1_n_20,rx16550_1_n_21}),
        .Data_ready_reg_0(rx16550_1_n_17),
        .\Dout_reg[1] (\Dout[1]_i_2_n_0 ),
        .\Dout_reg[1]_0 (\Dout[3]_i_3_n_0 ),
        .\Dout_reg[1]_1 (\Dout[1]_i_3_n_0 ),
        .\Dout_reg[1]_2 (\Dout[1]_i_4_n_0 ),
        .\Dout_reg[1]_3 (\Dout[3]_i_7_n_0 ),
        .\Dout_reg[1]_4 (\Dout[7]_i_5_n_0 ),
        .\Dout_reg[2] (\Dout[2]_i_2_n_0 ),
        .\Dout_reg[2]_0 (\Dout[2]_i_3_n_0 ),
        .\Dout_reg[2]_1 (\Dout[2]_i_4_n_0 ),
        .\Dout_reg[2]_2 (\Dout[2]_i_5_n_0 ),
        .\Dout_reg[2]_3 (ier[2:1]),
        .\Lcr_reg[0] (rx16550_1_n_15),
        .Q(rx_fifo_empty),
        .\Rbr_reg[7]_0 ({Rbr[7:3],Rbr[0]}),
        .Rx_error_in_fifo0(\rx_fifo_control_1/Rx_error_in_fifo0 ),
        .SR(\rx_fifo_control_1/character_counter_rst ),
        .SS(SS),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .character_received(character_received),
        .clockDiv({clockDiv[10],clockDiv[1]}),
        .have_bi_in_fifo_n(have_bi_in_fifo_n),
        .lsr_reg0(lsr_reg0),
        .\lsr_reg[0] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\lsr_reg[0]_0 (\Dout[7]_i_6_n_0 ),
        .\lsr_reg[0]_1 (\lsr_reg_n_0_[0] ),
        .\lsr_reg[1] (rx16550_1_n_14),
        .\lsr_reg[1]_0 (\lsr_reg_n_0_[1] ),
        .\lsr_reg[1]_1 ({\d_d_reg_n_0_[1] ,\d_d_reg_n_0_[0] }),
        .\lsr_reg[1]_2 (\lsr[1]_i_4_n_0 ),
        .mcr4_d(mcr4_d),
        .out(rx_fifo_data_out),
        .parity_error_d_reg_0({\Lcr_reg_n_0_[5] ,\Lcr_reg_n_0_[4] ,p_5_in,\Lcr_reg_n_0_[2] ,\Lcr_reg_n_0_[1] ,\Lcr_reg_n_0_[0] }),
        .rclk_d3(rclk_d3),
        .readStrobe(readStrobe),
        .resynch_clkdiv_frame_d_reg_0(p_0_in8_in),
        .rst_reg(rx16550_1_n_13),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(scndry_out),
        .sin_d1_reg_0(sin_d1_reg));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    rxrdyN_int_i_2
       (.I0(data3[3]),
        .I1(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I2(rxrdyn),
        .O(rxrdyN_int_i_2_n_0));
  FDSE rxrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_17 ),
        .Q(rxrdyn),
        .S(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h80000000)) 
    \scr[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .O(scr0));
  FDRE \scr_reg[0] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(scr[0]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[1] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(scr[1]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[2] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(scr[2]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[3] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(scr[3]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[4] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_3_in),
        .Q(scr[4]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[5] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(scr[5]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[6] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_2_in[5]),
        .Q(scr[6]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[7] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_2_in[6]),
        .Q(scr[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    thre_iir_set_i_2
       (.I0(thre_iir_set_i_5_n_0),
        .I1(\iir_reg_n_0_[1] ),
        .I2(\iir_reg_n_0_[2] ),
        .I3(\iir_reg_n_0_[0] ),
        .I4(\iir_reg_n_0_[3] ),
        .I5(readStrobe),
        .O(thre_iir_set_i_2_n_0));
  LUT3 #(
    .INIT(8'h5D)) 
    thre_iir_set_i_3
       (.I0(lsr5_d),
        .I1(ier[1]),
        .I2(ier1_d),
        .O(thre_iir_set_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    thre_iir_set_i_5
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .O(thre_iir_set_i_5_n_0));
  FDRE thre_iir_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_4 ),
        .Q(thre_iir_set),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx16550 tx16550_1
       (.\FSM_sequential_transmit_state_reg[0]_0 (xuart_tx_load_sm_1_n_1),
        .\FSM_sequential_transmit_state_reg[3]_0 (rx16550_1_n_15),
        .Q(transmit_state),
        .Sout_reg_0({\Lcr_reg_n_0_[6] ,\Lcr_reg_n_0_[5] ,\Lcr_reg_n_0_[4] ,p_5_in,\Lcr_reg_n_0_[2] ,\Lcr_reg_n_0_[1] ,\Lcr_reg_n_0_[0] }),
        .baudoutN_int_i(baudoutN_int_i),
        .baudoutN_int_i_reg(baudoutN_int_i_reg_0),
        .baudoutn(baudoutn),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .clockDiv(clockDiv),
        .freeze(freeze),
        .out(tx_fifo_data_out[7]),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk),
        .sin(sin),
        .sout(sout),
        .sout_0(p_0_in8_in),
        .tsr_loaded(tsr_loaded),
        .\tsr_reg[0]_0 (xuart_tx_load_sm_1_n_2),
        .\tsr_reg[1]_0 (xuart_tx_load_sm_1_n_6),
        .\tsr_reg[2]_0 (\GENERATING_FIFOS.tx_fifo_block_1_n_2 ),
        .\tsr_reg[3]_0 (xuart_tx_load_sm_1_n_7),
        .\tsr_reg[4]_0 (xuart_tx_load_sm_1_n_8),
        .\tsr_reg[5]_0 (xuart_tx_load_sm_1_n_9),
        .\tsr_reg[6]_0 (\GENERATING_FIFOS.tx_fifo_block_1_n_9 ),
        .\tsr_reg[7]_0 (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\tsr_reg[7]_1 (tsr_int[7]),
        .tx_empty(tx_empty),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .xin_d3(xin_d3));
  FDRE txrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.tx_fifo_block_1_n_1 ),
        .Q(txrdyn),
        .R(bus2ip_reset_int_core));
  FDRE wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Wr),
        .Q(wr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    writing_thr_i_1
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[2]),
        .I3(L[3]),
        .I4(L[1]),
        .I5(L[0]),
        .O(Thr0));
  FDRE writing_thr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Thr0),
        .Q(writing_thr),
        .R(bus2ip_reset_int_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart_tx_load_sm xuart_tx_load_sm_1
       (.Q({tsr_int[7:6],tsr_int[2]}),
        .Thre_reg_0(xuart_tx_load_sm_1_n_0),
        .Thre_reg_1(xuart_tx_load_sm_1_n_10),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .chipSelect(chipSelect),
        .freeze(freeze),
        .lsr_reg(lsr_reg),
        .\lsr_reg[5] (xuart_tx_load_sm_1_n_1),
        .\lsr_reg[5]_0 (tx_fifo_empty),
        .\lsr_reg[6] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\lsr_reg[6]_0 (\lsr_reg[5]_0 ),
        .\lsr_reg[6]_1 (p_2_in[5]),
        .\lsr_reg[6]_2 (\lsr[2]_i_4_n_0 ),
        .out({tx_fifo_data_out[5:3],tx_fifo_data_out[1:0]}),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_int_reg[0]_0 (xuart_tx_load_sm_1_n_2),
        .\tsr_int_reg[1]_0 (xuart_tx_load_sm_1_n_6),
        .\tsr_int_reg[3]_0 (xuart_tx_load_sm_1_n_7),
        .\tsr_int_reg[4]_0 (xuart_tx_load_sm_1_n_8),
        .\tsr_int_reg[5]_0 (xuart_tx_load_sm_1_n_9),
        .\tsr_int_reg[7]_0 (Thr),
        .tsr_loaded(tsr_loaded),
        .\tsr_reg[0] (transmit_state),
        .tx_empty(tx_empty),
        .wr_d(wr_d),
        .writing_thr(writing_thr));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart
   (rx_fifo_rst,
    p_2_in44_in,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    baudoutN_int_i_reg,
    xout,
    rtsn,
    dtrn,
    out1n,
    out2n,
    sout,
    Q,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    bus2ip_wrce_i,
    bus2ip_rdce_i,
    ce_out_i,
    thre_iir_set_reg,
    freeze,
    sin,
    rclk,
    xin,
    s_axi_wdata,
    \addr_d_reg[2] ,
    SR);
  output rx_fifo_rst;
  output p_2_in44_in;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output baudoutN_int_i_reg;
  output xout;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  output sout;
  output [7:0]Q;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input bus2ip_wrce_i;
  input bus2ip_rdce_i;
  input ce_out_i;
  input thre_iir_set_reg;
  input freeze;
  input sin;
  input rclk;
  input xin;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2] ;
  input [0:0]SR;

  wire \GENERATING_EXTERNAL_RCLK.RCLK_CDC_n_0 ;
  wire \GENERATING_EXTERNAL_XIN.XIN_CDC_n_2 ;
  wire \GENERATING_EXTERNAL_XIN.XIN_CDC_n_3 ;
  wire [7:0]Q;
  wire Rd;
  wire [0:0]SR;
  wire UART16550_I_1_n_7;
  wire Wr;
  wire [2:0]\addr_d_reg[2] ;
  wire baudoutN_int_i_reg;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire p_2_in44_in;
  wire rclk;
  wire rclk_d2;
  wire rclk_d3;
  wire rin;
  wire rtsn;
  wire rx_fifo_rst;
  wire rxrdyn;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [7:0]s_axi_wdata;
  wire sin;
  wire sout;
  wire thre_iir_set_reg;
  wire txrdyn;
  wire wrReq_d1;
  wire xin;
  wire xin_d2;
  wire xin_d3;
  wire xout;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \GENERATING_EXTERNAL_RCLK.RCLK_CDC 
       (.bus2ip_reset_int_core(bus2ip_reset_int_core),
        .rclk(rclk),
        .rclk_d3(rclk_d3),
        .rst_reg(\GENERATING_EXTERNAL_RCLK.RCLK_CDC_n_0 ),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(rclk_d2));
  FDRE \GENERATING_EXTERNAL_RCLK.rclk_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rclk_d2),
        .Q(rclk_d3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 \GENERATING_EXTERNAL_XIN.XIN_CDC 
       (.E(\GENERATING_EXTERNAL_XIN.XIN_CDC_n_2 ),
        .\GENERATING_EXTERNAL_XIN.xin_d3_reg (\GENERATING_EXTERNAL_XIN.XIN_CDC_n_3 ),
        .baudoutN_int_i_reg(UART16550_I_1_n_7),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .s_axi_aclk(s_axi_aclk),
        .scndry_out(xin_d2),
        .xin(xin),
        .xin_d3(xin_d3),
        .xout(xout));
  FDRE \GENERATING_EXTERNAL_XIN.xin_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xin_d2),
        .Q(xin_d3),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic_if IPIC_IF_I_1
       (.Rd(Rd),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .wrReq_d1(wrReq_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart16550 UART16550_I_1
       (.E(\GENERATING_EXTERNAL_XIN.XIN_CDC_n_2 ),
        .Q(Q),
        .Rd(Rd),
        .SR(SR),
        .SS(rx_fifo_rst),
        .Wr(Wr),
        .\addr_d_reg[2]_0 (\addr_d_reg[2] ),
        .\baudCounter_reg[6]_0 (UART16550_I_1_n_7),
        .baudoutN_int_i_reg_0(baudoutN_int_i_reg),
        .baudoutN_int_i_reg_1(\GENERATING_EXTERNAL_XIN.XIN_CDC_n_3 ),
        .baudoutn(xin_d2),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .ce_out_i(ce_out_i),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .\lsr_reg[5]_0 (p_2_in44_in),
        .out1n(out1n),
        .out2n(out2n),
        .rclk_d3(rclk_d3),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .scndry_out(rclk_d2),
        .sin(sin),
        .sin_d1_reg(\GENERATING_EXTERNAL_RCLK.RCLK_CDC_n_0 ),
        .sout(sout),
        .thre_iir_set_reg_0(thre_iir_set_reg),
        .txrdyn(txrdyn),
        .xin_d3(xin_d3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart_tx_load_sm
   (Thre_reg_0,
    \lsr_reg[5] ,
    \tsr_int_reg[0]_0 ,
    Q,
    \tsr_int_reg[1]_0 ,
    \tsr_int_reg[3]_0 ,
    \tsr_int_reg[4]_0 ,
    \tsr_int_reg[5]_0 ,
    Thre_reg_1,
    bus2ip_reset_int_core,
    s_axi_aclk,
    \lsr_reg[6] ,
    tsr_loaded,
    \lsr_reg[6]_0 ,
    freeze,
    tx_empty,
    writing_thr,
    \tsr_reg[0] ,
    out,
    \lsr_reg[5]_0 ,
    \lsr_reg[6]_1 ,
    \lsr_reg[6]_2 ,
    chipSelect,
    wr_d,
    lsr_reg,
    \tsr_int_reg[7]_0 );
  output Thre_reg_0;
  output \lsr_reg[5] ;
  output \tsr_int_reg[0]_0 ;
  output [2:0]Q;
  output \tsr_int_reg[1]_0 ;
  output \tsr_int_reg[3]_0 ;
  output \tsr_int_reg[4]_0 ;
  output \tsr_int_reg[5]_0 ;
  output Thre_reg_1;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input \lsr_reg[6] ;
  input tsr_loaded;
  input \lsr_reg[6]_0 ;
  input freeze;
  input tx_empty;
  input writing_thr;
  input [0:0]\tsr_reg[0] ;
  input [4:0]out;
  input [0:0]\lsr_reg[5]_0 ;
  input [0:0]\lsr_reg[6]_1 ;
  input \lsr_reg[6]_2 ;
  input chipSelect;
  input wr_d;
  input lsr_reg;
  input [7:0]\tsr_int_reg[7]_0 ;

  wire [2:0]Q;
  wire Thre;
  wire Thre_reg_0;
  wire Thre_reg_1;
  wire Tsre;
  wire bus2ip_reset_int_core;
  wire chipSelect;
  wire [1:0]current_state;
  wire freeze;
  wire \lsr[6]_i_2_n_0 ;
  wire lsr_reg;
  wire lsr_reg022_out;
  wire \lsr_reg[5] ;
  wire [0:0]\lsr_reg[5]_0 ;
  wire \lsr_reg[6] ;
  wire \lsr_reg[6]_0 ;
  wire [0:0]\lsr_reg[6]_1 ;
  wire \lsr_reg[6]_2 ;
  wire [1:0]next_state;
  wire [4:0]out;
  wire s_axi_aclk;
  wire thre_com;
  wire tsr_com;
  wire [5:0]tsr_int;
  wire \tsr_int_reg[0]_0 ;
  wire \tsr_int_reg[1]_0 ;
  wire \tsr_int_reg[3]_0 ;
  wire \tsr_int_reg[4]_0 ;
  wire \tsr_int_reg[5]_0 ;
  wire [7:0]\tsr_int_reg[7]_0 ;
  wire tsr_loaded;
  wire [0:0]\tsr_reg[0] ;
  wire tsre_com;
  wire tx_empty;
  wire wr_d;
  wire writing_thr;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(tsr_loaded),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'h0053)) 
    \FSM_sequential_transmit_state[0]_i_3 
       (.I0(\lsr_reg[6]_0 ),
        .I1(Tsre),
        .I2(\lsr_reg[6] ),
        .I3(freeze),
        .O(\lsr_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    Thre_i_1
       (.I0(writing_thr),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(thre_com));
  FDSE Thre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(thre_com),
        .Q(Thre),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    Tsre_i_1
       (.I0(tsr_loaded),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(tsre_com));
  FDSE Tsre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tsre_com),
        .Q(Tsre),
        .S(bus2ip_reset_int_core));
  LUT3 #(
    .INIT(8'hE2)) 
    \lsr[5]_i_1 
       (.I0(Thre),
        .I1(\lsr_reg[6] ),
        .I2(\lsr_reg[5]_0 ),
        .O(Thre_reg_1));
  LUT6 #(
    .INIT(64'h20EC000000000000)) 
    \lsr[6]_i_1 
       (.I0(Thre),
        .I1(\lsr_reg[6] ),
        .I2(Tsre),
        .I3(tsr_loaded),
        .I4(\lsr[6]_i_2_n_0 ),
        .I5(\lsr_reg[6]_0 ),
        .O(Thre_reg_0));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFF2000)) 
    \lsr[6]_i_2 
       (.I0(\lsr_reg[6]_1 ),
        .I1(\lsr_reg[6]_2 ),
        .I2(chipSelect),
        .I3(wr_d),
        .I4(lsr_reg022_out),
        .I5(lsr_reg),
        .O(\lsr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0008888)) 
    \lsr[6]_i_3 
       (.I0(Tsre),
        .I1(Thre),
        .I2(tx_empty),
        .I3(\lsr_reg[6]_0 ),
        .I4(\lsr_reg[6] ),
        .I5(bus2ip_reset_int_core),
        .O(lsr_reg022_out));
  LUT4 #(
    .INIT(16'h3202)) 
    \tsr[0]_i_2 
       (.I0(tsr_int[0]),
        .I1(\tsr_reg[0] ),
        .I2(\lsr_reg[6] ),
        .I3(out[0]),
        .O(\tsr_int_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \tsr[1]_i_2 
       (.I0(tsr_int[1]),
        .I1(\tsr_reg[0] ),
        .I2(\lsr_reg[6] ),
        .I3(out[1]),
        .O(\tsr_int_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \tsr[3]_i_2 
       (.I0(tsr_int[3]),
        .I1(\tsr_reg[0] ),
        .I2(\lsr_reg[6] ),
        .I3(out[2]),
        .O(\tsr_int_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \tsr[4]_i_2 
       (.I0(tsr_int[4]),
        .I1(\tsr_reg[0] ),
        .I2(\lsr_reg[6] ),
        .I3(out[3]),
        .O(\tsr_int_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \tsr[5]_i_2 
       (.I0(tsr_int[5]),
        .I1(\tsr_reg[0] ),
        .I2(\lsr_reg[6] ),
        .I3(out[4]),
        .O(\tsr_int_reg[5]_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \tsr_int[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(tsr_com));
  FDSE \tsr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [0]),
        .Q(tsr_int[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [1]),
        .Q(tsr_int[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [2]),
        .Q(Q[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [3]),
        .Q(tsr_int[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [4]),
        .Q(tsr_int[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [5]),
        .Q(tsr_int[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [6]),
        .Q(Q[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_0 [7]),
        .Q(Q[2]),
        .S(bus2ip_reset_int_core));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
