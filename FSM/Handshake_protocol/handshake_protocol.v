module handshake_protocol(
    input clk, rst,
    input send, ack,
    output reg req, done

);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 =2'b11;

reg [1:0] state;
reg [1:0] next_state;

always @(posedge clk) begin
    if(rst) state <= S0;
    else state <= next_state;
end

always @(*) begin
    case(state)
    S0: begin
        if(send)
            next_state = S1;
        else
            next_state = S0;
    end
    S1: begin
        if(ack)
            next_state = S2;
        else
            next_state = S1;
    end
    S2: begin
        next_state = S3;
    end
    S3: begin
        if(!ack)
            next_state = S0;
        else
            next_state = S3; 
    end
    default: next_state = S0;
    endcase
end

always @(*) begin
    case(state)
        S1: req = 1;
        S2: req = 1;
        default: req = 0;
    endcase
end

always @(*) begin
    case(state)
        S3: done = 1;
        default: done = 0;
    endcase
end
endmodule