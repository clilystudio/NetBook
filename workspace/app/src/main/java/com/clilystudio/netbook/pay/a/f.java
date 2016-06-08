package com.clilystudio.netbook.pay.a;

public final class f {
    private static char a;
    private static byte[] b;
    private static char[] c;

    static {
        int i = 0;
        a = '=';
        b = new byte[''];
        c = new char[64];
        for (int j = 0; j < 128; j++)
            b[j] = -1;
        for (int k = 90; k >= 65; k--)
            b[k] = (byte) (k - 65);
        for (int m = 122; m >= 97; m--)
            b[m] = (byte) (26 + (m - 97));
        for (int n = 57; n >= 48; n--)
            b[n] = (byte) (52 + (n - 48));
        b[43] = 62;
        b[47] = 63;
        for (int i1 = 0; i1 <= 25; i1++)
            c[i1] = (char) (i1 + 65);
        int i2 = 26;
        for (int i3 = 0; i2 <= 51; i3++) {
            c[i2] = (char) (i3 + 97);
            i2++;
        }
        int i4 = 52;
        while (i4 <= 61) {
            c[i4] = (char) (i + 48);
            i4++;
            i++;
        }
        c[62] = '+';
        c[63] = '/';
    }

    private static boolean a(char paramChar) {
        return paramChar == a;
    }

    public static byte[] a(String paramString) {
        if (paramString == null)
            return null;
        char[] arrayOfChar = paramString.toCharArray();
        int k;
        int j;
        label35:
        int n;
        label76:
        int i1;
        if (arrayOfChar == null) {
            k = 0;
            if (k % 4 != 0)
                return null;
        } else {
            int i = arrayOfChar.length;
            j = 0;
            k = 0;
            if (j < i) {
                int m = arrayOfChar[j];
                if ((m != 32) && (m != 13) && (m != 10) && (m != 9))
                    break label104;
                n = 1;
                if (n != 0)
                    break label682;
                i1 = k + 1;
                arrayOfChar[k] = arrayOfChar[j];
            }
        }
        while (true) {
            j++;
            k = i1;
            break label35;
            break;
            label104:
            n = 0;
            break label76;
            int i2 = k / 4;
            if (i2 == 0)
                return new byte[0];
            byte[] arrayOfByte1 = new byte[i2 * 3];
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i2 - 1; i5++) {
                int i17 = i3 + 1;
                char c5 = arrayOfChar[i3];
                char c6;
                char c7;
                char c8;
                if (b(c5)) {
                    int i18 = i17 + 1;
                    c6 = arrayOfChar[i17];
                    if (b(c6)) {
                        int i19 = i18 + 1;
                        c7 = arrayOfChar[i18];
                        if (b(c7)) {
                            i3 = i19 + 1;
                            c8 = arrayOfChar[i19];
                            if (b(c8))
                                break label233;
                        }
                    }
                }
                return null;
                label233:
                int i20 = b[c5];
                int i21 = b[c6];
                int i22 = b[c7];
                int i23 = b[c8];
                int i24 = i4 + 1;
                arrayOfByte1[i4] = (byte) (i20 << 2 | i21 >> 4);
                int i25 = i24 + 1;
                arrayOfByte1[i24] = (byte) ((i21 & 0xF) << 4 | 0xF & i22 >> 2);
                i4 = i25 + 1;
                arrayOfByte1[i25] = (byte) (i23 | i22 << 6);
            }
            int i6 = i3 + 1;
            char c1 = arrayOfChar[i3];
            int i7;
            char c2;
            if (b(c1)) {
                i7 = i6 + 1;
                c2 = arrayOfChar[i6];
                if (b(c2)) ;
            } else {
                return null;
            }
            int i8 = b[c1];
            int i9 = b[c2];
            int i10 = i7 + 1;
            char c3 = arrayOfChar[i7];
            char c4 = arrayOfChar[i10];
            if ((!b(c3)) || (!b(c4))) {
                if ((a(c3)) && (a(c4))) {
                    if ((i9 & 0xF) != 0)
                        return null;
                    byte[] arrayOfByte3 = new byte[1 + i5 * 3];
                    System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, i5 * 3);
                    arrayOfByte3[i4] = (byte) (i8 << 2 | i9 >> 4);
                    return arrayOfByte3;
                }
                if ((!a(c3)) && (a(c4))) {
                    int i11 = b[c3];
                    if ((i11 & 0x3) != 0)
                        return null;
                    byte[] arrayOfByte2 = new byte[2 + i5 * 3];
                    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i5 * 3);
                    int i12 = i4 + 1;
                    arrayOfByte2[i4] = (byte) (i8 << 2 | i9 >> 4);
                    arrayOfByte2[i12] = (byte) ((i9 & 0xF) << 4 | 0xF & i11 >> 2);
                    return arrayOfByte2;
                }
                return null;
            }
            int i13 = b[c3];
            int i14 = b[c4];
            int i15 = i4 + 1;
            arrayOfByte1[i4] = (byte) (i8 << 2 | i9 >> 4);
            int i16 = i15 + 1;
            arrayOfByte1[i15] = (byte) ((i9 & 0xF) << 4 | 0xF & i13 >> 2);
            arrayOfByte1[i16] = (byte) (i14 | i13 << 6);
            return arrayOfByte1;
            label682:
            i1 = k;
        }
    }

    private static boolean b(char paramChar) {
        return (paramChar < '') && (b[paramChar] != -1);
    }
}

