// Module: siso_shift_register
// Description: 4-bit Serial In Serial Out shift register
module siso_shift_register(
    input clk,
    input din,
    input rst,
    output dout
);
    reg [3:0] shift;
    always @(posedge clk) begin
    if (rst)
        shift <= 4'b0000;
    else
        shift <= {shift[2:0], din};
    end
    assign dout = shift[3];
endmodule
