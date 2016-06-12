
package com.clilystudio.netbook.reader;

final class L implements e {

    L(K K1, e e2, int int3, int int4)
    {
        d = K1;
        a = e2;
        b = int3;
        c = int4;
    }

    private e a;
    private int b;
    private int c;
    private K d;

    public final void a(Object Object1)
    {
        ReaderChapter ReaderChapter2 = (ReaderChapter) Object1;

        if( ReaderChapter2.getStatus() != 1 )
            a.a( K.a( d, ReaderChapter2, b ) );
        else
        {
            int[] int_1darray3 = d.a( ReaderChapter2.getBody() );
            int int4 = c;
            int int5 = 0;

            if( int4 != 0 )
            {
                if( c == -1 )
                    int5 = -1 + int_1darray3.length;
                else
                {
                    int int6 = -1 + int_1darray3.length;

                    for( ;; )
                    {
                        int5 = 0;
                        if( int6 == 0 )
                            break;
                        if( c >= int_1darray3[int6] )
                        {
                            int5 = int6;
                            break;
                        }
                        else
                            --int6;
                    }
                }
            }
            a.a( new n( d, ReaderChapter2, int_1darray3, int5 ) );
        }
    }
}
