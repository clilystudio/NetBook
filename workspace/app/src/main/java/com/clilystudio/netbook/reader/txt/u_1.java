
package com.clilystudio.netbook.reader.txt;

import android.view.View$OnSystemUiVisibilityChangeListener;

final class u implements View$OnSystemUiVisibilityChangeListener {

    u(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onSystemUiVisibilityChange(int int1)
    {
        ReaderTxtActivity ReaderTxtActivity2 = a;
        boolean boolean3;

        if( (int1 & 0x1) == 0 )
            boolean3 = true;
        else
            boolean3 = false;
        ReaderTxtActivity.d( ReaderTxtActivity2, boolean3 );
    }
}
