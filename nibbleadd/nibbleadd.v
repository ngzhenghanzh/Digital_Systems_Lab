`timescale 1ns / 1ps
//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module nibbleadd(
    input [7:0]A,
    input [7:0]B,
    input ctrl,
    output [4:0]q
);

reg [4:0]q_out;
assign q = q_out;

always @* begin 
    if (ctrl == 0) begin
        q_out = A[3:0] + B[3:0];
    end 
    else begin 
        q_out = A[7:4] + B[7:4];
    end
end 
endmodule