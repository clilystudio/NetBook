package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class ai implements View$OnClickListener {

    private ReaderActionBar a;

    ai(ReaderActionBar ReaderActionBar1) {
        a = ReaderActionBar1;
    }

    public final void onClick(View View1) {
        ReaderActionBar.a(a).a();
        a.a();
    }
}
