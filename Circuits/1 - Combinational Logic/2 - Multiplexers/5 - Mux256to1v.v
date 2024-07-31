module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
	
    integer select;
    always @ (*) begin
        
        select = sel;
        out = in[sel*4 +: 4];
        
    end
    
endmodule
