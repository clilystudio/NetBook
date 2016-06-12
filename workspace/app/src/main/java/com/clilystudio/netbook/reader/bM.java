package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class bM implements View$OnClickListener {

    private ReaderOptionActivity a;

    bM(ReaderOptionActivity ReaderOptionActivity1) {
        a = ReaderOptionActivity1;
    }

    public final void onClick(View View1) {
        ReaderOptionActivity.a(a);
    }
}
