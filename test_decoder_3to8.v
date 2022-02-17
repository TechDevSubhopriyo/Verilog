module test_decoder_3to8;

reg [2:0]sel;
wire [7:0]y;

decoder_3to8 idecoder_3to8(sel,y);

initial begin
    sel=3'b000;
    #10 sel=3'b001;
    #10 sel=3'b010;
    #10 sel=3'b011;
    #10 sel=3'b100;
    #10 sel=3'b101;
    #10 sel=3'b110;
    #10 sel=3'b111;
    #10
    $finish;
    $dumpflush;
end
initial begin
    $monitor($time,"sel=%b y=%b",sel,y);
    $dumpfile("test_decoder.vcd");
    $dumpvars(0,test_decoder_3to8);
end
endmodule