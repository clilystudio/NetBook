package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class cm implements View$OnClickListener {

    private int a;
    private ReaderTtsSetWidget b;
    cm(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2) {
        b = ReaderTtsSetWidget1;
        a = int2;
    }

    public final void onClick(View View1) {
        if (!com.clilystudio.netbook.reader.ReaderTtsSetWidget.a(b, ReaderTtsSetWidget.h(b)[a]))
            ReaderTtsSetWidget.c(b, a);
    }
}
