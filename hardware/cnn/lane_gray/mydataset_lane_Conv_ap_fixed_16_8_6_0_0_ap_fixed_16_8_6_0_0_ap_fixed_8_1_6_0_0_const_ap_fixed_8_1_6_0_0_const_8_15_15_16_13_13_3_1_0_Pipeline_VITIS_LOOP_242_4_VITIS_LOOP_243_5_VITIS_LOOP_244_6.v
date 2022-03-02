// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mydataset_lane_Conv_ap_fixed_16_8_6_0_0_ap_fixed_16_8_6_0_0_ap_fixed_8_1_6_0_0_const_ap_fixed_8_1_6_0_0_const_8_15_15_16_13_13_3_1_0_Pipeline_VITIS_LOOP_242_4_VITIS_LOOP_243_5_VITIS_LOOP_244_6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sext_ln240,
        p_shl7,
        select_ln237_2,
        p_mid138,
        select_ln238_2,
        p_shl_cast,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        lhs_out,
        lhs_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] sext_ln240;
input  [6:0] p_shl7;
input  [3:0] select_ln237_2;
input  [10:0] p_mid138;
input  [3:0] select_ln238_2;
input  [9:0] p_shl_cast;
output  [10:0] in_r_address0;
output   in_r_ce0;
input  [15:0] in_r_q0;
output  [15:0] lhs_out;
output   lhs_out_ap_vld;

