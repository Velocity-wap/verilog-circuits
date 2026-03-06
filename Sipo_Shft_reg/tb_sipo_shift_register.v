// Module: sipo_shift_register
// Description: 4-bit Serial In Parallel Out shift register
module tb_sipo_shift_register;

reg clk;
reg rst;
reg din;
wire [3:0] dout;

sipo_shift_register dut (
    .clk(clk),
    .rst(rst),
    .din(din),
    .dout(dout)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("sipo_shift_register.vcd");
    $dumpvars(0, tb_sipo_shift_register);

    // Reset
    rst = 1;
    #10 rst = 0;

    // Serial input sequence
    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;

    #20 $finish;
end

endmodule