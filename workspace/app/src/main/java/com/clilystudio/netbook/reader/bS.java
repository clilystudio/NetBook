package com.clilystudio.netbook.reader;

import android.view.View;

final class bS implements View.OnClickListener {
    private /* synthetic */ ReaderResActivity a;

    bS(ReaderResActivity readerResActivity) {
        this.a = readerResActivity;
    }

    @Override
    public final void onClick(View view) {
        this.a.a(ReaderResActivity.a(this.a));
    }
}
