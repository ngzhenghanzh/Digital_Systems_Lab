`timescale 1ns / 1ps

module CCTA_tb();
reg [3:0] A;
reg [3:0] B;
reg [3:0] C;
reg rst;
reg ctrl;
wire [4:0] q;

CCTA CCTA_u0(
    .A(A),
    .B(B),
    .C(C),
    .rst(rst),
    .ctrl(ctrl),
    .q(q)
);

initial begin 
    A = 4'h4; B = 4'h1; C = 4'h9; rst = 1'h1; ctrl = 1'h0;
    #10 rst = 1'h0;
    #10 A = 4'h3; B = 4'hd; C = 4'hd;
    #10 A = 4'h5; B = 4'h2; C = 4'h1;
    #10 A = 4'hd; B = 4'h6; C = 4'hd;
    #10 A = 4'hd; B = 4'hc; C = 4'h9;
    #10 A = 4'h6; B = 4'h5; C = 4'ha; ctrl = 1'h1;
    #10 A = 4'h5; B = 4'h7; C = 4'h2;
    #10 A = 4'hf; B = 4'h2; C = 4'he;
    #10 A = 4'h8; B = 4'h5; C = 4'hc;
    #10 A = 4'hd; B = 4'hd; C = 4'h5;
    #10 A = 4'h3; B = 4'ha; C = 4'h0;
    #10 $stop;
    $finish;
    
end

endmodule
