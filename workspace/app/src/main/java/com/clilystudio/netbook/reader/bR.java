package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class bR implements View$OnClickListener {

    private ReaderResActivity a;

    bR(ReaderResActivity ReaderResActivity1) {
        a = ReaderResActivity1;
    }

    public final void onClick(View View1) {
        a.b();
    }
}
