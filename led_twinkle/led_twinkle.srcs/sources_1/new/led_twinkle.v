module led_twinkle(
    led,
    clk,
    reset_n
);

    output reg led;
    input reset_n,clk;
    
    reg [24:0]counter;
    
    always@(posedge clk or negedge reset_n)
        if(!reset_n)
            counter <= 0;     //<=·Ç×èÈû¸³Öµ
        else if(counter == 12_499_499)
            counter <= 0;
        else
            counter <= counter + 1'd1;
            
     always@(posedge clk or negedge reset_n)
        if(!reset_n)
            led <= 1'b1;
        else if(counter == 12_499_499)
            led <= !led;
    
endmodule