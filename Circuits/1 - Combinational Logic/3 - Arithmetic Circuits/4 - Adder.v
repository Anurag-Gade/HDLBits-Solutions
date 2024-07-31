module full_adder( 
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = a & b | cin & (a ^ b);
    
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire cout_0, cout_1, cout_2, cout_3;
    full_adder FA0 (.a(x[0]), .b(y[0]), .cin(0), .cout(cout_0), .sum(sum[0]));
    full_adder FA1 (.a(x[1]), .b(y[1]), .cin(cout_0), .cout(cout_1), .sum(sum[1]));
    full_adder FA2 (.a(x[2]), .b(y[2]), .cin(cout_1), .cout(cout_2), .sum(sum[2]));
    full_adder FA3 (.a(x[3]), .b(y[3]), .cin(cout_2), .cout(sum[4]), .sum(sum[3]));


endmodule
