package com.clilystudio.netbook.hpay100.c;

public final class d {

    private static final byte[] a = new byte[128];
    private static final char[] b = new char[64];

    static {
        int int1 = 0;
        int int2;
        int int3;
        int int4;
        int int5;
        int int6;
        int int7;
        int int8;
        int int9;

        for (int2 = 0; int2 < 128; ++int2)
            a[int2] = (byte) -1;
        for (int3 = 90; int3 >= 65; --int3)
            a[int3] = (byte) (int3 - 65);
        for (int4 = 122; int4 >= 97; --int4)
            a[int4] = (byte) (26 + (int4 - 97));
        for (int5 = 57; int5 >= 48; --int5)
            a[int5] = (byte) (52 + (int5 - 48));
        a[43] = (byte) 62;
        a[47] = (byte) 63;
        for (int6 = 0; int6 <= 25; ++int6)
            b[int6] = (char) (int6 + 65);
        int7 = 26;
        for (int8 = 0; int7 <= 51; ++int8) {
            b[int7] = (char) (int8 + 97);
            ++int7;
        }
        int9 = 52;
        while (int9 <= 61) {
            b[int9] = (char) (int1 + 48);
            ++int9;
            ++int1;
        }
        b[62] = '+';
        b[63] = '/';
    }

    public static String a(byte[] byte_1darray1) {
        int int2 = 0;

        if (byte_1darray1 == null)
            return null;
        else {
            int int3 = byte_1darray1.length << 3;

            if (int3 == 0)
                return "";
            else {
                int int4 = int3 % 24;
                int int5 = int3 / 24;
                int int6;
                char[] char_1darray7;
                int int8;
                int int9;

                if (int4 != 0)
                    int6 = int5 + 1;
                else
                    int6 = int5;
                char_1darray7 = new char[int6 << 2];
                int8 = 0;
                int9 = 0;
                while (int8 < int5) {
                    int int10 = int2 + 1;
                    byte byte11 = byte_1darray1[int2];
                    int int12 = int10 + 1;
                    byte byte13 = byte_1darray1[int10];
                    int int14 = int12 + 1;
                    byte byte15 = byte_1darray1[int12];
                    byte byte16 = (byte) (byte13 & 0xF);
                    byte byte17 = (byte) (byte11 & 0x3);
                    byte byte18;
                    byte byte19;
                    byte byte20;
                    int int21;
                    int int22;
                    int int23;
                    int int24;

                    if ((byte11 & 0xFFFFFF80) == 0)
                        byte18 = (byte) (byte11 >> 2);
                    else
                        byte18 = (byte) (0xC0 ^ byte11 >> 0x2);
                    if ((byte13 & 0xFFFFFF80) == 0)
                        byte19 = (byte) (byte13 >> 4);
                    else
                        byte19 = (byte) (0xF0 ^ byte13 >> 0x4);
                    if ((byte15 & 0xFFFFFF80) == 0)
                        byte20 = (byte) (byte15 >> 6);
                    else
                        byte20 = (byte) (0xFC ^ byte15 >> 0x6);
                    int21 = int9 + 1;
                    char_1darray7[int9] = b[byte18];
                    int22 = int21 + 1;
                    char_1darray7[int21] = b[byte19 | byte17 << 0x4];
                    int23 = int22 + 1;
                    char_1darray7[int22] = b[byte20 | byte16 << 0x2];
                    int24 = int23 + 1;
                    char_1darray7[int23] = b[byte15 & 0x3F];
                    ++int8;
                    int9 = int24;
                    int2 = int14;
                }
                if (int4 == 8) {
                    byte byte34 = byte_1darray1[int2];
                    byte byte35 = (byte) (byte34 & 0x3);
                    byte byte36;
                    int int37;
                    int int38;
                    int int39;

                    if ((byte34 & 0xFFFFFF80) == 0)
                        byte36 = (byte) (byte34 >> 2);
                    else
                        byte36 = (byte) (0xC0 ^ byte34 >> 0x2);
                    int37 = int9 + 1;
                    char_1darray7[int9] = b[byte36];
                    int38 = int37 + 1;
                    char_1darray7[int37] = b[byte35 << 4];
                    int39 = int38 + 1;
                    char_1darray7[int38] = '=';
                    char_1darray7[int39] = '=';
                } else if (int4 == 16) {
                    byte byte25 = byte_1darray1[int2];
                    byte byte26 = byte_1darray1[int2 + 1];
                    byte byte27 = (byte) (byte26 & 0xF);
                    byte byte28 = (byte) (byte25 & 0x3);
                    byte byte29;
                    byte byte30;
                    int int31;
                    int int32;
                    int int33;

                    if ((byte25 & 0xFFFFFF80) == 0)
                        byte29 = (byte) (byte25 >> 2);
                    else
                        byte29 = (byte) (0xC0 ^ byte25 >> 0x2);
                    if ((byte26 & 0xFFFFFF80) == 0)
                        byte30 = (byte) (byte26 >> 4);
                    else
                        byte30 = (byte) (0xF0 ^ byte26 >> 0x4);
                    int31 = int9 + 1;
                    char_1darray7[int9] = b[byte29];
                    int32 = int31 + 1;
                    char_1darray7[int31] = b[byte30 | byte28 << 0x4];
                    int33 = int32 + 1;
                    char_1darray7[int32] = b[byte27 << 2];
                    char_1darray7[int33] = '=';
                }
                return new String(char_1darray7);
            }
        }
    }

