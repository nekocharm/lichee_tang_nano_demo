module blinky(
    output reg led,
    input clk
);

    reg [23:0] counter;

    initial begin
        counter = 24'd0;
        led = 1'b0;
    end

    always @(posedge clk) begin
        if (counter < 24'd1199_9999) begin
            counter <= counter + 1'b1;
            led <= led;
        end
        else begin
            counter <= 24'd0;
            led <= ~led;
        end      
    end
endmodule
