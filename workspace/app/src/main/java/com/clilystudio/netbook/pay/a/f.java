package com.clilystudio.netbook.pay.a;

public final class f {
    private static char a;
    private static byte[] b;
    private static char[] c;

    static {
        int n = 0;
        a = 61;
        b = new byte[128];
        c = new char[64];
        for (int i = 0; i < 128; ++i) {
            f.b[i] = -1;
        }
        for (int j = 90; j >= 65; --j) {
            f.b[j] = (byte) (j - 65);
        }
        for (int k = 122; k >= 97; --k) {
            f.b[k] = (byte) (26 + (k - 97));
        }
        for (int i2 = 57; i2 >= 48; --i2) {
            f.b[i2] = (byte) (52 + (i2 - 48));
        }
        f.b[43] = 62;
        f.b[47] = 63;
        for (int i3 = 0; i3 <= 25; ++i3) {
            f.c[i3] = (char) (i3 + 65);
        }
        int n2 = 26;
        int n3 = 0;
        while (n2 <= 51) {
            f.c[n2] = (char) (n3 + 97);
            ++n2;
            ++n3;
        }
        int n4 = 52;
        while (n4 <= 61) {
            f.c[n4] = (char) (n + 48);
            ++n4;
            ++n;
        }
        f.c[62] = 43;
        f.c[63] = 47;
    }

    private static boolean a(char c) {
        if (c == a) {
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static byte[] a(String var0) {
        if (var0 == null) {
            return null;
        }
        var1_1 = var0.toCharArray();
        if (var1_1 != null)**GOTO lbl7
        var4_2 = 0;
        **GOTO lbl -1000
        lbl7:
        // 1 sources:
        var2_3 = var1_1.length;
        var3_4 = 0;
        var4_2 = 0;
        do {
            if (var3_4 >= var2_3) lbl - 1000: // 2 sources:
            {
                if (var4_2 % 4 != 0) {
                    return null;
                }
                var8_8 = var4_2 / 4;
                if (var8_8 == 0) {
                    return new byte[0];
                }
                var9_9 = new byte[var8_8 * 3];
                var10_10 = 0;
                var11_11 = 0;
                break;
            }
            var5_5 = var1_1[var3_4];
            var6_6 = var5_5 == ' ' || var5_5 == '\r' || var5_5 == '\n' || var5_5 == '\t';
            if (!var6_6) {
                var7_7 = var4_2 + 1;
                var1_1[var4_2] = var1_1[var3_4];
            } else {
                var7_7 = var4_2;
            }
            ++var3_4;
            var4_2 = var7_7;
        } while (true);
        for (var12_12 = 0; var12_12 < var8_8 - 1; ++var12_12) {
            var30_13 = var10_10 + 1;
            var31_14 = var1_1[var10_10];
            if (f.b(var31_14) == false) return null;
            var32_15 = var30_13 + 1;
            var33_16 = var1_1[var30_13];
            if (f.b(var33_16) == false) return null;
            var34_17 = var32_15 + 1;
            var35_18 = var1_1[var32_15];
            if (f.b(var35_18) == false) return null;
            var10_10 = var34_17 + 1;
            var36_19 = var1_1[var34_17];
            if (!f.b(var36_19)) {
                return null;
            }
            var37_20 = f.b[var31_14];
            var38_21 = f.b[var33_16];
            var39_22 = f.b[var35_18];
            var40_23 = f.b[var36_19];
            var41_24 = var11_11 + 1;
            var9_9[var11_11] = (byte) (var37_20 << 2 | var38_21 >> 4);
            var42_25 = var41_24 + 1;
            var9_9[var41_24] = (byte) ((var38_21 & 15) << 4 | 15 & var39_22 >> 2);
            var11_11 = var42_25 + 1;
            var9_9[var42_25] = (byte) (var40_23 | var39_22 << 6);
        }
        var13_26 = var10_10 + 1;
        var14_27 = var1_1[var10_10];
        if (f.b(var14_27) == false) return null;
        var15_28 = var13_26 + 1;
        var16_29 = var1_1[var13_26];
        if (!f.b(var16_29)) {
            return null;
        }
        var17_30 = f.b[var14_27];
        var18_31 = f.b[var16_29];
        var19_32 = var15_28 + 1;
        var20_33 = var1_1[var15_28];
        var21_34 = var1_1[var19_32];
        if (f.b(var20_33) && f.b(var21_34)) {
            var26_39 = f.b[var20_33];
            var27_40 = f.b[var21_34];
            var28_41 = var11_11 + 1;
            var9_9[var11_11] = (byte) (var17_30 << 2 | var18_31 >> 4);
            var29_42 = var28_41 + 1;
            var9_9[var28_41] = (byte) ((var18_31 & 15) << 4 | 15 & var26_39 >> 2);
            var9_9[var29_42] = (byte) (var27_40 | var26_39 << 6);
            return var9_9;
        }
        if (f.a(var20_33) && f.a(var21_34)) {
            if ((var18_31 & 15) != 0) {
                return null;
            }
            var25_35 = new byte[1 + var12_12 * 3];
            System.arraycopy(var9_9, 0, var25_35, 0, var12_12 * 3);
            var25_35[var11_11] = (byte) (var17_30 << 2 | var18_31 >> 4);
            return var25_35;
        }
        if (f.a(var20_33) != false) return null;
        if (f.a(var21_34) == false) return null;
        var22_36 = f.b[var20_33];
        if ((var22_36 & 3) != 0) {
            return null;
        }
        var23_37 = new byte[2 + var12_12 * 3];
        System.arraycopy(var9_9, 0, var23_37, 0, var12_12 * 3);
        var24_38 = var11_11 + 1;
        var23_37[var11_11] = (byte) (var17_30 << 2 | var18_31 >> 4);
        var23_37[var24_38] = (byte) ((var18_31 & 15) << 4 | 15 & var22_36 >> 2);
        return var23_37;
    }

    private static boolean b(char c) {
        if (c < '?' && b[c] != -1) {
            return true;
        }
        return false;
    }
}
