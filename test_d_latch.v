module test_d_latch;

reg clk,d;
wire q;

d_latch id_latch(d,clk,q);

always #8 clk=~clk;
always #5 d=~d;
initial begin 
    clk=0;d=0;
    
    #100
    $dumpflush;
    $finish;
end
initial begin
    $monitor($time, "d=%b clk=%b q=%b", d,clk,q);
    $dumpfile("test_d_latch.vcd");
    $dumpvars(0,test_d_latch);
end
endmodule