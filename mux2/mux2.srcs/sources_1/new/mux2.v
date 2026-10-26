module mux2(
    a,
    b,
    out,
    sel
);
    input a,b,sel;
    output out;
    
    assign out = (sel == 0) ? a : b;

endmodule