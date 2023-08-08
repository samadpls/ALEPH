circuit controler :
  module controler :
    input clock : Clock
    input reset : UInt<1>
    input io_opcod : UInt<7>
    input io_configtype : UInt<2>
    output io_memwrite : UInt<1>
    output io_branch : UInt<1>
    output io_memread : UInt<1>
    output io_regwrite : UInt<1>
    output io_memtoreg : UInt<1>
    output io_aluop : UInt<3>
    output io_op_a : UInt<2>
    output io_op_b : UInt<1>
    output io_extend_sel : UInt<2>
    output io_next_pc : UInt<2>

    node _T = eq(UInt<7>("h57"), io_opcod) @[Conditional.scala 37:30]
    node _T_1 = eq(io_configtype, UInt<1>("h0")) @[controler.scala 35:33]
    node _T_2 = eq(io_configtype, UInt<1>("h1")) @[controler.scala 35:61]
    node _T_3 = or(_T_1, _T_2) @[controler.scala 35:44]
    node _T_4 = eq(io_configtype, UInt<2>("h2")) @[controler.scala 48:37]
    node _GEN_0 = mux(_T_4, UInt<1>("h1"), UInt<1>("h1")) @[controler.scala 48:48 controler.scala 49:28 controler.scala 61:28]
    node _GEN_1 = mux(_T_4, UInt<1>("h1"), UInt<1>("h0")) @[controler.scala 48:48 controler.scala 50:27 controler.scala 64:28]
    node _GEN_2 = mux(_T_4, UInt<3>("h4"), UInt<1>("h0")) @[controler.scala 48:48 controler.scala 52:25 controler.scala 66:25]
    node _GEN_3 = mux(_T_4, UInt<1>("h0"), UInt<1>("h0")) @[controler.scala 48:48 controler.scala 54:28 controler.scala 62:28]
    node _GEN_4 = mux(_T_3, UInt<1>("h1"), _GEN_0) @[controler.scala 35:72 controler.scala 36:28]
    node _GEN_5 = mux(_T_3, UInt<1>("h0"), _GEN_1) @[controler.scala 35:72 controler.scala 37:27]
    node _GEN_6 = mux(_T_3, UInt<3>("h4"), _GEN_2) @[controler.scala 35:72 controler.scala 39:25]
    node _GEN_7 = mux(_T_3, UInt<1>("h1"), _GEN_1) @[controler.scala 35:72 controler.scala 40:24]
    node _GEN_8 = mux(_T_3, UInt<1>("h0"), _GEN_3) @[controler.scala 35:72 controler.scala 41:28]
    node _T_5 = eq(UInt<5>("h13"), io_opcod) @[Conditional.scala 37:30]
    node _T_6 = eq(UInt<2>("h3"), io_opcod) @[Conditional.scala 37:30]
    node _T_7 = eq(UInt<7>("h6f"), io_opcod) @[Conditional.scala 37:30]
    node _T_8 = eq(UInt<7>("h67"), io_opcod) @[Conditional.scala 37:30]
    node _T_9 = eq(UInt<6>("h33"), io_opcod) @[Conditional.scala 37:30]
    node _T_10 = eq(UInt<6>("h23"), io_opcod) @[Conditional.scala 37:30]
    node _T_11 = eq(UInt<7>("h63"), io_opcod) @[Conditional.scala 37:30]
    node _T_12 = eq(UInt<6>("h37"), io_opcod) @[Conditional.scala 37:30]
    node _GEN_9 = mux(_T_12, UInt<1>("h1"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 163:24 controler.scala 26:20]
    node _GEN_10 = mux(_T_12, UInt<3>("h6"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 164:21 controler.scala 28:17]
    node _GEN_11 = mux(_T_12, UInt<2>("h2"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 165:20 controler.scala 29:16]
    node _GEN_12 = mux(_T_12, UInt<1>("h0"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 167:23 controler.scala 32:19]
    node _GEN_13 = mux(_T_11, UInt<1>("h1"), _GEN_12) @[Conditional.scala 39:67 controler.scala 150:22]
    node _GEN_14 = mux(_T_11, UInt<2>("h2"), _GEN_10) @[Conditional.scala 39:67 controler.scala 151:21]
    node _GEN_15 = mux(_T_11, UInt<1>("h0"), _GEN_12) @[Conditional.scala 39:67 controler.scala 153:24]
    node _GEN_16 = mux(_T_11, UInt<1>("h0"), _GEN_9) @[Conditional.scala 39:67 controler.scala 155:24]
    node _GEN_17 = mux(_T_11, UInt<1>("h0"), _GEN_11) @[Conditional.scala 39:67 controler.scala 157:20]
    node _GEN_18 = mux(_T_10, UInt<1>("h1"), _GEN_15) @[Conditional.scala 39:67 controler.scala 136:24]
    node _GEN_19 = mux(_T_10, UInt<1>("h0"), _GEN_16) @[Conditional.scala 39:67 controler.scala 137:24]
    node _GEN_20 = mux(_T_10, UInt<3>("h5"), _GEN_14) @[Conditional.scala 39:67 controler.scala 138:21]
    node _GEN_21 = mux(_T_10, UInt<1>("h1"), _GEN_16) @[Conditional.scala 39:67 controler.scala 139:20]
    node _GEN_22 = mux(_T_10, UInt<1>("h1"), _GEN_17) @[Conditional.scala 39:67 controler.scala 140:26]
    node _GEN_23 = mux(_T_10, UInt<1>("h0"), _GEN_13) @[Conditional.scala 39:67 controler.scala 142:22]
    node _GEN_24 = mux(_T_10, UInt<1>("h0"), _GEN_15) @[Conditional.scala 39:67 controler.scala 143:24]
    node _GEN_25 = mux(_T_10, UInt<1>("h0"), _GEN_17) @[Conditional.scala 39:67 controler.scala 145:20]
    node _GEN_26 = mux(_T_9, UInt<1>("h1"), _GEN_19) @[Conditional.scala 39:67 controler.scala 124:24]
    node _GEN_27 = mux(_T_9, UInt<1>("h0"), _GEN_18) @[Conditional.scala 39:67 controler.scala 125:24]
    node _GEN_28 = mux(_T_9, UInt<1>("h0"), _GEN_23) @[Conditional.scala 39:67 controler.scala 126:22]
    node _GEN_29 = mux(_T_9, UInt<1>("h0"), _GEN_24) @[Conditional.scala 39:67 controler.scala 127:24]
    node _GEN_30 = mux(_T_9, UInt<1>("h0"), _GEN_20) @[Conditional.scala 39:67 controler.scala 129:21]
    node _GEN_31 = mux(_T_9, UInt<1>("h0"), _GEN_25) @[Conditional.scala 39:67 controler.scala 130:20]
    node _GEN_32 = mux(_T_9, UInt<1>("h0"), _GEN_21) @[Conditional.scala 39:67 controler.scala 131:20]
    node _GEN_33 = mux(_T_9, UInt<1>("h0"), _GEN_22) @[Conditional.scala 39:67 controler.scala 132:26]
    node _GEN_34 = mux(_T_8, UInt<1>("h1"), _GEN_26) @[Conditional.scala 39:67 controler.scala 111:24]
    node _GEN_35 = mux(_T_8, UInt<2>("h3"), _GEN_30) @[Conditional.scala 39:67 controler.scala 112:21]
    node _GEN_36 = mux(_T_8, UInt<1>("h1"), _GEN_31) @[Conditional.scala 39:67 controler.scala 113:20]
    node _GEN_37 = mux(_T_8, UInt<1>("h1"), _GEN_32) @[Conditional.scala 39:67 controler.scala 114:20]
    node _GEN_38 = mux(_T_8, UInt<2>("h3"), _GEN_28) @[Conditional.scala 39:67 controler.scala 115:23]
    node _GEN_39 = mux(_T_8, UInt<1>("h0"), _GEN_27) @[Conditional.scala 39:67 controler.scala 116:24]
    node _GEN_40 = mux(_T_8, UInt<1>("h0"), _GEN_28) @[Conditional.scala 39:67 controler.scala 117:22]
    node _GEN_41 = mux(_T_8, UInt<1>("h0"), _GEN_29) @[Conditional.scala 39:67 controler.scala 118:24]
    node _GEN_42 = mux(_T_8, UInt<1>("h0"), _GEN_33) @[Conditional.scala 39:67 controler.scala 120:26]
    node _GEN_43 = mux(_T_7, UInt<1>("h1"), _GEN_34) @[Conditional.scala 39:67 controler.scala 98:24]
    node _GEN_44 = mux(_T_7, UInt<2>("h3"), _GEN_35) @[Conditional.scala 39:67 controler.scala 99:21]
    node _GEN_45 = mux(_T_7, UInt<1>("h1"), _GEN_36) @[Conditional.scala 39:67 controler.scala 100:20]
    node _GEN_46 = mux(_T_7, UInt<2>("h2"), _GEN_38) @[Conditional.scala 39:67 controler.scala 101:23]
    node _GEN_47 = mux(_T_7, UInt<1>("h0"), _GEN_39) @[Conditional.scala 39:67 controler.scala 102:24]
    node _GEN_48 = mux(_T_7, UInt<1>("h0"), _GEN_40) @[Conditional.scala 39:67 controler.scala 103:22]
    node _GEN_49 = mux(_T_7, UInt<1>("h0"), _GEN_41) @[Conditional.scala 39:67 controler.scala 104:24]
    node _GEN_50 = mux(_T_7, UInt<1>("h0"), _GEN_37) @[Conditional.scala 39:67 controler.scala 106:20]
    node _GEN_51 = mux(_T_7, UInt<1>("h0"), _GEN_42) @[Conditional.scala 39:67 controler.scala 107:26]
    node _GEN_52 = mux(_T_6, UInt<1>("h1"), _GEN_43) @[Conditional.scala 39:67 controler.scala 86:24]
    node _GEN_53 = mux(_T_6, UInt<1>("h1"), _GEN_49) @[Conditional.scala 39:67 controler.scala 87:23]
    node _GEN_54 = mux(_T_6, UInt<3>("h4"), _GEN_44) @[Conditional.scala 39:67 controler.scala 89:21]
    node _GEN_55 = mux(_T_6, UInt<1>("h1"), _GEN_50) @[Conditional.scala 39:67 controler.scala 90:20]
    node _GEN_56 = mux(_T_6, UInt<1>("h0"), _GEN_47) @[Conditional.scala 39:67 controler.scala 91:24]
    node _GEN_57 = mux(_T_6, UInt<1>("h0"), _GEN_48) @[Conditional.scala 39:67 controler.scala 92:22]
    node _GEN_58 = mux(_T_6, UInt<1>("h0"), _GEN_45) @[Conditional.scala 39:67 controler.scala 93:20]
    node _GEN_59 = mux(_T_6, UInt<1>("h0"), _GEN_51) @[Conditional.scala 39:67 controler.scala 94:26]
    node _GEN_60 = mux(_T_6, UInt<1>("h0"), _GEN_46) @[Conditional.scala 39:67 controler.scala 95:23]
    node _GEN_61 = mux(_T_5, UInt<1>("h1"), _GEN_52) @[Conditional.scala 39:67 controler.scala 74:20]
    node _GEN_62 = mux(_T_5, UInt<1>("h1"), _GEN_54) @[Conditional.scala 39:67 controler.scala 75:17]
    node _GEN_63 = mux(_T_5, UInt<1>("h1"), _GEN_55) @[Conditional.scala 39:67 controler.scala 76:16]
    node _GEN_64 = mux(_T_5, UInt<1>("h0"), _GEN_56) @[Conditional.scala 39:67 controler.scala 77:20]
    node _GEN_65 = mux(_T_5, UInt<1>("h0"), _GEN_57) @[Conditional.scala 39:67 controler.scala 78:18]
    node _GEN_66 = mux(_T_5, UInt<1>("h0"), _GEN_53) @[Conditional.scala 39:67 controler.scala 79:20]
    node _GEN_67 = mux(_T_5, UInt<1>("h0"), _GEN_58) @[Conditional.scala 39:67 controler.scala 81:16]
    node _GEN_68 = mux(_T_5, UInt<1>("h0"), _GEN_59) @[Conditional.scala 39:67 controler.scala 82:22]
    node _GEN_69 = mux(_T_5, UInt<1>("h0"), _GEN_60) @[Conditional.scala 39:67 controler.scala 83:19]
    node _GEN_70 = mux(_T, _GEN_4, _GEN_61) @[Conditional.scala 40:58]
    node _GEN_71 = mux(_T, _GEN_5, _GEN_66) @[Conditional.scala 40:58]
    node _GEN_72 = mux(_T, _GEN_6, _GEN_62) @[Conditional.scala 40:58]
    node _GEN_73 = mux(_T, _GEN_7, _GEN_63) @[Conditional.scala 40:58]
    node _GEN_74 = mux(_T, _GEN_8, _GEN_64) @[Conditional.scala 40:58]
    node _GEN_75 = mux(_T, _GEN_8, _GEN_65) @[Conditional.scala 40:58]
    node _GEN_76 = mux(_T, _GEN_8, _GEN_67) @[Conditional.scala 40:58]
    node _GEN_77 = mux(_T, _GEN_8, _GEN_68) @[Conditional.scala 40:58]
    node _GEN_78 = mux(_T, _GEN_8, _GEN_69) @[Conditional.scala 40:58]
    io_memwrite <= _GEN_74
    io_branch <= _GEN_75
    io_memread <= _GEN_71
    io_regwrite <= _GEN_70
    io_memtoreg <= _GEN_71
    io_aluop <= _GEN_72
    io_op_a <= _GEN_76
    io_op_b <= _GEN_73
    io_extend_sel <= _GEN_77
    io_next_pc <= _GEN_78
