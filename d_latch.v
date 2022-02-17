module d_latch(d,clk,q);

input d,clk;
output q;
reg y;

always@(posedge clk)
    y<=d;
assign q=y;
endmodule