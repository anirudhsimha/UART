
// Generated by Cadence Genus(TM) Synthesis Solution 20.11-s111_1
// Generated on: Nov  4 2023 10:00:44 IST (Nov  4 2023 04:30:44 UTC)

// Verification Directory fv/UART_TX 

module UART_TX(i_Rst_L, i_Clock, i_TX_DV, i_TX_Byte, o_TX_Active,
     o_TX_Serial, o_TX_Done);
  input i_Rst_L, i_Clock, i_TX_DV;
  input [7:0] i_TX_Byte;
  output o_TX_Active, o_TX_Serial, o_TX_Done;
  wire i_Rst_L, i_Clock, i_TX_DV;
  wire [7:0] i_TX_Byte;
  wire o_TX_Active, o_TX_Serial, o_TX_Done;
  wire [8:0] r_Clock_Count;
  wire [2:0] r_Bit_Index;
  wire [2:0] r_SM_Main;
  wire [7:0] r_TX_Data;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire UNCONNECTED7, UNCONNECTED8, UNCONNECTED9, UNCONNECTED10,
       UNCONNECTED11, UNCONNECTED12, UNCONNECTED13, UNCONNECTED14;
  wire UNCONNECTED15, UNCONNECTED16, UNCONNECTED17, UNCONNECTED18, n_0,
       n_1, n_2, n_3;
  wire n_4, n_5, n_6, n_7, n_8, n_9, n_10, n_11;
  wire n_12, n_13, n_14, n_15, n_16, n_17, n_18, n_19;
  wire n_20, n_21, n_22, n_23, n_24, n_25, n_26, n_27;
  wire n_28, n_29, n_30, n_31, n_32, n_33, n_34, n_35;
  wire n_36, n_37, n_38, n_40, n_41, n_42, n_43, n_44;
  wire n_45, n_46, n_48, n_49, n_50, n_51, n_52, n_53;
  wire n_54, n_55, n_56, n_57, n_58, n_60, n_61, n_62;
  wire n_63, n_75;
  DFFSSRX1 \r_Clock_Count_reg[7] (.CLK (i_Clock), .D (n_63), .RSTB
       (r_Clock_Count[7]), .SETB (n_52), .Q (r_Clock_Count[7]), .QN
       (UNCONNECTED));
  SDFFSSRX1 \r_Clock_Count_reg[6] (.CLK (i_Clock), .D (n_61), .RSTB
       (r_Clock_Count[5]), .SETB (1'b1), .SI (n_62), .SE
       (r_Clock_Count[6]), .Q (r_Clock_Count[6]), .QN (UNCONNECTED0));
  DFFX1 o_TX_Serial_reg(.CLK (i_Clock), .D (n_60), .Q (o_TX_Serial),
       .QN (UNCONNECTED1));
  OR2X1 g2238__2398(.IN1 (n_62), .IN2 (n_58), .Q (n_63));
  SDFFX1 \r_Clock_Count_reg[5] (.CLK (i_Clock), .D (n_61), .SI (n_57),
       .SE (r_Clock_Count[5]), .Q (r_Clock_Count[5]), .QN
       (UNCONNECTED2));
  DFFX1 \r_Bit_Index_reg[2] (.CLK (i_Clock), .D (n_55), .Q
       (r_Bit_Index[2]), .QN (n_11));
  NAND4X0 g2233__5107(.IN1 (n_51), .IN2 (n_43), .IN3 (n_23), .IN4
       (n_7), .QN (n_60));
  SDFFSSRX1 \r_Clock_Count_reg[3] (.CLK (i_Clock), .D (n_56), .RSTB
       (n_38), .SETB (1'b1), .SI (n_75), .SE (r_Clock_Count[3]), .Q
       (r_Clock_Count[3]), .QN (UNCONNECTED3));
  AO21X1 g2242__6260(.IN1 (n_58), .IN2 (n_1), .IN3 (n_57), .Q (n_62));
  SDFFSSRX1 \r_Clock_Count_reg[2] (.CLK (i_Clock), .D (n_56), .RSTB
       (n_17), .SETB (1'b1), .SI (n_45), .SE (r_Clock_Count[2]), .Q
       (r_Clock_Count[2]), .QN (UNCONNECTED4));
  SDFFSSRX1 \r_Clock_Count_reg[4] (.CLK (i_Clock), .D (n_56), .RSTB
       (n_44), .SETB (1'b1), .SI (n_50), .SE (r_Clock_Count[4]), .Q
       (r_Clock_Count[4]), .QN (n_0));
  SDFFSSRX1 \r_Clock_Count_reg[1] (.CLK (i_Clock), .D (n_56), .RSTB
       (r_Clock_Count[0]), .SETB (1'b1), .SI (n_41), .SE
       (r_Clock_Count[1]), .Q (r_Clock_Count[1]), .QN (UNCONNECTED5));
  SDFFSSRX1 \r_Bit_Index_reg[1] (.CLK (i_Clock), .D (n_53), .RSTB
       (r_Bit_Index[0]), .SETB (1'b1), .SI (n_54), .SE
       (r_Bit_Index[1]), .Q (r_Bit_Index[1]), .QN (n_10));
  AO221X1 g2239__4319(.IN1 (n_54), .IN2 (r_Bit_Index[2]), .IN3 (n_30),
       .IN4 (n_35), .IN5 (n_49), .Q (n_55));
  DFFARX1 \r_SM_Main_reg[0] (.RSTB (i_Rst_L), .CLK (i_Clock), .D
       (n_48), .Q (r_SM_Main[0]), .QN (n_4));
  SDFFX1 \r_Bit_Index_reg[0] (.CLK (i_Clock), .D (n_53), .SI (n_34),
       .SE (r_Bit_Index[0]), .Q (r_Bit_Index[0]), .QN (UNCONNECTED6));
  NAND3X0 g2244__8428(.IN1 (n_61), .IN2 (r_Clock_Count[6]), .IN3
       (r_Clock_Count[5]), .QN (n_52));
  SDFFX1 \r_Clock_Count_reg[0] (.CLK (i_Clock), .D (n_56), .SI (n_40),
       .SE (r_Clock_Count[0]), .Q (r_Clock_Count[0]), .QN
       (UNCONNECTED7));
  AO21X1 g2248__5526(.IN1 (n_37), .IN2 (r_SM_Main[1]), .IN3 (n_42), .Q
       (n_51));
  AO21X1 g2249__6783(.IN1 (n_58), .IN2 (n_0), .IN3 (n_50), .Q (n_57));
  AND3X1 g2245__3680(.IN1 (n_53), .IN2 (n_19), .IN3 (r_Bit_Index[0]),
       .Q (n_49));
  AO221X1 g2258__1617(.IN1 (n_25), .IN2 (r_Bit_Index[0]), .IN3 (n_29),
       .IN4 (r_SM_Main[0]), .IN5 (n_14), .Q (n_48));
  SDFFX1 \r_TX_Data_reg[7] (.CLK (i_Clock), .D (i_TX_Byte[7]), .SI
       (r_TX_Data[7]), .SE (n_46), .Q (r_TX_Data[7]), .QN
       (UNCONNECTED8));
  SDFFX1 \r_TX_Data_reg[3] (.CLK (i_Clock), .D (i_TX_Byte[3]), .SI
       (r_TX_Data[3]), .SE (n_46), .Q (r_TX_Data[3]), .QN
       (UNCONNECTED9));
  SDFFX1 \r_TX_Data_reg[6] (.CLK (i_Clock), .D (i_TX_Byte[6]), .SI
       (r_TX_Data[6]), .SE (n_46), .Q (r_TX_Data[6]), .QN
       (UNCONNECTED10));
  SDFFX1 \r_TX_Data_reg[1] (.CLK (i_Clock), .D (i_TX_Byte[1]), .SI
       (r_TX_Data[1]), .SE (n_46), .Q (r_TX_Data[1]), .QN
       (UNCONNECTED11));
  SDFFX1 \r_TX_Data_reg[2] (.CLK (i_Clock), .D (i_TX_Byte[2]), .SI
       (r_TX_Data[2]), .SE (n_46), .Q (r_TX_Data[2]), .QN
       (UNCONNECTED12));
  SDFFX1 \r_TX_Data_reg[4] (.CLK (i_Clock), .D (i_TX_Byte[4]), .SI
       (r_TX_Data[4]), .SE (n_46), .Q (r_TX_Data[4]), .QN
       (UNCONNECTED13));
  SDFFX1 \r_TX_Data_reg[5] (.CLK (i_Clock), .D (i_TX_Byte[5]), .SI
       (r_TX_Data[5]), .SE (n_46), .Q (r_TX_Data[5]), .QN
       (UNCONNECTED14));
  SDFFX1 \r_TX_Data_reg[0] (.CLK (i_Clock), .D (i_TX_Byte[0]), .SI
       (r_TX_Data[0]), .SE (n_46), .Q (r_TX_Data[0]), .QN
       (UNCONNECTED15));
  NAND2X1 g2257__1705(.IN1 (n_33), .IN2 (i_Rst_L), .QN (n_45));
  AND3X1 g2259__5122(.IN1 (n_56), .IN2 (n_44), .IN3 (r_Clock_Count[4]),
       .Q (n_61));
  OR3X1 g2269__8246(.IN1 (n_31), .IN2 (n_42), .IN3 (r_Bit_Index[0]), .Q
       (n_43));
  NAND2X1 g2251__7098(.IN1 (n_32), .IN2 (i_Rst_L), .QN (n_50));
  DFFSSRX1 o_TX_Active_reg(.CLK (i_Clock), .D (n_36), .RSTB
       (o_TX_Active), .SETB (n_46), .Q (o_TX_Active), .QN
       (UNCONNECTED16));
  AO21X1 g2255__6131(.IN1 (n_58), .IN2 (n_3), .IN3 (n_40), .Q (n_41));
  NAND2X1 g2270__5115(.IN1 (n_28), .IN2 (r_Bit_Index[0]), .QN (n_37));
  DFFSSRX1 o_TX_Done_reg(.CLK (i_Clock), .D (o_TX_Done), .RSTB (n_40),
       .SETB (n_36), .Q (o_TX_Done), .QN (UNCONNECTED17));
  AO21X1 g2252__7482(.IN1 (n_35), .IN2 (n_2), .IN3 (n_34), .Q (n_54));
  NOR2X0 g2253__4733(.IN1 (n_34), .IN2 (n_8), .QN (n_53));
  NAND2X1 g2267__6161(.IN1 (n_58), .IN2 (n_5), .QN (n_33));
  NAND2X1 g2268__9315(.IN1 (n_58), .IN2 (n_24), .QN (n_32));
  AOI221X1 g2280__9945(.IN1 (n_30), .IN2 (r_TX_Data[4]), .IN3 (n_27),
       .IN4 (r_TX_Data[6]), .IN5 (n_18), .QN (n_31));
  AND2X1 g2274__2883(.IN1 (n_58), .IN2 (i_Rst_L), .Q (n_56));
  SDFFARX1 \r_SM_Main_reg[1] (.RSTB (i_Rst_L), .CLK (i_Clock), .D
       (n_16), .SI (r_SM_Main[1]), .SE (n_29), .Q (r_SM_Main[1]), .QN
       (UNCONNECTED18));
  AO221X1 g2275__2346(.IN1 (n_27), .IN2 (r_TX_Data[7]), .IN3 (n_30),
       .IN4 (r_TX_Data[5]), .IN5 (n_20), .Q (n_28));
  AO21X1 g2273__1666(.IN1 (n_29), .IN2 (r_SM_Main[1]), .IN3 (n_42), .Q
       (n_34));
  OR2X1 g2288__7410(.IN1 (n_22), .IN2 (r_SM_Main[1]), .Q (n_46));
  INVX0 g2277(.INP (n_58), .ZN (n_26));
  AND3X1 g2278__6417(.IN1 (n_21), .IN2 (n_27), .IN3 (n_35), .Q (n_25));
  INVX0 g2284(.INP (n_24), .ZN (n_44));
  OR2X1 g2276__5477(.IN1 (n_29), .IN2 (n_23), .Q (n_36));
  NAND2X1 g2286__2398(.IN1 (n_38), .IN2 (r_Clock_Count[3]), .QN (n_24));
  OA21X1 g2279__5107(.IN1 (r_SM_Main[0]), .IN2 (n_35), .IN3 (n_29), .Q
       (n_58));
  NAND2X1 g2290__6260(.IN1 (n_9), .IN2 (i_TX_DV), .QN (n_22));
  INVX0 g2281(.INP (n_29), .ZN (n_21));
  AO21X1 g2285__4319(.IN1 (n_19), .IN2 (r_TX_Data[3]), .IN3 (n_15), .Q
       (n_20));
  AO21X1 g2287__8428(.IN1 (n_19), .IN2 (r_TX_Data[2]), .IN3 (n_12), .Q
       (n_18));
  AND2X1 g2292__5526(.IN1 (n_17), .IN2 (r_Clock_Count[2]), .Q (n_38));
  AO21X1 g2293__6783(.IN1 (r_SM_Main[0]), .IN2 (n_13), .IN3 (n_35), .Q
       (n_16));
  NAND3X0 g2282__3680(.IN1 (n_6), .IN2 (r_Clock_Count[7]), .IN3
       (r_Clock_Count[6]), .QN (n_29));
  AND3X1 g2291__1617(.IN1 (r_TX_Data[1]), .IN2 (n_11), .IN3 (n_10), .Q
       (n_15));
  AND3X1 g2294__2802(.IN1 (n_13), .IN2 (n_4), .IN3 (i_TX_DV), .Q
       (n_14));
  AND3X1 g2295__1705(.IN1 (r_TX_Data[0]), .IN2 (n_11), .IN3 (n_10), .Q
       (n_12));
  INVX0 g2301(.INP (n_42), .ZN (n_9));
  INVX0 g2283(.INP (n_35), .ZN (n_8));
  NAND2X1 g2297__5122(.IN1 (o_TX_Serial), .IN2 (n_40), .QN (n_7));
  AO21X1 g2289__8246(.IN1 (r_Clock_Count[3]), .IN2 (r_Clock_Count[4]),
       .IN3 (r_Clock_Count[5]), .Q (n_6));
  NAND3X0 g2296__7098(.IN1 (r_SM_Main[1]), .IN2 (r_SM_Main[0]), .IN3
       (i_Rst_L), .QN (n_23));
  NOR2X0 g2298__6131(.IN1 (r_Bit_Index[2]), .IN2 (n_10), .QN (n_19));
  INVX0 g2300(.INP (n_5), .ZN (n_17));
  NOR2X0 g2303__1881(.IN1 (n_11), .IN2 (n_10), .QN (n_27));
  NOR2X0 g2299__5115(.IN1 (r_Bit_Index[1]), .IN2 (n_11), .QN (n_30));
  NAND2X1 g2304__7482(.IN1 (n_4), .IN2 (i_Rst_L), .QN (n_42));
  NOR2X0 g2305__4733(.IN1 (r_SM_Main[0]), .IN2 (n_13), .QN (n_35));
  NAND2X1 g2302__6161(.IN1 (r_Clock_Count[1]), .IN2 (r_Clock_Count[0]),
       .QN (n_5));
  INVX0 g2307(.INP (r_Clock_Count[0]), .ZN (n_3));
  INVX0 g2308(.INP (r_SM_Main[1]), .ZN (n_13));
  INVX0 g2314(.INP (i_Rst_L), .ZN (n_40));
  INVX0 g2309(.INP (r_Bit_Index[0]), .ZN (n_2));
  INVX0 g2310(.INP (r_Clock_Count[5]), .ZN (n_1));
  OAI21X1 g2(.IN1 (n_26), .IN2 (n_38), .IN3 (i_Rst_L), .QN (n_75));
endmodule