reg ap_idle;
reg in_r_ce0;
reg lhs_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln242_fu_247_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [10:0] layers_3_weight_V_address0;
reg    layers_3_weight_V_ce0;
wire  signed [7:0] layers_3_weight_V_q0;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] p_shl_cast_cast_fu_203_p1;
reg   [10:0] p_shl_cast_cast_reg_998;
reg  signed [2:0] m_3_reg_1003;
reg   [0:0] icmp_ln242_reg_1009;
reg   [0:0] icmp_ln242_reg_1009_pp0_iter1_reg;
reg   [0:0] icmp_ln242_reg_1009_pp0_iter2_reg;
reg   [0:0] icmp_ln242_reg_1009_pp0_iter3_reg;
reg   [0:0] icmp_ln242_reg_1009_pp0_iter4_reg;
reg   [0:0] icmp_ln242_reg_1009_pp0_iter5_reg;
wire   [0:0] icmp_ln243_fu_265_p2;
reg   [0:0] icmp_ln243_reg_1013;
wire   [2:0] select_ln242_fu_271_p3;
reg   [2:0] select_ln242_reg_1021;
wire   [0:0] and_ln242_fu_291_p2;
reg   [0:0] and_ln242_reg_1026;
wire  signed [2:0] indvars_iv_next29_dup_fu_297_p2;
reg  signed [2:0] indvars_iv_next29_dup_reg_1032;
wire   [2:0] add_ln244_fu_329_p2;
reg   [2:0] add_ln244_reg_1037;
wire   [1:0] add_ln255_fu_335_p2;
reg   [1:0] add_ln255_reg_1042;
wire   [7:0] select_ln242_2_fu_530_p3;
reg   [7:0] select_ln242_2_reg_1047;
wire   [4:0] add_ln255_5_fu_648_p2;
reg   [4:0] add_ln255_5_reg_1052;
wire   [10:0] add_ln1169_fu_664_p2;
reg   [10:0] add_ln1169_reg_1057;
(* use_dsp48 = "no" *) wire   [23:0] ret_V_fu_724_p2;
reg   [23:0] ret_V_reg_1082;
wire   [0:0] p_Result_s_fu_729_p3;
reg   [0:0] p_Result_s_reg_1087;
reg   [0:0] p_Result_3_reg_1093;
wire   [15:0] p_Val2_4_fu_774_p2;
reg   [15:0] p_Val2_4_reg_1099;
reg   [0:0] p_Result_4_reg_1104;
reg   [0:0] Range2_all_ones_reg_1111;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln1169_2_fu_697_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1169_fu_692_p1;
reg   [15:0] lhs_fu_110;
wire   [15:0] select_ln340_fu_909_p3;
wire  signed [15:0] sext_ln240_cast_fu_207_p1;
reg   [15:0] ap_sig_allocacmp_lhs_load_1;
wire    ap_loop_init;
reg   [2:0] n_fu_114;
reg   [2:0] ap_sig_allocacmp_n_load;
reg   [2:0] m_fu_118;
wire   [2:0] select_ln243_3_fu_317_p3;
reg   [2:0] ap_sig_allocacmp_m_3;
reg   [3:0] indvar_flatten_fu_122;
wire   [3:0] select_ln243_4_fu_347_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [3:0] ic_fu_126;
wire   [3:0] select_ln242_1_fu_488_p3;
reg   [6:0] indvar_flatten49_fu_130;
wire   [6:0] add_ln242_fu_253_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten49_load;
wire    ap_block_pp0_stage0_01001;
wire  signed [2:0] select_ln242_fu_271_p2;
wire   [0:0] icmp_ln244_fu_285_p2;
wire   [0:0] xor_ln242_fu_279_p2;
wire   [0:0] or_ln243_fu_303_p2;
wire   [2:0] select_ln243_fu_309_p3;
wire   [1:0] trunc_ln246_fu_325_p1;
wire   [3:0] add_ln243_fu_341_p2;
wire   [2:0] empty_fu_382_p1;
wire   [5:0] p_shl8_fu_386_p3;
wire   [6:0] zext_ln242_fu_378_p1;
wire   [6:0] add_ln255_3_fu_398_p2;
wire   [7:0] zext_ln255_2_fu_403_p1;
wire   [7:0] zext_ln243_fu_394_p1;
wire  signed [3:0] sext_ln243_fu_413_p1;
wire   [2:0] indvars_iv_next29_fu_421_p2;
wire   [3:0] empty_177_fu_416_p2;
wire   [6:0] p_shl5_fu_438_p3;
wire   [10:0] p_shl_fu_430_p3;
wire   [10:0] p_shl11_cast_fu_446_p1;
wire   [1:0] empty_179_fu_456_p1;
wire   [3:0] p_shl9_fu_460_p3;
wire   [4:0] p_shl9_cast_fu_468_p1;
wire   [4:0] indvars_iv_next29_cast13_fu_426_p1;
wire   [3:0] add_ln242_1_fu_478_p2;
wire   [2:0] empty_182_fu_499_p1;
wire   [5:0] p_shl8_mid1_fu_503_p3;
wire   [6:0] zext_ln242_1_fu_484_p1;
wire   [6:0] add_ln255_7_fu_515_p2;
wire   [7:0] zext_ln255_3_fu_520_p1;
wire   [7:0] zext_ln243_1_fu_511_p1;
wire   [7:0] add_ln255_8_fu_524_p2;
wire   [7:0] add_ln255_4_fu_407_p2;
wire   [10:0] empty_178_fu_450_p2;
wire   [4:0] empty_180_fu_472_p2;
wire  signed [3:0] sext_ln243_1_fu_550_p1;
wire   [2:0] indvars_iv_next29_mid1_fu_558_p2;
wire   [3:0] p_mid1_fu_553_p2;
wire   [6:0] p_shl11_mid1_fu_575_p3;
wire   [10:0] p_shl10_mid1_fu_567_p3;
wire   [10:0] p_shl11_cast_mid1_fu_583_p1;
wire   [10:0] p_mid14_fu_587_p2;
wire   [10:0] select_ln242_3_fu_537_p3;
wire   [1:0] empty_183_fu_600_p1;
wire   [3:0] p_shl9_mid1_fu_604_p3;
wire   [4:0] p_shl9_cast_mid1_fu_612_p1;
wire   [4:0] indvars_iv_next29_cast13_mid1_fu_563_p1;
wire   [4:0] p_mid16_fu_616_p2;
wire   [4:0] select_ln242_4_fu_543_p3;
wire   [3:0] zext_ln255_1_fu_632_p1;
wire   [3:0] add_ln255_1_fu_635_p2;
wire   [4:0] select_ln243_2_fu_622_p3;
wire   [4:0] zext_ln255_fu_629_p1;
wire   [6:0] select_ln242_1_cast_fu_495_p1;
wire   [6:0] shl_ln3_fu_640_p3;
wire   [6:0] add_ln1169_1_fu_654_p2;
wire   [10:0] zext_ln1169_1_fu_660_p1;
wire   [10:0] select_ln243_1_fu_593_p3;
wire  signed [10:0] sext_ln255_fu_678_p1;
wire   [10:0] add_ln255_6_fu_681_p2;
wire   [10:0] zext_ln242_2_fu_675_p1;
wire   [10:0] add_ln255_2_fu_686_p2;
wire   [22:0] lhs_2_fu_712_p3;
wire  signed [23:0] sext_ln1245_fu_720_p1;
wire  signed [23:0] grp_fu_925_p2;
wire   [6:0] trunc_ln414_fu_755_p1;
wire   [0:0] icmp_ln414_fu_758_p2;
wire   [0:0] and_ln414_fu_764_p2;
wire   [15:0] p_Val2_3_fu_737_p4;
wire   [15:0] zext_ln415_fu_770_p1;
wire   [0:0] xor_ln795_fu_796_p2;
wire   [0:0] xor_ln787_fu_806_p2;
wire   [0:0] or_ln787_fu_811_p2;
wire   [0:0] tmp_fu_821_p3;
wire   [0:0] xor_ln789_fu_828_p2;
wire   [0:0] or_ln789_fu_834_p2;
wire   [0:0] carry_2_fu_801_p2;
wire   [0:0] deleted_zeros_fu_816_p2;
wire   [0:0] xor_ln794_fu_850_p2;
wire   [0:0] or_ln794_fu_856_p2;
wire   [0:0] xor_ln794_4_fu_861_p2;
wire   [0:0] deleted_ones_fu_840_p2;
wire   [0:0] xor_ln795_4_fu_872_p2;
wire   [0:0] and_ln790_fu_845_p2;
wire   [0:0] or_ln795_fu_878_p2;
wire   [0:0] xor_ln795_193_fu_884_p2;
wire   [0:0] underflow_fu_890_p2;
wire   [0:0] overflow_fu_866_p2;
wire   [0:0] or_ln340_fu_895_p2;
wire   [15:0] select_ln384_fu_901_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mydataset_lane_Conv_ap_fixed_16_8_6_0_0_ap_fixed_16_8_6_0_0_ap_fixed_8_1_6_0_0_const_ap_fixedEe #(
    .DataWidth( 8 ),
    .AddressRange( 1152 ),
    .AddressWidth( 11 ))
