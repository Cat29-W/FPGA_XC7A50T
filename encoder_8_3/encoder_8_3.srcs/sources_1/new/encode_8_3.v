module encoder_3_8(
    input [7:0] I,
    output reg [2:0] Y,
    output reg GS
);

always@(*) begin
    GS = 1'b0;
    Y = 3'b111;
    casez(I)
        8'b 0??????? : Y = 3'b111;
        8'b 10?????? : Y = 3'b110;
        8'b 110????? : Y = 3'b101;
        8'b 1110???? : Y = 3'b100;
        8'b 11110??? : Y = 3'b011;
        8'b 111110?? : Y = 3'b010;
        8'b 1111110? : Y = 3'b001;
        8'b 11111110 : Y = 3'b000;
        8'b 11111111 : GS = 1'b1;
    endcase        
end
endmodule

module encode_top(
    input [3:0] key,
    output [3:0] led
);
    wire [7:0] I = {4'b1111,key};
    wire [2:0] Y;
    wire GS;
    
    encoder_3_8 u_enc(
        .I(I),
        .Y(Y),
        .GS(GS)
    );
    
    assign led[2:0] = ~Y;
    assign led[3] = GS;
    
endmodule
