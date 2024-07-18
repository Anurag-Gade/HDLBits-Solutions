module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire and_1;
    wire and_2;
   	wire and_3;
    wire and_4;
    
    assign and_1 = p2a & p2b;
    assign and_2 = p2c & p2d;
    
    assign and_3 = p1a & p1c & p1b;
    assign and_4 = p1f & p1e & p1d;
    
    assign p2y = and_1 | and_2;
    assign p1y = and_3 | and_4;

endmodule
