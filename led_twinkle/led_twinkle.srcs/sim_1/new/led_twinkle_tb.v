`timescale 1ns/1ns

module led_twinkle_tb();

    reg clk, reset_n;
    wire led;
    
    led_twinkle led_tb(
        .led(led),
        .clk(clk),
        .reset_n(reset_n)
    );
    
    initial clk = 1;
    always #10 clk = ~clk;
    
    initial begin
        reset_n = 0;
        #201;
        reset_n = 1;
        #200;
        $stop;
    end
    
endmodule