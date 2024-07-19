module top_module ( input clk, input d, output q );
	
    wire q1, q2;
    
    my_dff ff1 (.d(d), .q(q1), .clk(clk)); 
    my_dff ff2 (.d(q1), .q(q2), .clk(clk));
    my_dff ff3 (.d(q2), .q(q), .clk(clk));
    
endmodule
