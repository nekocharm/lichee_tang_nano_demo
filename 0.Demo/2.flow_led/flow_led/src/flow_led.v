module flow_led(
    input clk,
    output reg [2:0] led
);

    reg [23:0] counter; 
    initial begin
        led = 3'b110;
        counter = 24'd0;
    end
    
    always @(posedge clk) begin
        if(counter < 24'd1199_9999) begin
            counter <= counter+1'b1;
            led <= led;
        end
        else begin
            counter = 24'd0;
            led[2:0] <= {led[1:0],led[2]};
        end
    end

endmodule