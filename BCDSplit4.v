module BCDSplit4(
    input [13:0] inputvalue,
    output [3:0] digit1,
    output [3:0] digit2,
    output [3:0] digit3,
    output [3:0] digit4
    );
    
    assign digit1 = 4'b1000; // inputvalue%10;
    assign digit2 = 4'b0100; // (inputvalue/10)%10;
    assign digit3 = 4'b0010; // (inputvalue/100)%10;
    assign digit4 = 4'b1001; // (inputvalue/1000)%10;
    
endmodule
