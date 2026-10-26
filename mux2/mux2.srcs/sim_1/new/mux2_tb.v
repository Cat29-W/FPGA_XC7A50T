`timescale 1ns/1ns

module mux2_tb();

reg S2;
reg S1;
reg S0;
wire mux2_out;

mux2 My_mux2(
    .a(S0),
    .b(S1),
    .out(mux2_out),
    .sel(S2)
);

initial begin

    S2 = 0; S1 = 0; S0 = 0;
    #20;
    S2 = 0; S1 = 0; S0 = 1;
    #20;
    S2 = 0; S1 = 1; S0 = 0;
    #20;
    S2 = 0; S1 = 1; S0 = 1;
    #20;
    S2 = 1; S1 = 0; S0 = 0;
    #20;
    S2 = 1; S1 = 0; S0 = 1;
    #20;
    S2 = 1; S1 = 1; S0 = 0;
    #20;
    S2 = 1; S1 = 1; S0 = 1;
    #20;

end

endmodule