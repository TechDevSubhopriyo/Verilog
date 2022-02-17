module mux8to1(a,sel,y);

input [7:0]a;
input [2:0]sel;
output y;
reg out;

always@(sel[0] or sel[1] or sel[2])
    if(sel==3'b000) out<=a[0];
    else if(sel==3'b001) out<=a[1];
    else if(sel==3'b010) out<=a[2];
    else if(sel==3'b011) out<=a[3];
    else if(sel==3'b100) out<=a[4];
    else if(sel==3'b101) out<=a[5];
    else if(sel==3'b110) out<=a[6];
    else if(sel==3'b111) out<=a[7];

assign y=out;
endmodule