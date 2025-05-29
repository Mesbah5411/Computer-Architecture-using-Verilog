`include "d_ff_reset.v"
`timescale 1ns/1ps

module d_ff_reset_tb;

    reg clk;
    reg d;
    reg reset;
    wire q;

d_ff_reset abc(.clk(clk),.d(d),.reset(reset),.q(q));

    always begin
        clk = 0;
        forever#10 clk = ~clk;
    end
    initial begin
        reset <= 1;
        d <= 1;
        #20;
        reset <= 0;
        d <= 1;
        #20;
        $finish;
    end

    initial begin
        $monitor("clk = %b, reset = %b, d = %b, q = %b", clk, reset, d, q);
    end
    
endmodule