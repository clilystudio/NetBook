package com.clilystudio.netbook.reader;

import android.view.View;

final class ai
        implements View.OnClickListener {
    private /* synthetic */ ReaderActionBar a;

    ai(ReaderActionBar readerActionBar) {
        this.a = readerActionBar;
    }

    @Override
    public final void onClick(View view) {
        ReaderActionBar.a(this.a).a();
        this.a.a();
    }
}
