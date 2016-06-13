package com.clilystudio.netbook.reader;

import android.view.View;

final class bR
        implements View.OnClickListener {
    private /* synthetic */ ReaderResActivity a;

    bR(ReaderResActivity readerResActivity) {
        this.a = readerResActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.b();
    }
}
