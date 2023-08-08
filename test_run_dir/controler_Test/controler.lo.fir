circuit controler :
  module controler :
    input clock : Clock
    input reset : UInt<1>
    input io_opcod : UInt<7>
    input io_instruction : UInt<32>
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

    node Op_code = bits(io_instruction, 6, 0) @[controler.scala 33:37]
    node rs_1 = bits(io_instruction, 19, 15) @[controler.scala 34:34]
    node rs_2 = bits(io_instruction, 24, 20) @[controler.scala 35:34]
    node rd = bits(io_instruction, 11, 7) @[controler.scala 36:32]
    node configtype = bits(io_instruction, 31, 30) @[controler.scala 37:40]
    node _T = eq(UInt<7>("h57"), io_opcod) @[Conditional.scala 37:30]
    node _T_1 = eq(configtype, UInt<1>("h0")) @[controler.scala 41:30]
    node _T_2 = eq(configtype, UInt<1>("h1")) @[controler.scala 41:55]
    node _T_3 = or(_T_1, _T_2) @[controler.scala 41:41]
    node _T_4 = eq(configtype, UInt<2>("h2")) @[controler.scala 54:34]
    node _GEN_0 = mux(_T_4, UInt<1>("h1"), UInt<1>("h1")) @[controler.scala 54:45 controler.scala 55:28 controler.scala 67:28]
    node _GEN_1 = mux(_T_4, UInt<1>("h1"), UInt<1>("h0")) @[controler.scala 54:45 controler.scala 56:27 controler.scala 70:28]
    node _GEN_2 = mux(_T_4, UInt<3>("h4"), UInt<1>("h0")) @[controler.scala 54:45 controler.scala 58:25 controler.scala 72:25]
    node _GEN_3 = mux(_T_4, UInt<1>("h0"), UInt<1>("h0")) @[controler.scala 54:45 controler.scala 60:28 controler.scala 68:28]
    node _GEN_4 = mux(_T_3, UInt<1>("h1"), _GEN_0) @[controler.scala 41:66 controler.scala 42:28]
    node _GEN_5 = mux(_T_3, UInt<1>("h0"), _GEN_1) @[controler.scala 41:66 controler.scala 43:27]
    node _GEN_6 = mux(_T_3, UInt<3>("h4"), _GEN_2) @[controler.scala 41:66 controler.scala 45:25]
    node _GEN_7 = mux(_T_3, UInt<1>("h1"), _GEN_1) @[controler.scala 41:66 controler.scala 46:24]
    node _GEN_8 = mux(_T_3, UInt<1>("h0"), _GEN_3) @[controler.scala 41:66 controler.scala 47:28]
    node _T_5 = eq(UInt<5>("h13"), io_opcod) @[Conditional.scala 37:30]
    node _T_6 = eq(UInt<2>("h3"), io_opcod) @[Conditional.scala 37:30]
    node _T_7 = eq(UInt<7>("h6f"), io_opcod) @[Conditional.scala 37:30]
    node _T_8 = eq(UInt<7>("h67"), io_opcod) @[Conditional.scala 37:30]
    node _T_9 = eq(UInt<6>("h33"), io_opcod) @[Conditional.scala 37:30]
    node _T_10 = eq(UInt<6>("h23"), io_opcod) @[Conditional.scala 37:30]
    node _T_11 = eq(UInt<7>("h63"), io_opcod) @[Conditional.scala 37:30]
    node _T_12 = eq(UInt<6>("h37"), io_opcod) @[Conditional.scala 37:30]
    node _GEN_9 = mux(_T_12, UInt<1>("h1"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 169:24 controler.scala 26:20]
    node _GEN_10 = mux(_T_12, UInt<3>("h6"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 170:21 controler.scala 28:17]
    node _GEN_11 = mux(_T_12, UInt<2>("h2"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 171:20 controler.scala 29:16]
    node _GEN_12 = mux(_T_12, UInt<1>("h0"), UInt<1>("h0")) @[Conditional.scala 39:67 controler.scala 173:23 controler.scala 32:19]
    node _GEN_13 = mux(_T_11, UInt<1>("h1"), _GEN_12) @[Conditional.scala 39:67 controler.scala 156:22]
    node _GEN_14 = mux(_T_11, UInt<2>("h2"), _GEN_10) @[Conditional.scala 39:67 controler.scala 157:21]
    node _GEN_15 = mux(_T_11, UInt<1>("h0"), _GEN_12) @[Conditional.scala 39:67 controler.scala 159:24]
    node _GEN_16 = mux(_T_11, UInt<1>("h0"), _GEN_9) @[Conditional.scala 39:67 controler.scala 161:24]
    node _GEN_17 = mux(_T_11, UInt<1>("h0"), _GEN_11) @[Conditional.scala 39:67 controler.scala 163:20]
    node _GEN_18 = mux(_T_10, UInt<1>("h0"), _GEN_15) @[Conditional.scala 39:67 controler.scala 147:24]
    node _GEN_19 = mux(_T_10, UInt<1>("h1"), _GEN_16) @[Conditional.scala 39:67 controler.scala 143:24]
    node _GEN_20 = mux(_T_10, UInt<3>("h5"), _GEN_14) @[Conditional.scala 39:67 controler.scala 144:21]
    node _GEN_21 = mux(_T_10, UInt<1>("h1"), _GEN_17) @[Conditional.scala 39:67 controler.scala 146:26]
    node _GEN_22 = mux(_T_10, UInt<1>("h0"), _GEN_13) @[Conditional.scala 39:67 controler.scala 148:22]
    node _GEN_23 = mux(_T_10, UInt<1>("h0"), _GEN_17) @[Conditional.scala 39:67 controler.scala 151:20]
    node _GEN_24 = mux(_T_9, UInt<1>("h1"), _GEN_19) @[Conditional.scala 39:67 controler.scala 130:24]
    node _GEN_25 = mux(_T_9, UInt<1>("h0"), _GEN_18) @[Conditional.scala 39:67 controler.scala 131:24]
    node _GEN_26 = mux(_T_9, UInt<1>("h0"), _GEN_22) @[Conditional.scala 39:67 controler.scala 132:22]
    node _GEN_27 = mux(_T_9, UInt<1>("h0"), _GEN_20) @[Conditional.scala 39:67 controler.scala 135:21]
    node _GEN_28 = mux(_T_9, UInt<1>("h0"), _GEN_23) @[Conditional.scala 39:67 controler.scala 136:20]
    node _GEN_29 = mux(_T_9, UInt<1>("h0"), _GEN_19) @[Conditional.scala 39:67 controler.scala 137:20]
    node _GEN_30 = mux(_T_9, UInt<1>("h0"), _GEN_21) @[Conditional.scala 39:67 controler.scala 138:26]
    node _GEN_31 = mux(_T_8, UInt<1>("h1"), _GEN_24) @[Conditional.scala 39:67 controler.scala 117:24]
    node _GEN_32 = mux(_T_8, UInt<2>("h3"), _GEN_27) @[Conditional.scala 39:67 controler.scala 118:21]
    node _GEN_33 = mux(_T_8, UInt<1>("h1"), _GEN_28) @[Conditional.scala 39:67 controler.scala 119:20]
    node _GEN_34 = mux(_T_8, UInt<1>("h1"), _GEN_29) @[Conditional.scala 39:67 controler.scala 120:20]
    node _GEN_35 = mux(_T_8, UInt<2>("h3"), _GEN_26) @[Conditional.scala 39:67 controler.scala 121:23]
    node _GEN_36 = mux(_T_8, UInt<1>("h0"), _GEN_25) @[Conditional.scala 39:67 controler.scala 122:24]
    node _GEN_37 = mux(_T_8, UInt<1>("h0"), _GEN_26) @[Conditional.scala 39:67 controler.scala 123:22]
    node _GEN_38 = mux(_T_8, UInt<1>("h0"), _GEN_30) @[Conditional.scala 39:67 controler.scala 126:26]
    node _GEN_39 = mux(_T_7, UInt<1>("h1"), _GEN_31) @[Conditional.scala 39:67 controler.scala 104:24]
    node _GEN_40 = mux(_T_7, UInt<2>("h3"), _GEN_32) @[Conditional.scala 39:67 controler.scala 105:21]
    node _GEN_41 = mux(_T_7, UInt<1>("h1"), _GEN_33) @[Conditional.scala 39:67 controler.scala 106:20]
    node _GEN_42 = mux(_T_7, UInt<2>("h2"), _GEN_35) @[Conditional.scala 39:67 controler.scala 107:23]
    node _GEN_43 = mux(_T_7, UInt<1>("h0"), _GEN_36) @[Conditional.scala 39:67 controler.scala 108:24]
    node _GEN_44 = mux(_T_7, UInt<1>("h0"), _GEN_37) @[Conditional.scala 39:67 controler.scala 109:22]
    node _GEN_45 = mux(_T_7, UInt<1>("h0"), _GEN_34) @[Conditional.scala 39:67 controler.scala 112:20]
    node _GEN_46 = mux(_T_7, UInt<1>("h0"), _GEN_38) @[Conditional.scala 39:67 controler.scala 113:26]
    node _GEN_47 = mux(_T_6, UInt<1>("h1"), _GEN_39) @[Conditional.scala 39:67 controler.scala 92:24]
    node _GEN_48 = mux(_T_6, UInt<1>("h1"), _GEN_43) @[Conditional.scala 39:67 controler.scala 93:23]
    node _GEN_49 = mux(_T_6, UInt<3>("h4"), _GEN_40) @[Conditional.scala 39:67 controler.scala 95:21]
    node _GEN_50 = mux(_T_6, UInt<1>("h1"), _GEN_45) @[Conditional.scala 39:67 controler.scala 96:20]
    node _GEN_51 = mux(_T_6, UInt<1>("h0"), _GEN_43) @[Conditional.scala 39:67 controler.scala 97:24]
    node _GEN_52 = mux(_T_6, UInt<1>("h0"), _GEN_44) @[Conditional.scala 39:67 controler.scala 98:22]
    node _GEN_53 = mux(_T_6, UInt<1>("h0"), _GEN_41) @[Conditional.scala 39:67 controler.scala 99:20]
    node _GEN_54 = mux(_T_6, UInt<1>("h0"), _GEN_46) @[Conditional.scala 39:67 controler.scala 100:26]
    node _GEN_55 = mux(_T_6, UInt<1>("h0"), _GEN_42) @[Conditional.scala 39:67 controler.scala 101:23]
    node _GEN_56 = mux(_T_5, UInt<1>("h1"), _GEN_47) @[Conditional.scala 39:67 controler.scala 80:20]
    node _GEN_57 = mux(_T_5, UInt<1>("h1"), _GEN_49) @[Conditional.scala 39:67 controler.scala 81:17]
    node _GEN_58 = mux(_T_5, UInt<1>("h1"), _GEN_50) @[Conditional.scala 39:67 controler.scala 82:16]
    node _GEN_59 = mux(_T_5, UInt<1>("h0"), _GEN_51) @[Conditional.scala 39:67 controler.scala 83:20]
    node _GEN_60 = mux(_T_5, UInt<1>("h0"), _GEN_52) @[Conditional.scala 39:67 controler.scala 84:18]
    node _GEN_61 = mux(_T_5, UInt<1>("h0"), _GEN_48) @[Conditional.scala 39:67 controler.scala 85:20]
    node _GEN_62 = mux(_T_5, UInt<1>("h0"), _GEN_53) @[Conditional.scala 39:67 controler.scala 87:16]
    node _GEN_63 = mux(_T_5, UInt<1>("h0"), _GEN_54) @[Conditional.scala 39:67 controler.scala 88:22]
    node _GEN_64 = mux(_T_5, UInt<1>("h0"), _GEN_55) @[Conditional.scala 39:67 controler.scala 89:19]
    node _GEN_65 = mux(_T, _GEN_4, _GEN_56) @[Conditional.scala 40:58]
    node _GEN_66 = mux(_T, _GEN_5, _GEN_61) @[Conditional.scala 40:58]
    node _GEN_67 = mux(_T, _GEN_6, _GEN_57) @[Conditional.scala 40:58]
    node _GEN_68 = mux(_T, _GEN_7, _GEN_58) @[Conditional.scala 40:58]
    node _GEN_69 = mux(_T, _GEN_8, _GEN_59) @[Conditional.scala 40:58]
    node _GEN_70 = mux(_T, _GEN_8, _GEN_60) @[Conditional.scala 40:58]
    node _GEN_71 = mux(_T, _GEN_8, _GEN_62) @[Conditional.scala 40:58]
    node _GEN_72 = mux(_T, _GEN_8, _GEN_63) @[Conditional.scala 40:58]
    node _GEN_73 = mux(_T, _GEN_8, _GEN_64) @[Conditional.scala 40:58]
    io_memwrite <= _GEN_69
    io_branch <= _GEN_70
    io_memread <= _GEN_66
    io_regwrite <= _GEN_65
    io_memtoreg <= _GEN_66
    io_aluop <= _GEN_67
    io_op_a <= _GEN_71
    io_op_b <= _GEN_68
    io_extend_sel <= _GEN_72
    io_next_pc <= _GEN_73
