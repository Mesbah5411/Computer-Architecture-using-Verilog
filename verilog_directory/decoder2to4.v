module decoder2to4(
    input [1:0] A,
    input E,
    //---->assign er jonno output likhte hobe
    //output [3:0] D
    //---->always use korle reg lagate hobe ekta
    output reg [3:0]D
);
    //using asign
    /*
    assign D[0] = E & ~A[1] & ~A[0];
    assign D[1] = E & ~A[1] & A[0];
    assign D[2] = E & A[1] & ~A[0];
    assign D[3] = E & A[1] & A[0];
    */

    //using if
    /*
    always @*
    begin
        
        if(E == 1'b0)
            D = 4'b0000;
        else if(A == 2'b00)
            D = 4'b0001;
        else if(A == 2'b01)
            D = 4'b0010;
        else if(A == 2'b10)
            D = 4'b0100;
        else 
            D = 4'b1000;
        

    end
    */


    //using case
        always @*
        begin
            case({E,A})
            3'b100: D = 4'b0001; 
            3'b101: D = 4'b0010;
            3'b110: D = 4'b0100;
            3'b111: D = 4'b1000;
            default: D = 4'b0000;
            endcase
        end

endmodule