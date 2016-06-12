
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cA implements View$OnClickListener {

    cA(ReaderWebActionBar ReaderWebActionBar1)
    {
        a = ReaderWebActionBar1;
    }

    private ReaderWebActionBar a;

    public final void onClick(View View1)
    {
        ReaderWebActionBar.a( a, View1.getId() );
    }
}
