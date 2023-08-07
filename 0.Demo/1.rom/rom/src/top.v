module top(
    input [1:0] sw,
    output [1:0] led,
    input clk
);

    wire [7:0] address;
    wire [7:0] data;

    assign address[7:2] = 6'b0;
    assign address[1:0] = ~sw[1:0];
    assign led[1:0] = ~data[1:0]; 

    Gowin_pROM rom(
        .dout(data),
        .clk(clk),
        .oce(1'b1),
        .ce(1'b1),
        .reset(1'b0),
        .ad(address)
    );

endmodule