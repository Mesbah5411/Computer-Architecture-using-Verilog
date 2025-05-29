`include "demux1to4.v"
`timescale 1ns/1ps

module demux1to4_tb;

reg i;
reg [1:0] selection_line;
wire [3:0] y;

demux1to4 abc(.i(i),.selection_line(selection_line),.y(y));

initial begin
    i = 1;     //input maybe 1 or 0
    #20 
    $display(" Input = %d\n",i );
    selection_line[1] = 0;  selection_line[0] = 0;
    #20;
    selection_line[1] = 0;  selection_line[0] = 1;
    #20;
    selection_line[1] = 1;  selection_line[0] = 0;
    #20;
    selection_line[1] = 1;  selection_line[0] = 1;
    #20;
end
initial begin
    $monitor("S1 = %b , S0 = %b , y[3] = %b , y[2] = %b ,y[1] = %b ,y[0] = %b\n", selection_line[1],selection_line[0],y[3], y[2],y[1],y[0] );
end
    
endmodule