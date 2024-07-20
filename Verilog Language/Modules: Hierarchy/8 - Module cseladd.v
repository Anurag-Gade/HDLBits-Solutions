module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
  
    wire cout_low, cout_0, cout_1;
    wire [15:0] sum_0, sum_1;
    
    add16 adder_low (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(cout_low));
    add16 adder_0 (.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_0), .cout(cout_0));
    add16 adder_1 (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_1), .cout(cout_1));
    
    always @ (*) begin
        case(cout_low)
            0: sum[31:16] = sum_0;
            1: sum[31:16] = sum_1;
        endcase
    end
    

endmodule
