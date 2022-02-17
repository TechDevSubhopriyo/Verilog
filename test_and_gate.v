module test_and_gate;
reg a,b;
wire y;

and_gate iand_gate(a,b,y);

initial begin
    a=0;b=0;
    #10 b=1;
    #10 a=1;
    #10 b=0;
    #10
    $dumpflush;
    $finish;
end
initial begin
    $monitor($time, "a=%b b=%b y=%b", a,b,y);
    $dumpfile("test_and_gate.vcd");
    $dumpvars(0,test_and_gate);
end
endmodule
