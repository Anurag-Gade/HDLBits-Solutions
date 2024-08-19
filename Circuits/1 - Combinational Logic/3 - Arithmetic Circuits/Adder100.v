module full_bit_adder(input a, 
                      input b,
                      input cin,
                      output cout,
                      output sum);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
    
endmodule


module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
	genvar i;
    wire [98:0] connectors;
    full_bit_adder FA0 (.a(a[0]), .b(b[0]), .cin(cin), .cout(connectors[0]), .sum(sum[0]));
    full_bit_adder FA99 (.a(a[99]), .b(b[99]), .cin(connectors[98]), .cout(cout), .sum(sum[99]));
    
    generate
        
        for (i = 1; i <= 98; i = i + 1) begin : Full_Adder
            
            full_bit_adder FA (.a(a[i]), .b(b[i]), .cin(connectors[i - 1]), .cout(connectors[i]), .sum(sum[i]));
            
        end
        
    endgenerate

endmodule
