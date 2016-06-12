
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class bQ implements View$OnClickListener {

    bQ(ReaderResActivity ReaderResActivity1)
    {
        a = ReaderResActivity1;
    }

    private ReaderResActivity a;

    public final void onClick(View View1)
    {
        a.finish();
    }
}
