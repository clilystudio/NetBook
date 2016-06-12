
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cj implements View$OnClickListener {

    cj(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2)
    {
        b = ReaderTtsSetWidget1;
        a = int2;
    }

    private int a;
    private ReaderTtsSetWidget b;

    public final void onClick(View View1)
    {
        if( ReaderTtsSetWidget.b( b ) == a )
        {
            ReaderTtsSetWidget.a( b, a, false );
            ReaderTtsSetWidget.a( b, -1 );
        }
        else
        {
            ReaderTtsSetWidget.b( b, a );
            ReaderTtsSetWidget.a( b, a );
        }
        ReaderTtsSetWidget.c( b );
        ReaderTtsSetWidget.a( b ).c();
    }
}
