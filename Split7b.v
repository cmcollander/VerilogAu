module split7b(
    input [6:0] tosplit,
    output split0,
    output split1,
    output split2,
    output split3,
    output split4,
    output split5,
    output split6
    );
    assign split0 = tosplit[0];
    assign split1 = tosplit[1];
    assign split2 = tosplit[2];
    assign split3 = tosplit[3];
    assign split4 = tosplit[4];
    assign split5 = tosplit[5];
    assign split6 = tosplit[6];
endmodule