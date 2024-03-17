`timescale 1ns / 1ps
module decade_counter_tb();

reg clk;
reg rst;
wire [3:0]count;
wire ten;

decade_counter decade_counter_u0(
    .clk(clk),
    .rst(rst),
    .count(count),
    .ten(ten)
);

always begin
    //YOUR CODE HERE - Generate 20 unit time clock;
    #10 clk = !clk;
end

initial begin
    //YOUR CODE HERE - Initialize the clk, rst;
    clk = 0;
    rst <= 1'b1;
    #30 rst <= 1'b0;
    #200 $stop;
end

endmodule