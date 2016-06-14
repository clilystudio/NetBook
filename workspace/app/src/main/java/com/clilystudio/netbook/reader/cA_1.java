package com.clilystudio.netbook.reader;

import android.view.View;

final class cA implements View.OnClickListener {
    private /* synthetic */ ReaderWebActionBar a;

    cA(ReaderWebActionBar readerWebActionBar) {
        this.a = readerWebActionBar;
    }

    @Override
    public final void onClick(View view) {
        ReaderWebActionBar.a(this.a, view.getId());
    }
}
