module and_gate(a,b,y);

input a,b;
output y;
reg out;
//assign y = a&b;

always@(a or b)
    if(a==0 && b==0) out<=1'b0;
    else if(a==0 && b==1) out<=1'b0;
    else if(a==1 && b==0) out<=1'b0;
    else if(a==1 && b==1) out<=1'b1; 

assign y=out;

endmodule