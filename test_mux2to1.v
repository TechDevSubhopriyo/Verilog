module test_mux2to1;
reg a,b,sel;
wire y;

mux2to1 imux2to1(a,b,sel,y);

initial begin

a=0; b=0; sel=0;
#10 a=1; 
#10 sel=1;
#10 b=1;
#10; 
$dumpflush;
$finish;
end
initial begin
$monitor($time, "a=%b b=%b sel=%b y=%b", a,b,sel,y);
$dumpfile("test_mux2to1.vcd");
$dumpvars(0,test_mux2to1);
end
endmodule