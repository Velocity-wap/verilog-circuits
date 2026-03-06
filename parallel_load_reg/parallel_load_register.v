// Module: Parallel_load_register
// Description: 4-bit Parallel load register
module parallel_load_register(
    input clk,
    input rst, 
    input load,
    input [3:0] din,
    output reg [3:0] dout
);

    always@(posedge clk) begin  
        if(rst)
            dout <= 4'b0000;
        else if(load)
            dout <= din;
    end
endmodule       