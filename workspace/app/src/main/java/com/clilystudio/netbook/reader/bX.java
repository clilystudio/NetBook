package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class bX implements View$OnClickListener {

    private String a;
    private ReaderResourceFragment b;
    bX(ReaderResourceFragment ReaderResourceFragment1, String String2) {
        b = ReaderResourceFragment1;
        a = String2;
    }

    public final void onClick(View View1) {
        ReaderResourceFragment.a(b, a);
    }
}
