module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [2:0] connectors;
    bcd_fadd bcd0 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(connectors[0]), .sum(sum[3:0]));
    bcd_fadd bcd1 (.a(a[7:4]), .b(b[7:4]), .cin(connectors[0]), .cout(connectors[1]), .sum(sum[7:4]));
    bcd_fadd bcd2 (.a(a[11:8]), .b(b[11:8]), .cin(connectors[1]), .cout(connectors[2]), .sum(sum[11:8]));
    bcd_fadd bcd3 (.a(a[15:12]), .b(b[15:12]), .cin(connectors[2]), .cout(cout), .sum(sum[15:12]));

endmodule
