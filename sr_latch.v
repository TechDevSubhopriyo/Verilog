module sr_latch(clk,s,r,q,qb);

input s,r,clk;
output q,qb;
reg out;

always@(posedge clk)
    if(s==1 && r==0) out<=1'b1;
    else if(s==0 && r==1) out<=1'b0;
    
assign q = out;
assign qb = ~q;

endmodule;