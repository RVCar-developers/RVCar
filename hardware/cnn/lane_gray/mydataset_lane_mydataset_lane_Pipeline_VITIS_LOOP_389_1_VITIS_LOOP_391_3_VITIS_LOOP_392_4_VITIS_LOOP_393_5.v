// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_389_1_VITIS_LOOP_391_3_VITIS_LOOP_392_4_VITIS_LOOP_393_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out2_V_address0,
        out2_V_ce0,
        out2_V_we0,
        out2_V_d0,
        out2_V_q0,
        out1_V_address0,
        out1_V_ce0,
        out1_V_q0,
        out1_V_address1,
        out1_V_ce1,
        out1_V_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] out2_V_address0;
output   out2_V_ce0;
output   out2_V_we0;
output  [15:0] out2_V_d0;
input  [15:0] out2_V_q0;
output  [12:0] out1_V_address0;
output   out1_V_ce0;
input  [15:0] out1_V_q0;
output  [12:0] out1_V_address1;
output   out1_V_ce1;
input  [15:0] out1_V_q1;

reg ap_idle;
reg[10:0] out2_V_address0;
reg out2_V_ce0;
reg out2_V_we0;
reg[15:0] out2_V_d0;
reg out1_V_ce0;
reg out1_V_ce1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state6_pp0_stage2_iter1;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln389_reg_1210;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [4:0] w_3_reg_1185;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] h_3_reg_1191;
wire   [4:0] add_ln389_fu_233_p2;
reg   [4:0] add_ln389_reg_1201;
wire   [0:0] icmp_ln389_fu_239_p2;
wire   [0:0] icmp_ln390_fu_260_p2;
reg   [0:0] icmp_ln390_reg_1214;
wire   [4:0] select_ln389_fu_266_p3;
reg   [4:0] select_ln389_reg_1226;
wire   [0:0] xor_ln389_fu_274_p2;
reg   [0:0] xor_ln389_reg_1232;
wire   [0:0] and_ln389_3_fu_298_p2;
reg   [0:0] and_ln389_3_reg_1238;
wire   [0:0] or_ln390_fu_304_p2;
reg   [0:0] or_ln390_reg_1248;
wire   [0:0] or_ln390_2_fu_316_p2;
reg   [0:0] or_ln390_2_reg_1254;
wire   [0:0] and_ln390_2_fu_322_p2;
reg   [0:0] and_ln390_2_reg_1260;
wire   [0:0] or_ln391_2_fu_334_p2;
reg   [0:0] or_ln391_2_reg_1270;
wire   [10:0] select_ln390_5_fu_762_p3;
reg   [10:0] select_ln390_5_reg_1275;
wire    ap_block_pp0_stage2_11001;
wire   [10:0] p_mid156_fu_880_p2;
reg   [10:0] p_mid156_reg_1280;
wire   [12:0] select_ln391_3_fu_900_p3;
reg   [12:0] select_ln391_3_reg_1285;
wire   [12:0] select_ln392_1_fu_991_p3;
reg   [12:0] select_ln392_1_reg_1290;
wire   [0:0] or_ln396_fu_1023_p2;
reg   [0:0] or_ln396_reg_1295;
wire   [7:0] add_ln399_fu_1049_p2;
reg   [7:0] add_ln399_reg_1299;
wire   [63:0] zext_ln391_3_fu_1091_p1;
reg   [63:0] zext_ln391_3_reg_1304;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] out2_V_addr_reg_1314;
reg   [15:0] out1_V_load_1_reg_1324;
wire   [0:0] icmp_ln1548_fu_1113_p2;
reg   [0:0] icmp_ln1548_reg_1329;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln391_4_fu_1096_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1548_fu_1108_p1;
wire    ap_block_pp0_stage1;
reg   [1:0] n_fu_96;
wire   [1:0] add_ln393_fu_1055_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [1:0] m_fu_100;
wire   [1:0] select_ln392_3_fu_1011_p3;
reg   [3:0] indvar_flatten40_fu_104;
wire   [3:0] select_ln392_5_fu_355_p3;
reg   [3:0] i_1_fu_108;
wire   [3:0] select_ln391_1_fu_859_p3;
reg   [6:0] indvar_flatten80_fu_112;
wire   [6:0] select_ln391_6_fu_369_p3;
reg   [4:0] w_fu_116;
wire   [4:0] select_ln390_8_fu_840_p3;
reg   [9:0] indvar_flatten146_fu_120;
wire   [9:0] select_ln390_9_fu_383_p3;
reg   [4:0] h_fu_124;
wire   [4:0] select_ln389_8_fu_693_p3;
reg   [12:0] indvar_flatten232_fu_128;
wire   [12:0] add_ln389_1_fu_245_p2;
wire   [0:0] icmp_ln392_fu_280_p2;
wire   [0:0] icmp_ln391_fu_292_p2;
wire   [0:0] xor_ln390_fu_310_p2;
wire   [0:0] and_ln389_2_fu_286_p2;
wire   [0:0] or_ln391_fu_328_p2;
wire   [3:0] add_ln392_2_fu_349_p2;
wire   [6:0] add_ln391_2_fu_363_p2;
wire   [9:0] add_ln390_2_fu_377_p2;
wire   [6:0] p_shl6_fu_424_p3;
wire   [10:0] p_shl5_fu_417_p3;
wire   [10:0] p_shl6_cast_fu_431_p1;
wire   [8:0] p_shl4_fu_448_p3;
wire   [12:0] p_shl3_fu_441_p3;
wire   [12:0] p_shl4_cast_fu_455_p1;
wire   [6:0] tmp_3_fu_465_p3;
wire   [7:0] tmp_5_fu_476_p3;
wire   [10:0] empty_fu_435_p2;
wire   [10:0] zext_ln391_1_fu_487_p1;
wire   [10:0] tmp12_fu_491_p2;
wire   [10:0] p_cast99_fu_472_p1;
wire   [12:0] empty_41_fu_459_p2;
wire   [8:0] tmp_fu_503_p4;
wire   [12:0] tmp6_fu_513_p3;
wire   [12:0] zext_ln399_fu_483_p1;
wire   [4:0] zext_ln392_fu_527_p1;
wire   [4:0] empty_44_fu_531_p2;
wire   [8:0] p_shl8_fu_544_p3;
wire   [12:0] p_shl7_fu_536_p3;
wire   [12:0] p_shl8_cast_fu_552_p1;
wire   [6:0] p_shl6_mid1_fu_572_p3;
wire   [10:0] p_shl5_mid1_fu_565_p3;
wire   [10:0] p_shl6_cast_mid1_fu_579_p1;
wire   [10:0] p_mid1164_fu_583_p2;
wire   [8:0] p_shl4_mid1_fu_603_p3;
wire   [12:0] p_shl3_mid1_fu_596_p3;
wire   [12:0] p_shl4_cast_mid1_fu_610_p1;
wire   [10:0] empty_42_fu_497_p2;
wire   [12:0] p_mid1166_fu_614_p2;
wire   [8:0] tmp_mid_fu_641_p4;
wire   [12:0] tmp13_mid_fu_651_p3;
wire   [12:0] empty_43_fu_521_p2;
wire   [12:0] empty_45_fu_556_p2;
wire   [0:0] trunc_ln396_fu_673_p1;
wire   [0:0] icmp_ln393_fu_682_p2;
wire   [4:0] add_ln390_fu_698_p2;
wire   [6:0] p_mid_fu_710_p3;
wire   [6:0] select_ln389_3_fu_620_p3;
wire   [6:0] select_ln390_2_fu_722_p3;
wire   [7:0] p_mid2_fu_733_p3;
wire   [7:0] select_ln389_4_fu_627_p3;
wire   [7:0] select_ln390_3_fu_745_p3;
wire   [10:0] select_ln389_2_fu_589_p3;
wire   [10:0] p_cast99_mid1_fu_718_p1;
wire   [10:0] p_mid1106_fu_756_p2;
wire   [10:0] select_ln389_5_fu_634_p3;
wire   [8:0] select_ln389_9_fu_769_p3;
wire   [12:0] tmp13_mid2_fu_776_p3;
wire   [12:0] zext_ln399_1_fu_741_p1;
wire   [12:0] p_mid1114_fu_784_p2;
wire   [12:0] select_ln389_6_fu_659_p3;
wire   [8:0] p_shl8_mid_fu_805_p3;
wire   [12:0] p_shl7_mid_fu_797_p3;
wire   [12:0] p_shl8_cast_mid1134_fu_813_p1;
wire   [12:0] p_mid1136_fu_817_p2;
wire   [12:0] select_ln389_7_fu_666_p3;
wire   [0:0] and_ln389_fu_677_p2;
wire   [0:0] and_ln389_1_fu_688_p2;
wire   [3:0] select_ln390_fu_703_p3;
wire   [3:0] add_ln391_fu_846_p2;
wire   [10:0] zext_ln391_2_fu_870_p1;
wire   [10:0] tmp12_mid1_fu_874_p2;
wire   [10:0] select_ln390_2_cast_fu_729_p1;
wire   [12:0] tmp13_mid1_fu_886_p3;
wire   [12:0] zext_ln390_fu_752_p1;
wire   [12:0] p_mid158_fu_894_p2;
wire   [12:0] select_ln390_6_fu_790_p3;
wire   [12:0] select_ln390_7_fu_823_p3;
wire   [0:0] and_ln390_fu_830_p2;
wire   [0:0] xor_ln391_fu_914_p2;
wire   [0:0] and_ln390_1_fu_835_p2;
wire   [1:0] select_ln391_fu_852_p3;
wire   [0:0] and_ln391_1_fu_925_p2;
wire   [0:0] or_ln392_fu_937_p2;
wire   [0:0] or_ln392_2_fu_942_p2;
wire   [1:0] add_ln392_fu_931_p2;
wire   [4:0] zext_ln392_2_fu_955_p1;
wire   [4:0] p_mid136_fu_959_p2;
wire   [8:0] p_shl8_mid1_fu_973_p3;
wire   [12:0] p_shl7_mid1_fu_965_p3;
wire   [12:0] p_shl8_cast_mid1_fu_981_p1;
wire   [12:0] p_mid138_fu_985_p2;
wire   [12:0] select_ln391_4_fu_907_p3;
wire   [0:0] trunc_ln396_3_fu_999_p1;
wire   [0:0] and_ln391_fu_919_p2;
wire   [1:0] select_ln392_fu_947_p3;
wire   [0:0] trunc_ln396_4_fu_1019_p1;
wire   [0:0] select_ln392_2_fu_1003_p3;
wire   [3:0] tmp_s_fu_1029_p4;
wire   [7:0] zext_ln391_fu_866_p1;
wire   [7:0] shl_ln_fu_1039_p4;
wire   [10:0] select_ln391_2_fu_1086_p3;
wire   [12:0] zext_ln399_2_fu_1100_p1;
wire   [12:0] add_ln399_1_fu_1103_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

