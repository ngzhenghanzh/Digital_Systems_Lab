`timescale 1ns / 1ps

//!DO NOT MODIFY MODULE NAME AND PORT NAME!
module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output [1:0]W,
    output [1:0]X,
    output [1:0]Y,
    output [1:0]Z
    );
    
reg [1:0]w_in;
reg [1:0]x_in;
reg [1:0]y_in;
reg [1:0]z_in;
assign W = w_in;
assign X = x_in;
assign Y = y_in;
assign Z = z_in;

always @* begin 
    case (SEL) 
        2'b00: begin w_in = A; x_in = 2'b00; y_in = 2'b00; z_in = 2'b00; end
        2'b01: begin w_in = 2'b00; x_in = A; y_in = 2'b00; z_in = 2'b00; end
        2'b10: begin w_in = 2'b00; x_in = 2'b00; y_in = A; z_in = 2'b00; end
        2'b11: begin w_in = 2'b00; x_in = 2'b00; y_in = 2'b00; z_in = A; end
        default: begin w_in = 2'b00; x_in = 2'b00; y_in = 2'b00; z_in = 2'b00; end
    endcase
end
endmodule
