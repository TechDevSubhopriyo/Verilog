module fa_using_ha;

reg a,b,cin;
wire s,c;

wire s1,c1,c2;

ha iha1(a,b,s1,c1);
ha iha2(s1,cin,s,c2);

assign c=c1|c2;

initial begin
    a=0;b=0;cin=0; #10
    a=1; #10
    a=0;b=1; #10
    a=1; #10
    a=0;b=0;cin=1; #10
    a=1; #10
    a=0;b=1; #10
    a=1; #10
    $finish;
    $dumpflush;
end
initial begin
    $monitor($time,"a=%b b=%b cin=%b sum=%b carry=%b",a,b,cin,s,c);
    $dumpfile("decoder.vcd");
    $dumpvars(0,fa_using_ha);
end
endmodule