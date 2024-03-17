`timescale 1ns / 1ps

//!DO NOT EDIT MODULE NAME AND PORT NAME!
module multiplexer(
    input [1:0]A,
    input [1:0]B,
    input [1:0]C,
    input [1:0]D,
    input [1:0]SEL,
    output [1:0]X
);

//YOUR CODE HERE
reg [1:0]out;
assign X = out;

always @* begin 
    case(SEL)
        2'b00: out = A;
        2'b01: out = B;
        2'b10: out = C; 
        2'b11: out = D;
    endcase
end 
//TIPS: IN THE VERILOG CASE STATEMENT, YOU HAVE TO LIST ALL CONDITION TO AVIOD ANY AMBIGUOUS STATEMENT;
endmodule
