module demux1to4(
    input i,
    input [1:0] selection_line,
    output reg [3:0] y
);

always @*
begin
    if(selection_line == 2'b00) begin y[0] = i ; y[3:1] = 0; end
    else if(selection_line == 2'b01) begin y[1] = i ; y[3:2] = 0; y[0] = 0; end
    else if(selection_line == 2'b10) begin y[2] = i ; y[1:0] = 0; y[3] =0; end
    else begin y[3] = i ; y[2:0] = 0; end 
end

/*
always @*
begin
    case (selection_line)
        2'b00 : begin y[0] = i ; y[3:1] = 0; end
        2'b01 : begin y[1] = i ; y[3:2] = 0; y[0] = 0; end
        2'b10 : begin y[2] = i ; y[1:0] = 0; y[3] =0; end
        2'b11 : begin y[3] = i ; y[2:0] = 0; end 
    endcase
end
*/

endmodule