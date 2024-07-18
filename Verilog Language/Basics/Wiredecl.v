`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and_o1;
    wire and_o2;
    
    assign and_o1 = a & b;
    assign and_o2 = c & d;
    assign out = (and_o1 | and_o2);
    assign out_n = ~out; 

endmodule
