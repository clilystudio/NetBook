package com.clilystudio.netbook.reader;

import android.view.View;

final class cm
        implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ ReaderTtsSetWidget b;

    cm(ReaderTtsSetWidget readerTtsSetWidget, int n) {
        this.b = readerTtsSetWidget;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        if (!ReaderTtsSetWidget.a(this.b, ReaderTtsSetWidget.h(this.b)[this.a])) {
            ReaderTtsSetWidget.c(this.b, this.a);
        }
    }
}
