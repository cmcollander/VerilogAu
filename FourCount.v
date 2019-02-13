module FourCount(
    input clk,
    output reg [1:0] value
    );
    
    always@(posedge clk) begin
        value <= value+1;
    end
endmodule