`timescale 1ns / 1ps

module quadratic # (parameter WL_x = 8, WL_A = 4, WL_B = 4, WL_C = 4,
                    parameter signed [WL_A - 1 : 0] a = -4,
                    parameter signed [WL_B - 1 : 0] b = 3,
                    parameter signed [WL_C - 1 : 0] c = -3,
                    parameter WL_X_Squared = WL_x + WL_x,
                    parameter WL_Mult = WL_X_Squared + WL_A,
                    parameter WL_Mult_2 = WL_x + WL_B,
                    parameter WL_Out = (WL_Mult_2 > WL_C) ? WL_Mult_2 + 1 : WL_C + 1)
                    (input signed [WL_x - 1 : 0] x,
                     input CLK,
                     output reg signed [WL_Out - 1 : 0] out);



endmodule
