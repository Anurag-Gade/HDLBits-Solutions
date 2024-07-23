module top_module( 
    input [254:0] in,
    output [7:0] out );

    integer i;
    wire [7:0] count;
    
    always @ (*) begin
        
        count = 8'b0;
        
        for (i = 0; i <= 254; i = i + 1) begin
            
            if (in[i] == 1) begin
                
                count = count + 1'b1;
                
            end
            
        end
        
        out = count;
        
    end
    
endmodule
