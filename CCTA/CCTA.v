`timescale 1ns / 1ps

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module CCTA(
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input rst,
        input ctrl,
        output [4:0] q
);
reg [4:0]q_out;
assign q = q_out;

always @* begin
    if (rst == 1'h1) begin 
        q_out = 5'h0;
    end
    else begin
        if (ctrl == 1'h0) begin 
            q_out = A + B;
        end 
        else begin
            q_out = A - C;
        end
    end
end

endmodule