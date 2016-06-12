package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;

final class ci implements View$OnClickListener {

    private ReaderTtsSetWidget a;

    ci(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        a = ReaderTtsSetWidget1;
    }

    public final void onClick(View View1) {
        ReaderTtsSetWidget.a(a, ReaderTtsSetWidget.b(a), true);
        ReaderTtsSetWidget.a(a, true);
        ReaderTtsSetWidget.a(a, -1);
    }
}
