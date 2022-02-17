module test_sr_latch;

reg s,r,clk;
wire q,qb;

sr_latch isr_latch(clk,s,r,q,qb);

always #5 clk=~clk;

initial begin
    clk=1'b0;
    s=0;
    r=0;
    #10 s=1;
    #10 s=0;
    #10 r=1;
    #10 r=0;
    #25
    $dumpflush;
    $finish;
end
initial begin
    $monitor($time, "s=%b r=%b clk=%b q=%b qbar=%b",s,r,clk,q,qb);
    $dumpfile("test_sr_latch.vcd");
    $dumpvars(0,test_sr_latch);
end
endmodule
