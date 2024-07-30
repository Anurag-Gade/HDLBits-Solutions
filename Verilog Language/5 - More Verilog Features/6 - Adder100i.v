module one_bit_adder(input a, 
                     input b,
                     input cin,
                     output sum, 
                     output cout);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | cin & (a ^ b);
    
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    genvar i;
    one_bit_adder zero_bit(.a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]));
    
    generate 
        
        for (i = 1; i <=99; i = i + 1) begin: adder_blocks
            
            one_bit_adder adder_bit(.a(a[i]), .b(b[i]), .cin(cout[i - 1]), .cout(cout[i]), .sum(sum[i]));
            
        end
        
    endgenerate
        
        
endmodule
