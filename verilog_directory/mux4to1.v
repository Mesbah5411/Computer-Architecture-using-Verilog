module mux4to1(
    input i0,i1,i2,i3,
    input [1:0] selection_line,
    //output reg y
    output y
);

assign y = i0 & (~selection_line[0]) & (~selection_line[1]) |i1 & selection_line[0] & (~selection_line[1]) |i2 & (~selection_line[0]) & selection_line[1] |i3 & selection_line[0] & selection_line[1] ;
    /*
always @*
    begin
        if(selection_line == 2'b00)
        y = i0;
        else if(selection_line == 2'b01)
        y = i1;
        else if(selection_line == 2'b10)
        y = i2;
        else y = i3;    
    end
    */

    
    /*
        always @*
        begin
            case({selection_line})
            2'b00: y = i0; 
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            endcase
        end
     */   

endmodule