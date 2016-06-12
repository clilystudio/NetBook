
package com.clilystudio.netbook.reader;

import android.view.View$OnSystemUiVisibilityChangeListener;

final class aV implements View$OnSystemUiVisibilityChangeListener {

    aV(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onSystemUiVisibilityChange(int int1)
    {
        ReaderActivity ReaderActivity2 = a;
        boolean boolean3;

        if( (int1 & 0x1) == 0 )
            boolean3 = true;
        else
            boolean3 = false;
        ReaderActivity.f( ReaderActivity2, boolean3 );
    }
}
