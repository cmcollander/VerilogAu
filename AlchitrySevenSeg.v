module AlchitrySevenSeg
   (A,
    B,
    C,
    CS1,
    CS2,
    CS3,
    CS4,
    D,
    E,
    F,
    G,
    mux_clk,
    value);
  output A;
  output B;
  output C;
  output CS1;
  output CS2;
  output CS3;
  output CS4;
  output D;
  output E;
  output F;
  output G;
  input mux_clk;
  input [13:0]value;

  wire [3:0]BCDSplit4_0_digit1;
  wire [3:0]BCDSplit4_0_digit2;
  wire [3:0]BCDSplit4_0_digit3;
  wire [3:0]BCDSplit4_0_digit4;
  wire DigitMux_0_cs1;
  wire DigitMux_0_cs2;
  wire DigitMux_0_cs3;
  wire DigitMux_0_cs4;
  wire [3:0]DigitMux_0_digitout;
  wire [1:0]FourCount_0_value;
  wire [6:0]hexto7segment_0_z;
  wire mux_clk_1;
  wire split7b_0_split0;
  wire split7b_0_split1;
  wire split7b_0_split2;
  wire split7b_0_split3;
  wire split7b_0_split4;
  wire split7b_0_split5;
  wire split7b_0_split6;
  wire [13:0]value_1;

  assign A = split7b_0_split6;
  assign B = split7b_0_split5;
  assign C = split7b_0_split4;
  assign CS1 = DigitMux_0_cs1;
  assign CS2 = DigitMux_0_cs2;
  assign CS3 = DigitMux_0_cs3;
  assign CS4 = DigitMux_0_cs4;
  assign D = split7b_0_split3;
  assign E = split7b_0_split2;
  assign F = split7b_0_split1;
  assign G = split7b_0_split0;
  assign mux_clk_1 = mux_clk;
  assign value_1 = value[13:0];
  AlchitrySevenSeg_BCDSplit4_0_0 BCDSplit4_0
       (.digit1(BCDSplit4_0_digit1),
        .digit2(BCDSplit4_0_digit2),
        .digit3(BCDSplit4_0_digit3),
        .digit4(BCDSplit4_0_digit4),
        .inputvalue(value_1));
  AlchitrySevenSeg_DigitMux_0_0 DigitMux_0
       (.cs1(DigitMux_0_cs1),
        .cs2(DigitMux_0_cs2),
        .cs3(DigitMux_0_cs3),
        .cs4(DigitMux_0_cs4),
        .digit1(BCDSplit4_0_digit1),
        .digit2(BCDSplit4_0_digit2),
        .digit3(BCDSplit4_0_digit3),
        .digit4(BCDSplit4_0_digit4),
        .digitout(DigitMux_0_digitout),
        .mux(FourCount_0_value));
  AlchitrySevenSeg_FourCount_0_0 FourCount_0
       (.clk(mux_clk_1),
        .value(FourCount_0_value));
  AlchitrySevenSeg_hexto7segment_0_0 hexto7segment_0
       (.x(DigitMux_0_digitout),
        .z(hexto7segment_0_z));
  AlchitrySevenSeg_split7b_0_0 split7b_0
       (.split0(split7b_0_split0),
        .split1(split7b_0_split1),
        .split2(split7b_0_split2),
        .split3(split7b_0_split3),
        .split4(split7b_0_split4),
        .split5(split7b_0_split5),
        .split6(split7b_0_split6),
        .tosplit(hexto7segment_0_z));
endmodule