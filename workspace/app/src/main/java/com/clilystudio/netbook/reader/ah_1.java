package com.clilystudio.netbook.reader;

import android.view.View;

final class ah
        implements View.OnClickListener {
    private /* synthetic */ ReaderActionBar a;

    ah(ReaderActionBar readerActionBar) {
        this.a = readerActionBar;
    }

    @Override
    public final void onClick(View view) {
        ReaderActionBar.a(this.a, view.getId());
    }
}
