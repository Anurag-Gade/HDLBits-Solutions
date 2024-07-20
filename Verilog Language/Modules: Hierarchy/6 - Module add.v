module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	
    wire carry_1, carry_2;
    
    add16 adder_low (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(carry_1));
    add16 adder_up (.a(a[31:16]), .b(b[31:16]), .cin(carry_1), .sum(sum[31:16]), .cout(carry_2));
    
endmodule
