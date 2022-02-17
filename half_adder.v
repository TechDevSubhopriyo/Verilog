module half_adder(s,c,a,b);
input a,b;
output s,c;

assign #3 s = a^b;
assign #2 c = a&b;

endmodule