mydataset_lane_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        h_fu_124 <= 5'd0;
    end else if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        h_fu_124 <= select_ln389_8_fu_693_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_1_fu_108 <= 4'd0;
    end else if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_1_fu_108 <= select_ln391_1_fu_859_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten146_fu_120 <= 10'd0;
    end else if (((icmp_ln389_fu_239_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten146_fu_120 <= select_ln390_9_fu_383_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten232_fu_128 <= 13'd0;
    end else if (((icmp_ln389_fu_239_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten232_fu_128 <= add_ln389_1_fu_245_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten40_fu_104 <= 4'd0;
    end else if (((icmp_ln389_fu_239_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten40_fu_104 <= select_ln392_5_fu_355_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten80_fu_112 <= 7'd0;
    end else if (((icmp_ln389_fu_239_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten80_fu_112 <= select_ln391_6_fu_369_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        m_fu_100 <= 2'd0;
    end else if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m_fu_100 <= select_ln392_3_fu_1011_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        n_fu_96 <= 2'd0;
    end else if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        n_fu_96 <= add_ln393_fu_1055_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        w_fu_116 <= 5'd0;
    end else if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        w_fu_116 <= select_ln390_8_fu_840_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln389_reg_1201 <= add_ln389_fu_233_p2;
        h_3_reg_1191 <= h_fu_124;
        icmp_ln389_reg_1210 <= icmp_ln389_fu_239_p2;
        w_3_reg_1185 <= w_fu_116;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln396_fu_1023_p2 == 1'd1))) begin
        add_ln399_reg_1299 <= add_ln399_fu_1049_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln389_fu_239_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln389_3_reg_1238 <= and_ln389_3_fu_298_p2;
        and_ln390_2_reg_1260 <= and_ln390_2_fu_322_p2;
        icmp_ln390_reg_1214 <= icmp_ln390_fu_260_p2;
        or_ln390_2_reg_1254 <= or_ln390_2_fu_316_p2;
        or_ln390_reg_1248 <= or_ln390_fu_304_p2;
        or_ln391_2_reg_1270 <= or_ln391_2_fu_334_p2;
        select_ln389_reg_1226 <= select_ln389_fu_266_p3;
        xor_ln389_reg_1232 <= xor_ln389_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln396_reg_1295 == 1'd1))) begin
        icmp_ln1548_reg_1329 <= icmp_ln1548_fu_1113_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln396_reg_1295 <= or_ln396_fu_1023_p2;
        select_ln391_3_reg_1285 <= select_ln391_3_fu_900_p3;
        select_ln392_1_reg_1290[12 : 4] <= select_ln392_1_fu_991_p3[12 : 4];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln396_reg_1295 == 1'd1))) begin
        out1_V_load_1_reg_1324 <= out1_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln396_reg_1295 == 1'd1))) begin
        out2_V_addr_reg_1314 <= zext_ln391_3_fu_1091_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln390_2_reg_1260) & (icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_mid156_reg_1280 <= p_mid156_fu_880_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln390_2_reg_1260) & (icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln390_5_reg_1275 <= select_ln390_5_fu_762_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln389_reg_1210 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln391_3_reg_1304[10 : 0] <= zext_ln391_3_fu_1091_p1[10 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln389_reg_1210 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out1_V_ce0 = 1'b1;
    end else begin
        out1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out1_V_ce1 = 1'b1;
    end else begin
        out1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            out2_V_address0 = out2_V_addr_reg_1314;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            out2_V_address0 = zext_ln391_3_reg_1304;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            out2_V_address0 = zext_ln391_3_fu_1091_p1;
        end else begin
            out2_V_address0 = 'bx;
        end
    end else begin
        out2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        out2_V_ce0 = 1'b1;
    end else begin
        out2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            out2_V_d0 = out1_V_load_1_reg_1324;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            out2_V_d0 = out1_V_q1;
        end else begin
            out2_V_d0 = 'bx;
        end
    end else begin
        out2_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln396_reg_1295 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln1548_reg_1329 == 1'd1) & (or_ln396_reg_1295 == 1'd1)))) begin
        out2_V_we0 = 1'b1;
    end else begin
        out2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln389_1_fu_245_p2 = (indvar_flatten232_fu_128 + 13'd1);

assign add_ln389_fu_233_p2 = (h_fu_124 + 5'd2);

assign add_ln390_2_fu_377_p2 = (indvar_flatten146_fu_120 + 10'd1);

assign add_ln390_fu_698_p2 = (select_ln389_reg_1226 + 5'd2);

assign add_ln391_2_fu_363_p2 = (indvar_flatten80_fu_112 + 7'd1);

assign add_ln391_fu_846_p2 = (select_ln390_fu_703_p3 + 4'd1);

assign add_ln392_2_fu_349_p2 = (indvar_flatten40_fu_104 + 4'd1);

assign add_ln392_fu_931_p2 = (select_ln391_fu_852_p3 + 2'd1);

assign add_ln393_fu_1055_p2 = (select_ln392_fu_947_p3 + 2'd1);

assign add_ln399_1_fu_1103_p2 = (zext_ln399_2_fu_1100_p1 + select_ln392_1_reg_1290);

assign add_ln399_fu_1049_p2 = (zext_ln391_fu_866_p1 + shl_ln_fu_1039_p4);

assign and_ln389_1_fu_688_p2 = (xor_ln389_reg_1232 & icmp_ln393_fu_682_p2);

assign and_ln389_2_fu_286_p2 = (xor_ln389_fu_274_p2 & icmp_ln392_fu_280_p2);

assign and_ln389_3_fu_298_p2 = (xor_ln389_fu_274_p2 & icmp_ln391_fu_292_p2);

assign and_ln389_fu_677_p2 = (xor_ln389_reg_1232 & trunc_ln396_fu_673_p1);

assign and_ln390_1_fu_835_p2 = (or_ln390_2_reg_1254 & and_ln389_1_fu_688_p2);

assign and_ln390_2_fu_322_p2 = (or_ln390_2_fu_316_p2 & and_ln389_2_fu_286_p2);

assign and_ln390_fu_830_p2 = (or_ln390_2_reg_1254 & and_ln389_fu_677_p2);

assign and_ln391_1_fu_925_p2 = (xor_ln391_fu_914_p2 & and_ln390_1_fu_835_p2);

assign and_ln391_fu_919_p2 = (xor_ln391_fu_914_p2 & and_ln390_fu_830_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;

assign empty_41_fu_459_p2 = (p_shl3_fu_441_p3 - p_shl4_cast_fu_455_p1);

assign empty_42_fu_497_p2 = (tmp12_fu_491_p2 + p_cast99_fu_472_p1);

assign empty_43_fu_521_p2 = (tmp6_fu_513_p3 + zext_ln399_fu_483_p1);

assign empty_44_fu_531_p2 = (zext_ln392_fu_527_p1 + h_3_reg_1191);

assign empty_45_fu_556_p2 = (p_shl7_fu_536_p3 - p_shl8_cast_fu_552_p1);

assign empty_fu_435_p2 = (p_shl5_fu_417_p3 - p_shl6_cast_fu_431_p1);

assign icmp_ln1548_fu_1113_p2 = (($signed(out2_V_q0) < $signed(out1_V_q0)) ? 1'b1 : 1'b0);

assign icmp_ln389_fu_239_p2 = ((indvar_flatten232_fu_128 == 13'd7200) ? 1'b1 : 1'b0);

assign icmp_ln390_fu_260_p2 = ((indvar_flatten146_fu_120 == 10'd480) ? 1'b1 : 1'b0);

assign icmp_ln391_fu_292_p2 = ((indvar_flatten80_fu_112 == 7'd32) ? 1'b1 : 1'b0);

assign icmp_ln392_fu_280_p2 = ((indvar_flatten40_fu_104 == 4'd4) ? 1'b1 : 1'b0);

assign icmp_ln393_fu_682_p2 = ((n_fu_96 == 2'd2) ? 1'b1 : 1'b0);

assign or_ln390_2_fu_316_p2 = (xor_ln390_fu_310_p2 | icmp_ln390_fu_260_p2);

assign or_ln390_fu_304_p2 = (icmp_ln390_fu_260_p2 | and_ln389_3_fu_298_p2);

assign or_ln391_2_fu_334_p2 = (or_ln391_fu_328_p2 | icmp_ln390_fu_260_p2);

assign or_ln391_fu_328_p2 = (and_ln390_2_fu_322_p2 | and_ln389_3_fu_298_p2);

assign or_ln392_2_fu_942_p2 = (or_ln392_fu_937_p2 | or_ln390_reg_1248);

assign or_ln392_fu_937_p2 = (and_ln391_1_fu_925_p2 | and_ln390_2_reg_1260);

assign or_ln396_fu_1023_p2 = (trunc_ln396_4_fu_1019_p1 | select_ln392_2_fu_1003_p3);

assign out1_V_address0 = zext_ln1548_fu_1108_p1;

assign out1_V_address1 = zext_ln391_4_fu_1096_p1;

assign p_cast99_fu_472_p1 = tmp_3_fu_465_p3;

assign p_cast99_mid1_fu_718_p1 = p_mid_fu_710_p3;

assign p_mid1106_fu_756_p2 = (select_ln389_2_fu_589_p3 + p_cast99_mid1_fu_718_p1);

assign p_mid1114_fu_784_p2 = (tmp13_mid2_fu_776_p3 + zext_ln399_1_fu_741_p1);

assign p_mid1136_fu_817_p2 = (p_shl7_mid_fu_797_p3 - p_shl8_cast_mid1134_fu_813_p1);

assign p_mid1164_fu_583_p2 = (p_shl5_mid1_fu_565_p3 - p_shl6_cast_mid1_fu_579_p1);

assign p_mid1166_fu_614_p2 = (p_shl3_mid1_fu_596_p3 - p_shl4_cast_mid1_fu_610_p1);

assign p_mid136_fu_959_p2 = (zext_ln392_2_fu_955_p1 + select_ln389_8_fu_693_p3);

assign p_mid138_fu_985_p2 = (p_shl7_mid1_fu_965_p3 - p_shl8_cast_mid1_fu_981_p1);

assign p_mid156_fu_880_p2 = (tmp12_mid1_fu_874_p2 + select_ln390_2_cast_fu_729_p1);

assign p_mid158_fu_894_p2 = (tmp13_mid1_fu_886_p3 + zext_ln390_fu_752_p1);

assign p_mid2_fu_733_p3 = {{add_ln390_fu_698_p2}, {3'd0}};

assign p_mid_fu_710_p3 = {{add_ln390_fu_698_p2}, {2'd0}};

assign p_shl3_fu_441_p3 = {{h_3_reg_1191}, {8'd0}};

assign p_shl3_mid1_fu_596_p3 = {{add_ln389_reg_1201}, {8'd0}};

assign p_shl4_cast_fu_455_p1 = p_shl4_fu_448_p3;

assign p_shl4_cast_mid1_fu_610_p1 = p_shl4_mid1_fu_603_p3;

assign p_shl4_fu_448_p3 = {{h_3_reg_1191}, {4'd0}};

assign p_shl4_mid1_fu_603_p3 = {{add_ln389_reg_1201}, {4'd0}};

assign p_shl5_fu_417_p3 = {{h_3_reg_1191}, {6'd0}};

assign p_shl5_mid1_fu_565_p3 = {{add_ln389_reg_1201}, {6'd0}};

assign p_shl6_cast_fu_431_p1 = p_shl6_fu_424_p3;

assign p_shl6_cast_mid1_fu_579_p1 = p_shl6_mid1_fu_572_p3;

assign p_shl6_fu_424_p3 = {{h_3_reg_1191}, {2'd0}};

assign p_shl6_mid1_fu_572_p3 = {{add_ln389_reg_1201}, {2'd0}};

assign p_shl7_fu_536_p3 = {{empty_44_fu_531_p2}, {8'd0}};

assign p_shl7_mid1_fu_965_p3 = {{p_mid136_fu_959_p2}, {8'd0}};

assign p_shl7_mid_fu_797_p3 = {{select_ln389_8_fu_693_p3}, {8'd0}};

assign p_shl8_cast_fu_552_p1 = p_shl8_fu_544_p3;

assign p_shl8_cast_mid1134_fu_813_p1 = p_shl8_mid_fu_805_p3;

assign p_shl8_cast_mid1_fu_981_p1 = p_shl8_mid1_fu_973_p3;

assign p_shl8_fu_544_p3 = {{empty_44_fu_531_p2}, {4'd0}};

assign p_shl8_mid1_fu_973_p3 = {{p_mid136_fu_959_p2}, {4'd0}};

assign p_shl8_mid_fu_805_p3 = {{select_ln389_8_fu_693_p3}, {4'd0}};

assign select_ln389_2_fu_589_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? p_mid1164_fu_583_p2 : empty_fu_435_p2);

assign select_ln389_3_fu_620_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? 7'd0 : tmp_3_fu_465_p3);

assign select_ln389_4_fu_627_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? 8'd0 : tmp_5_fu_476_p3);

assign select_ln389_5_fu_634_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? p_mid1164_fu_583_p2 : empty_42_fu_497_p2);

assign select_ln389_6_fu_659_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? tmp13_mid_fu_651_p3 : empty_43_fu_521_p2);

assign select_ln389_7_fu_666_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? p_mid1166_fu_614_p2 : empty_45_fu_556_p2);

assign select_ln389_8_fu_693_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? add_ln389_reg_1201 : h_3_reg_1191);

assign select_ln389_9_fu_769_p3 = ((icmp_ln390_reg_1214[0:0] == 1'b1) ? tmp_mid_fu_641_p4 : tmp_fu_503_p4);

assign select_ln389_fu_266_p3 = ((icmp_ln390_fu_260_p2[0:0] == 1'b1) ? 5'd0 : w_fu_116);

assign select_ln390_2_cast_fu_729_p1 = select_ln390_2_fu_722_p3;

assign select_ln390_2_fu_722_p3 = ((and_ln389_3_reg_1238[0:0] == 1'b1) ? p_mid_fu_710_p3 : select_ln389_3_fu_620_p3);

assign select_ln390_3_fu_745_p3 = ((and_ln389_3_reg_1238[0:0] == 1'b1) ? p_mid2_fu_733_p3 : select_ln389_4_fu_627_p3);

assign select_ln390_5_fu_762_p3 = ((and_ln389_3_reg_1238[0:0] == 1'b1) ? p_mid1106_fu_756_p2 : select_ln389_5_fu_634_p3);

assign select_ln390_6_fu_790_p3 = ((and_ln389_3_reg_1238[0:0] == 1'b1) ? p_mid1114_fu_784_p2 : select_ln389_6_fu_659_p3);

assign select_ln390_7_fu_823_p3 = ((and_ln389_3_reg_1238[0:0] == 1'b1) ? p_mid1136_fu_817_p2 : select_ln389_7_fu_666_p3);

assign select_ln390_8_fu_840_p3 = ((and_ln389_3_reg_1238[0:0] == 1'b1) ? add_ln390_fu_698_p2 : select_ln389_reg_1226);

assign select_ln390_9_fu_383_p3 = ((icmp_ln390_fu_260_p2[0:0] == 1'b1) ? 10'd1 : add_ln390_2_fu_377_p2);

assign select_ln390_fu_703_p3 = ((or_ln390_reg_1248[0:0] == 1'b1) ? 4'd0 : i_1_fu_108);

assign select_ln391_1_fu_859_p3 = ((and_ln390_2_reg_1260[0:0] == 1'b1) ? add_ln391_fu_846_p2 : select_ln390_fu_703_p3);

assign select_ln391_2_fu_1086_p3 = ((and_ln390_2_reg_1260[0:0] == 1'b1) ? p_mid156_reg_1280 : select_ln390_5_reg_1275);

assign select_ln391_3_fu_900_p3 = ((and_ln390_2_reg_1260[0:0] == 1'b1) ? p_mid158_fu_894_p2 : select_ln390_6_fu_790_p3);

assign select_ln391_4_fu_907_p3 = ((and_ln390_2_reg_1260[0:0] == 1'b1) ? p_mid1136_fu_817_p2 : select_ln390_7_fu_823_p3);

assign select_ln391_6_fu_369_p3 = ((or_ln390_fu_304_p2[0:0] == 1'b1) ? 7'd1 : add_ln391_2_fu_363_p2);

assign select_ln391_fu_852_p3 = ((or_ln391_2_reg_1270[0:0] == 1'b1) ? 2'd0 : m_fu_100);

assign select_ln392_1_fu_991_p3 = ((and_ln391_1_fu_925_p2[0:0] == 1'b1) ? p_mid138_fu_985_p2 : select_ln391_4_fu_907_p3);

assign select_ln392_2_fu_1003_p3 = ((and_ln391_1_fu_925_p2[0:0] == 1'b1) ? trunc_ln396_3_fu_999_p1 : and_ln391_fu_919_p2);

assign select_ln392_3_fu_1011_p3 = ((and_ln391_1_fu_925_p2[0:0] == 1'b1) ? add_ln392_fu_931_p2 : select_ln391_fu_852_p3);

assign select_ln392_5_fu_355_p3 = ((or_ln391_2_fu_334_p2[0:0] == 1'b1) ? 4'd1 : add_ln392_2_fu_349_p2);

assign select_ln392_fu_947_p3 = ((or_ln392_2_fu_942_p2[0:0] == 1'b1) ? 2'd0 : n_fu_96);

assign shl_ln_fu_1039_p4 = {{{tmp_s_fu_1029_p4}, {trunc_ln396_4_fu_1019_p1}}, {3'd0}};

assign tmp12_fu_491_p2 = (empty_fu_435_p2 + zext_ln391_1_fu_487_p1);

assign tmp12_mid1_fu_874_p2 = (select_ln389_2_fu_589_p3 + zext_ln391_2_fu_870_p1);

assign tmp13_mid1_fu_886_p3 = {{select_ln389_9_fu_769_p3}, {add_ln391_fu_846_p2}};

assign tmp13_mid2_fu_776_p3 = {{select_ln389_9_fu_769_p3}, {4'd0}};

assign tmp13_mid_fu_651_p3 = {{tmp_mid_fu_641_p4}, {4'd0}};

assign tmp6_fu_513_p3 = {{tmp_fu_503_p4}, {i_1_fu_108}};

assign tmp_3_fu_465_p3 = {{w_3_reg_1185}, {2'd0}};

assign tmp_5_fu_476_p3 = {{w_3_reg_1185}, {3'd0}};

assign tmp_fu_503_p4 = {{empty_41_fu_459_p2[12:4]}};

assign tmp_mid_fu_641_p4 = {{p_mid1166_fu_614_p2[12:4]}};

assign tmp_s_fu_1029_p4 = {{select_ln390_8_fu_840_p3[4:1]}};

assign trunc_ln396_3_fu_999_p1 = add_ln392_fu_931_p2[0:0];

assign trunc_ln396_4_fu_1019_p1 = select_ln392_fu_947_p3[0:0];

assign trunc_ln396_fu_673_p1 = m_fu_100[0:0];

assign xor_ln389_fu_274_p2 = (icmp_ln390_fu_260_p2 ^ 1'd1);

assign xor_ln390_fu_310_p2 = (icmp_ln391_fu_292_p2 ^ 1'd1);

assign xor_ln391_fu_914_p2 = (1'd1 ^ and_ln390_2_reg_1260);

assign zext_ln1548_fu_1108_p1 = add_ln399_1_fu_1103_p2;

assign zext_ln390_fu_752_p1 = select_ln390_3_fu_745_p3;

assign zext_ln391_1_fu_487_p1 = i_1_fu_108;

assign zext_ln391_2_fu_870_p1 = add_ln391_fu_846_p2;

assign zext_ln391_3_fu_1091_p1 = select_ln391_2_fu_1086_p3;

assign zext_ln391_4_fu_1096_p1 = select_ln391_3_reg_1285;

assign zext_ln391_fu_866_p1 = select_ln391_1_fu_859_p3;

assign zext_ln392_2_fu_955_p1 = add_ln392_fu_931_p2;

assign zext_ln392_fu_527_p1 = m_fu_100;

assign zext_ln399_1_fu_741_p1 = p_mid2_fu_733_p3;

assign zext_ln399_2_fu_1100_p1 = add_ln399_reg_1299;

assign zext_ln399_fu_483_p1 = tmp_5_fu_476_p3;

always @ (posedge ap_clk) begin
    select_ln392_1_reg_1290[3:0] <= 4'b0000;
    zext_ln391_3_reg_1304[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end

endmodule //mydataset_lane_mydataset_lane_Pipeline_VITIS_LOOP_389_1_VITIS_LOOP_391_3_VITIS_LOOP_392_4_VITIS_LOOP_393_5