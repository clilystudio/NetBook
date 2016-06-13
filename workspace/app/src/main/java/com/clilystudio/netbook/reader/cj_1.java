package com.clilystudio.netbook.reader;

import android.view.View;

final class cj
        implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ ReaderTtsSetWidget b;

    cj(ReaderTtsSetWidget readerTtsSetWidget, int n) {
        this.b = readerTtsSetWidget;
        this.a = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        if (ReaderTtsSetWidget.b(this.b) == this.a) {
            ReaderTtsSetWidget.a(this.b, this.a, false);
            ReaderTtsSetWidget.a(this.b, -1);
        } else {
            ReaderTtsSetWidget.b(this.b, this.a);
            ReaderTtsSetWidget.a(this.b, this.a);
        }
        ReaderTtsSetWidget.c(this.b);
        ReaderTtsSetWidget.a(this.b).c();
    }
}
