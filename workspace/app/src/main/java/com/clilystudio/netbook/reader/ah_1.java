
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class ah implements View$OnClickListener {

    ah(ReaderActionBar ReaderActionBar1)
    {
        a = ReaderActionBar1;
    }

    private ReaderActionBar a;

    public final void onClick(View View1)
    {
        ReaderActionBar.a( a, View1.getId() );
    }
}
