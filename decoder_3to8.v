module decoder_3to8(sel,out);

input [2:0]sel;
reg [7:0]y;
output [7:0]out;

always@(sel) begin
    if(sel==3'b000) y<=8'b00000001;
    else if(sel==3'b001) y<=8'b00000010;
    else if(sel==3'b010) y<=8'b00000100;
    else if(sel==3'b011) y<=8'b00001000;
    else if(sel==3'b100) y<=8'b00010000;
    else if(sel==3'b101) y<=8'b00100000;
    else if(sel==3'b110) y<=8'b01000000;
    else if(sel==3'b111) y<=8'b10000000;
end

assign out=y;
endmodule