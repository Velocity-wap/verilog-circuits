module tb_handshake_protocol;

reg clk;
reg rst;
reg send;
reg ack;
wire req;
wire done;

handshake_protocol dut(
    .clk(clk),
    .rst(rst),
    .send(send),
    .ack(ack),
    .req(req),
    .done(done)
);

initial begin 
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("handshake_protocol.vcd");
    $dumpvars(0, tb_handshake_protocol);
    //reset
    send = 0;
    ack = 0;
    rst = 1; #10;
    rst = 0;

    //input bitstream
    send = 0; ack = 0; #10;
    send = 1; ack = 1; #10;
    send = 0; ack = 1; #10;
    send = 0; ack = 0; #10;

    #20 $finish;
end
endmodule