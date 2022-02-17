module test_fa;

reg a,b,cin;
wire s,c;

fa ifa(a,b,cin,s,c);

initial begin
    a=0;b=0;cin=0;
    #10 a=1;
    #10 a=1; b=1;
    #10 a=0;
    #10 cin=1;b=0;
    #10 a=1;
    #10 a=1; b=1;
    #10 a=0;
    #10
    $finish;
    $dumpflush;
end
initial begin
    $monitor($time, "a=%b b=%b cin=%b sum=%b carry=%b",a,b,cin,s,c);
    $dumpfile("test_fa.vcd");
    $dumpvars(0,test_fa);
end
endmodule