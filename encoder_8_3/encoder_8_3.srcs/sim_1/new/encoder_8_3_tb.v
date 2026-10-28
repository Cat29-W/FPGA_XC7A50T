`timescale 1ns/1ns

module encoder_8_3_tb();

reg [7:0] I;
wire [2:0] Y;
wire GS;
integer i;

encoder_3_8 my_encoder_tb(
    .I(I),
    .Y(Y),
    .GS(GS)
);

initial begin
    for(i = 0; i < 8; i = i + 1) begin
        I = ~(8'b0000_0001 << i);
        #20;
    end
end

endmodule