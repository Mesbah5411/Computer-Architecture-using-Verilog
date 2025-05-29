`include "comparator.v"
`timescale 1ns/1ps
module stimulus;
reg x;
reg y;
wire z;

comparator abc(x,y,z);

initial begin
   x = 0; y = 0; 
   #40;
   x = 0; 
   y = 1; 
   #40;
   x = 1; 
   y = 0; 
   #40;
   x = 1; y = 1; 
   #80;


end

initial begin
   $monitor("x=%d,y=%d,z=%d \n",x,y,z);
end

endmodule
