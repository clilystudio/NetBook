package com.clilystudio.netbook.reader;

import android.view.View;

final class bQ
        implements View.OnClickListener {
    private /* synthetic */ ReaderResActivity a;

    bQ(ReaderResActivity readerResActivity) {
        this.a = readerResActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.finish();
    }
}
