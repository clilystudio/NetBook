
package com.clilystudio.netbook.pay.a;

public final class f {

    private static char a = '=';
    private static byte[] b = new byte[128];
    private static char[] c = new char[64];

    private static boolean a(char char1)
    {
        if( char1 == a )
            return true;
        else
            return false;
    }

    public static byte[] a(String String1)
    {
        if( String1 == null )
            return null;
        else
        {
            char[] char_1darray2 = String1.toCharArray();
            int int5;

            if( char_1darray2 == null )
                int5 = 0;
            else
            {
                int int3 = char_1darray2.length;
                int int4 = 0;
                int int8;

                for( int5 = 0; int4 < int3; int5 = int8 )
                {
                    char char6 = char_1darray2[int4];
                    int int7;

                    if( char6 == 32 || char6 == 13 || char6 == 10 || char6 == 9 )
                        int7 = 1;
                    else
                        int7 = 0;
                    if( int7 == 0 )
                    {
                        int8 = int5 + 1;
                        char_1darray2[int5] = char_1darray2[int4];
                    }
                    else
                        int8 = int5;
                    ++int4;
                }
            }
            if( int5 % 4 != 0 )
                return null;
            else
            {
                int int9 = int5 / 4;

                if( int9 == 0 )
                    return new byte[0];
                else
                {
                    byte[] byte_1darray10 = new byte[int9 * 3];
                    int int11 = 0;
                    int int12 = 0;
                    int int13 = 0;
                    int int14;
                    char char15;

                    while( int13 < int9 - 1 )
                    {
                        int int31 = int11 + 1;
                        char char32 = char_1darray2[int11];

                        if( b( char32 ) )
                        {
                            int int33 = int31 + 1;
                            char char34 = char_1darray2[int31];

                            if( b( char34 ) )
                            {
                                int int35 = int33 + 1;
                                char char36 = char_1darray2[int33];

                                if( b( char36 ) )
                                {
                                    char char37;

                                    int11 = int35 + 1;
                                    char37 = char_1darray2[int35];
                                    if( b( char37 ) )
                                    {
                                        byte byte38 = b[char32];
                                        byte byte39 = b[char34];
                                        byte byte40 = b[char36];
                                        byte byte41 = b[char37];
                                        int int42 = int12 + 1;
                                        int int43;

                                        byte_1darray10[int12] = (byte) (byte38 << 0x2 | byte39 >> 0x4);
                                        int43 = int42 + 1;
                                        byte_1darray10[int42] = (byte) ((byte39 & 0xF) << 0x4 | 0xF & byte40 >> 0x2);
                                        int12 = int43 + 1;
                                        byte_1darray10[int43] = (byte) (byte41 | byte40 << 0x6);
                                        ++int13;
                                        continue;
                                    }
                                }
                            }
                        }
                        return null;
                    }
                    int14 = int11 + 1;
                    char15 = char_1darray2[int11];
                    if( b( char15 ) )
                    {
                        int int16 = int14 + 1;
                        char char17 = char_1darray2[int14];

                        if( b( char17 ) )
                        {
                            byte byte18 = b[char15];
                            byte byte19 = b[char17];
                            int int20 = int16 + 1;
                            char char21 = char_1darray2[int16];
                            char char22 = char_1darray2[int20];

                            if( !b( char21 ) || !b( char22 ) )
                            {
                                if( a( char21 ) && a( char22 ) )
                                {
                                    if( (byte19 & 0xF) != 0 )
                                        return null;
                                    else
                                    {
                                        byte[] byte_1darray26 = new byte[1 + int13 * 3];

                                        System.arraycopy( byte_1darray10, 0, byte_1darray26, 0, int13 * 3 );
                                        byte_1darray26[int12] = (byte) (byte18 << 0x2 | byte19 >> 0x4);
                                        return byte_1darray26;
                                    }
                                }
                                else
                                {
                                    byte byte23;

                                    if( a( char21 ) || !a( char22 ) )
                                        return null;
                                    byte23 = b[char21];
                                    if( (byte23 & 0x3) != 0 )
                                        return null;
                                    else
                                    {
                                        byte[] byte_1darray24 = new byte[2 + int13 * 3];
                                        int int25;

                                        System.arraycopy( byte_1darray10, 0, byte_1darray24, 0, int13 * 3 );
                                        int25 = int12 + 1;
                                        byte_1darray24[int12] = (byte) (byte18 << 0x2 | byte19 >> 0x4);
                                        byte_1darray24[int25] = (byte) ((byte19 & 0xF) << 0x4 | 0xF & byte23 >> 0x2);
                                        return byte_1darray24;
                                    }
                                }
                            }
                            else
                            {
                                byte byte27 = b[char21];
                                byte byte28 = b[char22];
                                int int29 = int12 + 1;
                                int int30;

                                byte_1darray10[int12] = (byte) (byte18 << 0x2 | byte19 >> 0x4);
                                int30 = int29 + 1;
                                byte_1darray10[int29] = (byte) ((byte19 & 0xF) << 0x4 | 0xF & byte27 >> 0x2);
                                byte_1darray10[int30] = (byte) (byte28 | byte27 << 0x6);
                                return byte_1darray10;
                            }
                        }
                    }
                    return null;
                }
            }
        }
    }

    private static boolean b(char char1)
    {
        if( char1 < 128 && b[char1] != -1 )
            return true;
        else
            return false;
    }

    static 
    {
        int int1 = 0;
        int int2;
        int int3;
        int int4;
        int int5;
        int int6;
        int int7;
        int int8;
        int int9;

        for( int2 = 0; int2 < 128; ++int2 )
            b[int2] = (byte) -1;
        for( int3 = 90; int3 >= 65; --int3 )
            b[int3] = (byte) (int3 - 65);
        for( int4 = 122; int4 >= 97; --int4 )
            b[int4] = (byte) (26 + (int4 - 97));
        for( int5 = 57; int5 >= 48; --int5 )
            b[int5] = (byte) (52 + (int5 - 48));
        b[43] = (byte) 62;
        b[47] = (byte) 63;
        for( int6 = 0; int6 <= 25; ++int6 )
            c[int6] = (char) (int6 + 65);
        int7 = 26;
        for( int8 = 0; int7 <= 51; ++int8 )
        {
            c[int7] = (char) (int8 + 97);
            ++int7;
        }
        int9 = 52;
        while( int9 <= 61 )
        {
            c[int9] = (char) (int1 + 48);
            ++int9;
            ++int1;
        }
        c[62] = '+';
        c[63] = '/';
    }
}
