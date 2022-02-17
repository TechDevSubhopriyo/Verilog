module fa(a,b,cin,s,c);

input a,b,cin;
output s,c;
reg sum,carry;

always@(a or b or cin) begin
    sum<=a^b;
    carry<=a&b;
end
assign s=(sum^cin);
assign c=(carry)|(sum&cin);

endmodule