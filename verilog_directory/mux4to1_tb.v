`include "mux4to1.v"
`timescale 1ns/1ps

module mux4to1_tb;

reg i0,i1,i2,i3;
reg [1:0] selection_line;
wire y;

mux4to1 abc(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.selection_line(selection_line),.y(y));

initial begin
    i0 = 0; i1 = 0 ; i2 = 1 ; i3 = 1;
    #20 
    $display(" I0 = %d, I1= %d, I2 = %d, I3 = %d  \n", i0 , i1, i2, i3 );
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
    $monitor("S1 = %b , S0 = %b , OUTPUT = %b\n", selection_line[1],selection_line[0],y );
end
    
endmodule