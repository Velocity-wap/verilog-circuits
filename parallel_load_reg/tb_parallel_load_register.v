// Module: Parallel_load_register
// Description: 4-bit Parallel load register
module tb_parallel_load_register;

reg clk;
reg rst;
reg load;
reg [3:0] din;
wire [3:0] dout;

parallel_load_register dut(
    .clk(clk),
    .rst(rst),
    .load(load),
    .din(din),
    .dout(dout)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("parallel_load.vcd");
    $dumpvars(0, tb_parallel_load_register);

    rst = 1; load = 0; din = 4'b0000;
    #10 rst = 0;

    load = 1; din = 4'b1010; #10;
    load = 0;                #10;

    load = 1; din = 4'b1100; #10;
    load = 0;                #20;

    $finish;
end

endmodule