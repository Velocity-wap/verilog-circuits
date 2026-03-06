// Module: siso_shift_register
// Description: 4-bit Serial In Serial Out shift register
module tb_siso_shift_register;

    reg clk;
    reg rst;
    reg din;
    wire dout;

    siso_shift_register dut(
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("siso_shift_register.vcd");
        $dumpvars(0, tb_siso_shift_register);

        rst = 1;
        #10 rst = 0;

        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;

        #20 $finish;
    end

endmodule