
package com.clilystudio.netbook.reader;

import android.os.AsyncTask;
import android.view.View;
import android.view.View$OnClickListener;

final class bU implements View$OnClickListener {

    bU(ReaderResourceFragment ReaderResourceFragment1)
    {
        a = ReaderResourceFragment1;
    }

    private ReaderResourceFragment a;

    public final void onClick(View View1)
    {
        bY bY2;
        String[] String_1darray3;

        ReaderResourceFragment.a( a, 0 );
        bY2 = new bY( a, (byte) 0 );
        String_1darray3 = new String[1];
        String_1darray3[0] = ReaderResourceFragment.a( a );
        bY2.b( String_1darray3 );
    }
}
