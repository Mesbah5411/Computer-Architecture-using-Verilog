`include "encoder4to2.v"
`timescale 1ns/1ps

module decoder2to4_tb;
    reg [3:0]D;
    reg E;
    wire [1:0] A;

encoder4to2 abc(.D(D),.E(E),.A(A));

initial begin
    D[3] = 0; D[2] = 0; D[1] = 0; D[0] = 0; E = 0;
    #20;
    D[3] = 0; D[2] = 0; D[1] = 0; D[0] = 1; E = 1;
    #20;
    D[3] = 0; D[2] = 0; D[1] = 1; D[0] = 0; E = 1;
    #20;
    D[3] = 0; D[2] = 1; D[1] = 0; D[0] = 0; E = 1;
    #20;
    D[3] = 1; D[2] = 0; D[1] = 0; D[0] = 0; E = 1;
    #20;
    
end
initial begin
    $monitor("E = %d D[3] = %d D[2] = %d D[1] = %d D[0] = %d A[1] = %d A[0] = %d\n",E,D[3],D[2],D[1],D[0],A[1],A[0]);
end
endmodule