layers_3_weight_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(layers_3_weight_V_address0),
    .ce0(layers_3_weight_V_ce0),
    .q0(layers_3_weight_V_q0)
);

mydataset_lane_mul_mul_16s_8s_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_mul_16s_8s_24_4_1_U22(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(in_r_q0),
    .din1(layers_3_weight_V_q0),
    .ce(1'b1),
    .dout(grp_fu_925_p2)
);

mydataset_lane_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ic_fu_126 <= 4'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln242_reg_1009 == 1'd0))) begin
            ic_fu_126 <= select_ln242_1_fu_488_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln242_fu_247_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten49_fu_130 <= add_ln242_fu_253_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten49_fu_130 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln242_fu_247_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_122 <= select_ln243_4_fu_347_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_122 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            lhs_fu_110 <= sext_ln240_cast_fu_207_p1;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            lhs_fu_110 <= select_ln340_fu_909_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln242_fu_247_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            m_fu_118 <= select_ln243_3_fu_317_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            m_fu_118 <= 3'd7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln242_fu_247_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            n_fu_114 <= add_ln244_fu_329_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            n_fu_114 <= 3'd7;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        Range2_all_ones_reg_1111 <= ret_V_fu_724_p2[32'd23];
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        icmp_ln242_reg_1009_pp0_iter2_reg <= icmp_ln242_reg_1009_pp0_iter1_reg;
        icmp_ln242_reg_1009_pp0_iter3_reg <= icmp_ln242_reg_1009_pp0_iter2_reg;
        icmp_ln242_reg_1009_pp0_iter4_reg <= icmp_ln242_reg_1009_pp0_iter3_reg;
        icmp_ln242_reg_1009_pp0_iter5_reg <= icmp_ln242_reg_1009_pp0_iter4_reg;
        p_Result_3_reg_1093 <= ret_V_fu_724_p2[32'd22];
        p_Result_4_reg_1104 <= p_Val2_4_fu_774_p2[32'd15];
        p_Result_s_reg_1087 <= ret_V_fu_724_p2[32'd23];
        p_Val2_4_reg_1099 <= p_Val2_4_fu_774_p2;
        ret_V_reg_1082 <= ret_V_fu_724_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln242_reg_1009 == 1'd0))) begin
        add_ln1169_reg_1057 <= add_ln1169_fu_664_p2;
        add_ln255_5_reg_1052 <= add_ln255_5_fu_648_p2;
        select_ln242_2_reg_1047 <= select_ln242_2_fu_530_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln242_fu_247_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln244_reg_1037 <= add_ln244_fu_329_p2;
        add_ln255_reg_1042 <= add_ln255_fu_335_p2;
        and_ln242_reg_1026 <= and_ln242_fu_291_p2;
        icmp_ln243_reg_1013 <= icmp_ln243_fu_265_p2;
        indvars_iv_next29_dup_reg_1032 <= indvars_iv_next29_dup_fu_297_p2;
        select_ln242_reg_1021 <= select_ln242_fu_271_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln242_reg_1009 <= icmp_ln242_fu_247_p2;
        icmp_ln242_reg_1009_pp0_iter1_reg <= icmp_ln242_reg_1009;
        m_3_reg_1003 <= ap_sig_allocacmp_m_3;
        p_shl_cast_cast_reg_998[9 : 0] <= p_shl_cast_cast_fu_203_p1[9 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln242_fu_247_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln242_reg_1009 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten49_load = indvar_flatten49_fu_130;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_122;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_lhs_load_1 = select_ln340_fu_909_p3;
    end else begin
        ap_sig_allocacmp_lhs_load_1 = lhs_fu_110;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_m_3 = 3'd7;
    end else begin
        ap_sig_allocacmp_m_3 = m_fu_118;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_n_load = 3'd7;
    end else begin
        ap_sig_allocacmp_n_load = n_fu_114;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        layers_3_weight_V_ce0 = 1'b1;
    end else begin
        layers_3_weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln242_reg_1009_pp0_iter5_reg == 1'd1))) begin
        lhs_out_ap_vld = 1'b1;
    end else begin
        lhs_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1169_1_fu_654_p2 = (select_ln242_1_cast_fu_495_p1 + shl_ln3_fu_640_p3);

assign add_ln1169_fu_664_p2 = (zext_ln1169_1_fu_660_p1 + select_ln243_1_fu_593_p3);

assign add_ln242_1_fu_478_p2 = (ic_fu_126 + 4'd1);

assign add_ln242_fu_253_p2 = (ap_sig_allocacmp_indvar_flatten49_load + 7'd1);

assign add_ln243_fu_341_p2 = (ap_sig_allocacmp_indvar_flatten_load + 4'd1);

assign add_ln244_fu_329_p2 = (select_ln243_fu_309_p3 + 3'd1);

assign add_ln255_1_fu_635_p2 = (zext_ln255_1_fu_632_p1 + select_ln238_2);

assign add_ln255_2_fu_686_p2 = (add_ln255_6_fu_681_p2 + zext_ln242_2_fu_675_p1);

assign add_ln255_3_fu_398_p2 = (zext_ln242_fu_378_p1 + p_shl7);

assign add_ln255_4_fu_407_p2 = (zext_ln255_2_fu_403_p1 + zext_ln243_fu_394_p1);

assign add_ln255_5_fu_648_p2 = (select_ln243_2_fu_622_p3 + zext_ln255_fu_629_p1);

assign add_ln255_6_fu_681_p2 = ($signed(sext_ln255_fu_678_p1) + $signed(p_shl_cast_cast_reg_998));

assign add_ln255_7_fu_515_p2 = (zext_ln242_1_fu_484_p1 + p_shl7);

assign add_ln255_8_fu_524_p2 = (zext_ln255_3_fu_520_p1 + zext_ln243_1_fu_511_p1);

assign add_ln255_fu_335_p2 = (trunc_ln246_fu_325_p1 + 2'd1);

assign and_ln242_fu_291_p2 = (xor_ln242_fu_279_p2 & icmp_ln244_fu_285_p2);

assign and_ln414_fu_764_p2 = (p_Result_s_fu_729_p3 & icmp_ln414_fu_758_p2);

assign and_ln790_fu_845_p2 = (carry_2_fu_801_p2 & Range2_all_ones_reg_1111);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign carry_2_fu_801_p2 = (xor_ln795_fu_796_p2 & p_Result_3_reg_1093);

assign deleted_ones_fu_840_p2 = (or_ln789_fu_834_p2 & Range2_all_ones_reg_1111);

assign deleted_zeros_fu_816_p2 = (or_ln787_fu_811_p2 ^ Range2_all_ones_reg_1111);

assign empty_177_fu_416_p2 = ($signed(sext_ln243_fu_413_p1) + $signed(select_ln237_2));

assign empty_178_fu_450_p2 = (p_shl_fu_430_p3 - p_shl11_cast_fu_446_p1);

assign empty_179_fu_456_p1 = indvars_iv_next29_fu_421_p2[1:0];

assign empty_180_fu_472_p2 = (p_shl9_cast_fu_468_p1 - indvars_iv_next29_cast13_fu_426_p1);

assign empty_182_fu_499_p1 = add_ln242_1_fu_478_p2[2:0];

assign empty_183_fu_600_p1 = indvars_iv_next29_mid1_fu_558_p2[1:0];

assign empty_fu_382_p1 = ic_fu_126[2:0];

assign icmp_ln242_fu_247_p2 = ((ap_sig_allocacmp_indvar_flatten49_load == 7'd72) ? 1'b1 : 1'b0);

assign icmp_ln243_fu_265_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln244_fu_285_p2 = ((ap_sig_allocacmp_n_load == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln414_fu_758_p2 = ((trunc_ln414_fu_755_p1 != 7'd0) ? 1'b1 : 1'b0);

assign in_r_address0 = zext_ln1169_2_fu_697_p1;

assign indvars_iv_next29_cast13_fu_426_p1 = indvars_iv_next29_fu_421_p2;

assign indvars_iv_next29_cast13_mid1_fu_563_p1 = indvars_iv_next29_mid1_fu_558_p2;

assign indvars_iv_next29_dup_fu_297_p2 = (select_ln242_fu_271_p3 + 3'd1);

assign indvars_iv_next29_fu_421_p2 = ($signed(m_3_reg_1003) + $signed(3'd1));

assign indvars_iv_next29_mid1_fu_558_p2 = (select_ln242_reg_1021 + 3'd2);

assign layers_3_weight_V_address0 = zext_ln1169_fu_692_p1;

assign lhs_2_fu_712_p3 = {{ap_sig_allocacmp_lhs_load_1}, {7'd0}};

assign lhs_out = lhs_fu_110;

assign or_ln243_fu_303_p2 = (icmp_ln243_fu_265_p2 | and_ln242_fu_291_p2);

assign or_ln340_fu_895_p2 = (underflow_fu_890_p2 | overflow_fu_866_p2);

assign or_ln787_fu_811_p2 = (xor_ln787_fu_806_p2 | p_Result_4_reg_1104);

assign or_ln789_fu_834_p2 = (xor_ln789_fu_828_p2 | or_ln787_fu_811_p2);

assign or_ln794_fu_856_p2 = (xor_ln794_fu_850_p2 | p_Result_4_reg_1104);

assign or_ln795_fu_878_p2 = (xor_ln795_fu_796_p2 | xor_ln795_4_fu_872_p2);

assign overflow_fu_866_p2 = (xor_ln794_4_fu_861_p2 & or_ln794_fu_856_p2);

assign p_Result_s_fu_729_p3 = ret_V_fu_724_p2[32'd23];

assign p_Val2_3_fu_737_p4 = {{ret_V_fu_724_p2[22:7]}};

assign p_Val2_4_fu_774_p2 = (p_Val2_3_fu_737_p4 + zext_ln415_fu_770_p1);

assign p_mid14_fu_587_p2 = (p_shl10_mid1_fu_567_p3 - p_shl11_cast_mid1_fu_583_p1);

assign p_mid16_fu_616_p2 = (p_shl9_cast_mid1_fu_612_p1 - indvars_iv_next29_cast13_mid1_fu_563_p1);

assign p_mid1_fu_553_p2 = ($signed(sext_ln243_1_fu_550_p1) + $signed(select_ln237_2));

assign p_shl10_mid1_fu_567_p3 = {{p_mid1_fu_553_p2}, {7'd0}};

assign p_shl11_cast_fu_446_p1 = p_shl5_fu_438_p3;

assign p_shl11_cast_mid1_fu_583_p1 = p_shl11_mid1_fu_575_p3;

assign p_shl11_mid1_fu_575_p3 = {{p_mid1_fu_553_p2}, {3'd0}};

assign p_shl5_fu_438_p3 = {{empty_177_fu_416_p2}, {3'd0}};

assign p_shl8_fu_386_p3 = {{empty_fu_382_p1}, {3'd0}};

assign p_shl8_mid1_fu_503_p3 = {{empty_182_fu_499_p1}, {3'd0}};

assign p_shl9_cast_fu_468_p1 = p_shl9_fu_460_p3;

assign p_shl9_cast_mid1_fu_612_p1 = p_shl9_mid1_fu_604_p3;

assign p_shl9_fu_460_p3 = {{empty_179_fu_456_p1}, {2'd0}};

assign p_shl9_mid1_fu_604_p3 = {{empty_183_fu_600_p1}, {2'd0}};

assign p_shl_cast_cast_fu_203_p1 = p_shl_cast;

assign p_shl_fu_430_p3 = {{empty_177_fu_416_p2}, {7'd0}};

assign ret_V_fu_724_p2 = ($signed(sext_ln1245_fu_720_p1) + $signed(grp_fu_925_p2));

assign select_ln242_1_cast_fu_495_p1 = select_ln242_1_fu_488_p3;

assign select_ln242_1_fu_488_p3 = ((icmp_ln243_reg_1013[0:0] == 1'b1) ? add_ln242_1_fu_478_p2 : ic_fu_126);

assign select_ln242_2_fu_530_p3 = ((icmp_ln243_reg_1013[0:0] == 1'b1) ? add_ln255_8_fu_524_p2 : add_ln255_4_fu_407_p2);

assign select_ln242_3_fu_537_p3 = ((icmp_ln243_reg_1013[0:0] == 1'b1) ? p_mid138 : empty_178_fu_450_p2);

assign select_ln242_4_fu_543_p3 = ((icmp_ln243_reg_1013[0:0] == 1'b1) ? 5'd0 : empty_180_fu_472_p2);

assign select_ln242_fu_271_p2 = ap_sig_allocacmp_m_3;

assign select_ln242_fu_271_p3 = ((icmp_ln243_fu_265_p2[0:0] == 1'b1) ? 3'd7 : select_ln242_fu_271_p2);

assign select_ln243_1_fu_593_p3 = ((and_ln242_reg_1026[0:0] == 1'b1) ? p_mid14_fu_587_p2 : select_ln242_3_fu_537_p3);

assign select_ln243_2_fu_622_p3 = ((and_ln242_reg_1026[0:0] == 1'b1) ? p_mid16_fu_616_p2 : select_ln242_4_fu_543_p3);

assign select_ln243_3_fu_317_p3 = ((and_ln242_fu_291_p2[0:0] == 1'b1) ? indvars_iv_next29_dup_fu_297_p2 : select_ln242_fu_271_p3);

assign select_ln243_4_fu_347_p3 = ((icmp_ln243_fu_265_p2[0:0] == 1'b1) ? 4'd1 : add_ln243_fu_341_p2);

assign select_ln243_fu_309_p3 = ((or_ln243_fu_303_p2[0:0] == 1'b1) ? 3'd7 : ap_sig_allocacmp_n_load);

assign select_ln340_fu_909_p3 = ((or_ln340_fu_895_p2[0:0] == 1'b1) ? select_ln384_fu_901_p3 : p_Val2_4_reg_1099);

assign select_ln384_fu_901_p3 = ((overflow_fu_866_p2[0:0] == 1'b1) ? 16'd32767 : 16'd32768);

assign sext_ln1245_fu_720_p1 = $signed(lhs_2_fu_712_p3);

assign sext_ln240_cast_fu_207_p1 = $signed(sext_ln240);

assign sext_ln243_1_fu_550_p1 = indvars_iv_next29_dup_reg_1032;

assign sext_ln243_fu_413_p1 = m_3_reg_1003;

assign sext_ln255_fu_678_p1 = $signed(add_ln255_5_reg_1052);

assign shl_ln3_fu_640_p3 = {{add_ln255_1_fu_635_p2}, {3'd0}};

assign tmp_fu_821_p3 = ret_V_reg_1082[32'd23];

assign trunc_ln246_fu_325_p1 = select_ln243_fu_309_p3[1:0];

assign trunc_ln414_fu_755_p1 = grp_fu_925_p2[6:0];

assign underflow_fu_890_p2 = (xor_ln795_193_fu_884_p2 & p_Result_s_reg_1087);

assign xor_ln242_fu_279_p2 = (icmp_ln243_fu_265_p2 ^ 1'd1);

assign xor_ln787_fu_806_p2 = (p_Result_3_reg_1093 ^ 1'd1);

assign xor_ln789_fu_828_p2 = (tmp_fu_821_p3 ^ 1'd1);

assign xor_ln794_4_fu_861_p2 = (p_Result_s_reg_1087 ^ 1'd1);

assign xor_ln794_fu_850_p2 = (deleted_zeros_fu_816_p2 ^ 1'd1);

assign xor_ln795_193_fu_884_p2 = (or_ln795_fu_878_p2 ^ and_ln790_fu_845_p2);

assign xor_ln795_4_fu_872_p2 = (deleted_ones_fu_840_p2 ^ 1'd1);

assign xor_ln795_fu_796_p2 = (p_Result_4_reg_1104 ^ 1'd1);

assign zext_ln1169_1_fu_660_p1 = add_ln1169_1_fu_654_p2;

assign zext_ln1169_2_fu_697_p1 = add_ln1169_reg_1057;

assign zext_ln1169_fu_692_p1 = add_ln255_2_fu_686_p2;

assign zext_ln242_1_fu_484_p1 = add_ln242_1_fu_478_p2;

assign zext_ln242_2_fu_675_p1 = select_ln242_2_reg_1047;

assign zext_ln242_fu_378_p1 = ic_fu_126;

assign zext_ln243_1_fu_511_p1 = p_shl8_mid1_fu_503_p3;

assign zext_ln243_fu_394_p1 = p_shl8_fu_386_p3;

assign zext_ln255_1_fu_632_p1 = add_ln255_reg_1042;

assign zext_ln255_2_fu_403_p1 = add_ln255_3_fu_398_p2;

assign zext_ln255_3_fu_520_p1 = add_ln255_7_fu_515_p2;

assign zext_ln255_fu_629_p1 = add_ln244_reg_1037;

assign zext_ln415_fu_770_p1 = and_ln414_fu_764_p2;

always @ (posedge ap_clk) begin
    p_shl_cast_cast_reg_998[10] <= 1'b0;
end

endmodule //mydataset_lane_Conv_ap_fixed_16_8_6_0_0_ap_fixed_16_8_6_0_0_ap_fixed_8_1_6_0_0_const_ap_fixed_8_1_6_0_0_const_8_15_15_16_13_13_3_1_0_Pipeline_VITIS_LOOP_242_4_VITIS_LOOP_243_5_VITIS_LOOP_244_6
