package com.clilystudio.netbook.reader;

import android.view.View;

final class ci implements View.OnClickListener {
    private /* synthetic */ ReaderTtsSetWidget a;

    ci(ReaderTtsSetWidget readerTtsSetWidget) {
        this.a = readerTtsSetWidget;
    }

    @Override
    public final void onClick(View view) {
        ReaderTtsSetWidget.a(this.a, ReaderTtsSetWidget.b(this.a), true);
        ReaderTtsSetWidget.a(this.a, true);
        ReaderTtsSetWidget.a(this.a, -1);
    }
}
