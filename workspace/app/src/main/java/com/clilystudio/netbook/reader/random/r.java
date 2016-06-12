
package com.clilystudio.netbook.reader.random;

import android.view.View$OnSystemUiVisibilityChangeListener;

final class r implements View$OnSystemUiVisibilityChangeListener {

    r(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void onSystemUiVisibilityChange(int int1)
    {
        ReaderRandomActivity ReaderRandomActivity2 = a;
        boolean boolean3;

        if( (int1 & 0x1) == 0 )
            boolean3 = true;
        else
            boolean3 = false;
        ReaderRandomActivity.b( ReaderRandomActivity2, boolean3 );
    }
}
