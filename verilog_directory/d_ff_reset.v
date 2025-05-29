module d_ff_reset (
    input wire clk,
    input wire d,
    input wire reset,
    output reg q

);

always @(posedge clk,posedge reset) begin
    if(reset) q <= 1'b0;
    else q <= d;    
end
    
endmodule