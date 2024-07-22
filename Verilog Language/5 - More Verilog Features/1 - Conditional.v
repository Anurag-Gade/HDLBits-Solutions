module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] intermediate_result_1; 
    wire [7:0] intermediate_result_2;
    
    always @ (*) begin
        
        intermediate_result_1 = (a < b) ? a : b;
        intermediate_result_2 = (intermediate_result_1 < c) ? intermediate_result_1 : c;
        min = (intermediate_result_2 < d) ? intermediate_result_2 : d;
        
    end

endmodule
