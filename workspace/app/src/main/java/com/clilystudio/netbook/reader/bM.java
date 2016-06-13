package com.clilystudio.netbook.reader;

import android.view.View;

final class bM
        implements View.OnClickListener {
    private /* synthetic */ ReaderOptionActivity a;

    bM(ReaderOptionActivity readerOptionActivity) {
        this.a = readerOptionActivity;
    }

    @Override
    public final void onClick(View view) {
        ReaderOptionActivity.a(this.a);
    }
}
