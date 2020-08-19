`timescale 1ns / 1ns

module tb_quadratic;

// parameters
parameter WL_x = 4, WL_A = 4, WL_B = 4, WL_C = 4;
//Inputs
reg CLK;
reg signed [WL_x - 1 : 0] x;
//Outputs
wire signed [13 : 0] out;
// Clock generation 
initial CLK <= 0;
always #10 CLK <= ~CLK;
//Instantiate DUT
quadratic #(.WL_x(WL_x), .WL_A(WL_A), .WL_B(WL_B), .WL_C(WL_C))
        DUT(.CLK(CLK), .x(x), .out(out));
initial
begin
    @(posedge CLK);
    x <= 4'b1001;
    @(posedge CLK);
    x <= 4'b0001;
    @(posedge CLK);
    x <= 4'b1111;
    @(posedge CLK);
    @(posedge CLK);
    $stop;
end
endmodule

