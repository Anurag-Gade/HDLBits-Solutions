module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire cout_1, cout_2;
    add16 adder_low (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(cout_1)); //lower 16 bits
    add16 adder_up (.a(a[31:16]), .b(b[31:16]), .cin(cout_1), .sum(sum[31:16]), .cout(cout_2)); //upper 16 bits

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
    
endmodule
