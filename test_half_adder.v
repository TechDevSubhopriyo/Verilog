module test_half_adder;

reg a,b;
wire s,c;

half_adder ihalf_adder(s,c,a,b);

initial begin
    a=0;
    b=0;
    #10 b=1;
    #10 a=1;b=0;
    #10 b=1;
    #10
    $dumpflush;
    $finish;
end
initial begin
    $monitor($time, "a=%b b=%b s=%b c=%b",a,b,s,c);
    $dumpfile("test_half_adder.vcd");
    $dumpvars(0,test_half_adder);
end
endmodule
