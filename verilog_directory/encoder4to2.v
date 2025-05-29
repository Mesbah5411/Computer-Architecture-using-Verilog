module encoder4to2(
    input [3:0]D,
    input E,
    //---->assign er jonno output likhte hobe
    //output [1:0] A
    //---->always use korle reg lagate hobe ekta
    output reg [1:0]A
);
    //using asign
    /*
    assign A[1] = E & D[3] | D[2];
    assign A[0] = E & D[3] | D[1];
    */

    //using if
    /*
    always @*
    begin
        
        if(E == 1'b0)
            A = 2'b00;
        else if(D == 4'b0001)
            A = 2'b00;
        else if(D == 4'b0010)
            A = 2'b01;
        else if(D == 4'b0100)
            A = 2'b10;
        else 
            A = 2'b11;
        

    end
    */

    /*
    always @*
    begin
        if(E==1'b1)
        begin
        if(D == 4'b0001)
            A = 2'b00;
        else if(D == 4'b0010)
            A = 2'b01;
        else if(D == 4'b0100)
            A = 2'b10;
        else 
            A = 2'b11;
        end
        else A = 2'bzz;
    end
    */

    //using case
        
    
        always @*
        begin
            //casex maeans z or x ashuk o oitake don't care value hishebe dhore nibe
            casex({E,D})
            5'b10001: A = 2'b00; 
            5'b1001z: A = 2'b01;
            5'b101zz: A = 2'b10;
            5'b11zzz: A = 2'b11;
            default: A = 2'bzz;
            endcase
        end
    

endmodule