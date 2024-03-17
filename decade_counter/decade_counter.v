`timescale 1ns / 1ps
module decade_counter(
    input clk,
    input rst,
    output [3:0] count,
    output ten
);
reg [3:0]count_r;
reg ten_r ;
assign count = count_r;
assign ten = ten_r;

always @(posedge rst) begin
    if (rst) begin 
        count_r <= 4'b0000;
        ten_r <= 1'b0;
    end
end
always @(negedge rst or posedge clk) begin
    if ((clk) && (!rst)) begin
        count_r <= count_r + 4'b0001;       
    end 
    if (count_r == 4'b1001) begin
        count_r <= 4'b0000;
        ten_r <= 1'b1;
    end
    else begin
        ten_r <= 1'b0;        
    end
end
endmodule

