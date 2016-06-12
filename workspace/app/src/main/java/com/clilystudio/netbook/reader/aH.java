
package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.model.ChapterLink;

final class aH implements af {

    aH(ReaderActivity ReaderActivity1, int int2)
    {
        b = ReaderActivity1;
        a = int2;
    }

    private int a;
    private ReaderActivity b;

    public final void a()
    {
        ChapterLink[] ChapterLink_1darray1;

        ReaderActivity.P( b );
        ChapterLink_1darray1 = ReaderActivity.Y( b ).d();
        if( ChapterLink_1darray1 != null )
        {
            if( a < ChapterLink_1darray1.length )
                ReaderActivity.h( b, ChapterLink_1darray1.length );
            else
            {
                b.h_();
                return;
            }
        }
    }

    public final void b()
    {
        ReaderActivity.P( b );
    }
}