    private static boolean a(char char1) {
        if (char1 == 61)
            return true;
        else
            return false;
    }

    public static byte[] a(String String1) {
        if (String1 == null)
            return null;
        else {
            char[] char_1darray2 = String1.toCharArray();
            int int5;

            if (char_1darray2 == null)
                int5 = 0;
            else {
                int int3 = char_1darray2.length;
                int int4 = 0;
                int int8;

                for (int5 = 0; int4 < int3; int5 = int8) {
                    char char6 = char_1darray2[int4];
                    int int7;

                    if (char6 != 32 && char6 != 13 && char6 != 10 && char6 != 9)
                        int7 = 0;
                    else
                        int7 = 1;
                    if (int7 == 0) {
                        int8 = int5 + 1;
                        char_1darray2[int5] = char_1darray2[int4];
                    } else
                        int8 = int5;
                    ++int4;
                }
            }
            if (int5 % 4 != 0)
                return null;
            else {
                int int9 = int5 / 4;

                if (int9 == 0)
                    return new byte[0];
                else {
                    byte[] byte_1darray10 = new byte[int9 * 3];
                    int int11 = 0;
                    int int12 = 0;
                    int int13 = 0;
                    int int27;
                    char char28;

                    while (int13 < int9 - 1) {
                        int int14 = int11 + 1;
                        char char15 = char_1darray2[int11];

                        if (b(char15)) {
                            int int16 = int14 + 1;
                            char char17 = char_1darray2[int14];

                            if (b(char17)) {
                                int int18 = int16 + 1;
                                char char19 = char_1darray2[int16];

                                if (b(char19)) {
                                    char char20;

                                    int11 = int18 + 1;
                                    char20 = char_1darray2[int18];
                                    if (b(char20)) {
                                        byte byte21 = a[char15];
                                        byte byte22 = a[char17];
                                        byte byte23 = a[char19];
                                        byte byte24 = a[char20];
                                        int int25 = int12 + 1;
                                        int int26;

                                        byte_1darray10[int12] = (byte) (byte21 << 0x2 | byte22 >> 0x4);
                                        int26 = int25 + 1;
                                        byte_1darray10[int25] = (byte) ((byte22 & 0xF) << 0x4 | 0xF & byte23 >> 0x2);
                                        int12 = int26 + 1;
                                        byte_1darray10[int26] = (byte) (byte24 | byte23 << 0x6);
                                        ++int13;
                                        continue;
                                    }
                                }
                            }
                        }
                        return null;
                    }
                    int27 = int11 + 1;
                    char28 = char_1darray2[int11];
                    if (b(char28)) {
                        int int29 = int27 + 1;
                        char char30 = char_1darray2[int27];

                        if (b(char30)) {
                            byte byte31 = a[char28];
                            byte byte32 = a[char30];
                            int int33 = int29 + 1;
                            char char34 = char_1darray2[int29];
                            char char35 = char_1darray2[int33];

                            if (!b(char34) || !b(char35)) {
                                if (a(char34) && a(char35)) {
                                    if ((byte32 & 0xF) != 0)
                                        return null;
                                    else {
                                        byte[] byte_1darray39 = new byte[1 + int13 * 3];

                                        System.arraycopy(byte_1darray10, 0, byte_1darray39, 0, int13 * 3);
                                        byte_1darray39[int12] = (byte) (byte31 << 0x2 | byte32 >> 0x4);
                                        return byte_1darray39;
                                    }
                                } else {
                                    byte byte36;

                                    if (a(char34) || !a(char35))
                                        return null;
                                    byte36 = a[char34];
                                    if ((byte36 & 0x3) != 0)
                                        return null;
                                    else {
                                        byte[] byte_1darray37 = new byte[2 + int13 * 3];
                                        int int38;

                                        System.arraycopy(byte_1darray10, 0, byte_1darray37, 0, int13 * 3);
                                        int38 = int12 + 1;
                                        byte_1darray37[int12] = (byte) (byte31 << 0x2 | byte32 >> 0x4);
                                        byte_1darray37[int38] = (byte) ((byte32 & 0xF) << 0x4 | 0xF & byte36 >> 0x2);
                                        return byte_1darray37;
                                    }
                                }
                            } else {
                                byte byte40 = a[char34];
                                byte byte41 = a[char35];
                                int int42 = int12 + 1;
                                int int43;

                                byte_1darray10[int12] = (byte) (byte31 << 0x2 | byte32 >> 0x4);
                                int43 = int42 + 1;
                                byte_1darray10[int42] = (byte) ((byte32 & 0xF) << 0x4 | 0xF & byte40 >> 0x2);
                                byte_1darray10[int43] = (byte) (byte41 | byte40 << 0x6);
                                return byte_1darray10;
                            }
                        }
                    }
                    return null;
                }
            }
        }
    }

    private static boolean b(char char1) {
        if (char1 < 128 && a[char1] != -1)
            return true;
        else
            return false;
    }
}
