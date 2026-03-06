// Module: sipo_shift_register
// Description: 4-bit Serial In Parallel Out shift register
module sipo_shift_register(
    input clk,
    input din,
    input rst,
    output reg [3:0] dout
);
    always @(posedge clk) begin
    if (rst)
        dout <= 4'b0000;
    else
        dout <= {dout[2:0], din};
    end
endmodule
