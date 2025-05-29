`include "decoder2to4.v"
`timescale 1ns/1ps

module decoder2to4_tb;
    reg [1:0] A;
    reg E;
    wire [3:0] D;

decoder2to4 abc(.A(A),.E(E),.D(D));

initial begin
    A[1] = 0; A[0] = 0; E = 0;
    #20;
    A[1] = 0;A[0] = 1;E=0;
    #20;
    A[1] = 1;A[0] = 0;E=0;
    #20;
    A[1] = 1;A[0] = 1;E=0;
    #20;
    A[1] = 0;A[0] = 0;E=1;
    #20;
    A[1] = 0;A[0] = 1;E=1;
    #20;
    A[1] = 1;A[0] = 0;E=1;
    #20;
    A[1] = 1;A[0] = 1;E=1;
    #20;
    
end
initial begin
    $monitor("E = %d A[1] = %d A[0] = %d D[3] = %d D[2] = %d D[1] = %d D[0] = %d\n",E,A[1],A[0],D[3],D[2],D[1],D[0]);
end
endmodule