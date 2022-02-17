module test_mux8to1;
reg [7:0]in;
reg [2:0]sel;
wire out;

mux8to1 imux8to1(in,sel,out);

initial begin
    in=8'b10100111;
    sel=3'b000;
    #10 sel=3'b001;
    #10 sel=3'b010;
    #10 sel=3'b011;
    #10 sel=3'b100;
    #10 sel=3'b101;
    #10 sel=3'b110;
    #10 sel=3'b111;
    #10
    $dumpflush;
    $finish;
end
initial begin
    $monitor($time, "in=%b sel=%b out=%b",in,sel,out);
    $dumpfile("test_mux8to1.vcd");
    $dumpvars(0,test_mux8to1);
end
endmodule