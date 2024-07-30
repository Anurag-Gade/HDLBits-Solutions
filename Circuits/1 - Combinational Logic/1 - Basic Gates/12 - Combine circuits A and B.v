module module_a (input x, input y, output z);
	
    assign z = (x ^ y) & x;
    
endmodule

module module_b ( input x, input y, output z );
	
    assign z = ~(x ^ y);
    
endmodule

module top_module (input x, input y, output z);
    
    wire intermediate_1, intermediate_2, intermediate_3, intermediate_4;
    wire gate_output_1, gate_output_2;
    
    module_a a_1 (.x(x), .y(y), .z(intermediate_1));
    module_b b_1 (.x(x), .y(y), .z(intermediate_2));
    module_a a_2 (.x(x), .y(y), .z(intermediate_3));
    module_b b_2 (.x(x), .y(y), .z(intermediate_4));
    
    assign gate_output_1 = intermediate_1 | intermediate_2;
    assign gate_output_2 = intermediate_3 & intermediate_4;
    
    assign z = gate_output_1 ^ gate_output_2;

endmodule
