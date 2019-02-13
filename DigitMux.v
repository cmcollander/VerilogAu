module DigitMux(
    input [3:0] digit1,
    input [3:0] digit2,
    input [3:0] digit3,
    input [3:0] digit4,
    input [1:0] mux,
    output reg [3:0] digitout,
    output reg cs1,
    output reg cs2,
    output reg cs3,
    output reg cs4
    );
    always@(posedge mux) begin
        case (mux)
            0 : begin
                    digitout <= digit1;
                    cs1 <= 1;
                    cs2 <= 0;
                    cs3 <= 0;
                    cs4 <= 0;
                end
            1 : begin
                    digitout <= digit2;
                    cs1 <= 0;
                    cs2 <= 1;
                    cs3 <= 0;
                    cs4 <= 0;
                end
            2 : begin
                    digitout <= digit3;
                    cs1 <= 0;
                    cs2 <= 0;
                    cs3 <= 1;
                    cs4 <= 0;
                end
            3 : begin
                    digitout <= digit4;
                    cs1 <= 0;
                    cs2 <= 0;
                    cs3 <= 0;
                    cs4 <= 1;
                end
        endcase
    end
endmodule
