// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module mydataset_lane_Conv_ap_fixed_16_8_6_0_0_ap_fixed_16_8_6_0_0_ap_fixed_8_1_6_0_0_const_ap_fixeeOg (
address0, ce0, q0, reset,clk);

parameter DataWidth = 7;
parameter AddressWidth = 4;
parameter AddressRange = 16;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./mydataset_lane_Conv_ap_fixed_16_8_6_0_0_ap_fixed_16_8_6_0_0_ap_fixed_8_1_6_0_0_const_ap_fixeeOg.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

