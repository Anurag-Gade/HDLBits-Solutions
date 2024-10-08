module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire cout1, cout2;
    wire [31:0] xored;
    
    assign xored = b ^ {32{sub}};
    
    add16 adder_low (.a(a[15:0]), .b(xored[15:0]), .cin(sub), .sum(sum[15:0]), .cout(cout1));
    add16 adder_up (.a(a[31:16]), .b(xored[31:16]), .cin(cout1), .sum(sum[31:16]), .cout(cout2));

endmodule
