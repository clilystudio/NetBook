
package com.clilystudio.netbook.reader.random;

import android.view.View;
import android.view.View$OnClickListener;

final class c implements View$OnClickListener {

    c(ReaderRandomActionBar ReaderRandomActionBar1)
    {
        a = ReaderRandomActionBar1;
    }

    private ReaderRandomActionBar a;

    public final void onClick(View View1)
    {
        ReaderRandomActionBar.a( a, View1.getId() );
    }
}
