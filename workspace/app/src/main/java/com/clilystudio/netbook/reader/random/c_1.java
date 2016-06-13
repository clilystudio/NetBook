package com.clilystudio.netbook.reader.random;

import android.view.View;

final class c
        implements View.OnClickListener {
    private /* synthetic */ ReaderRandomActionBar a;

    c(ReaderRandomActionBar readerRandomActionBar) {
        this.a = readerRandomActionBar;
    }

    @Override
    public final void onClick(View view) {
        ReaderRandomActionBar.a(this.a, view.getId());
    }
}
