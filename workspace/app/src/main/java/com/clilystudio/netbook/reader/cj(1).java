package com.clilystudio.netbook.reader;

import android.view.View;

final class cj
        implements View.OnClickListener {
    cj(ReaderTtsSetWidget paramReaderTtsSetWidget, int paramInt) {
    }

    public final void onClick(View paramView) {
        if (ReaderTtsSetWidget.b(this.b) == this.a) {
            ReaderTtsSetWidget.a(this.b, this.a, false);
            ReaderTtsSetWidget.a(this.b, -1);
        }
        while (true) {
            ReaderTtsSetWidget.c(this.b);
            ReaderTtsSetWidget.a(this.b).c();
            return;
            ReaderTtsSetWidget.b(this.b, this.a);
            ReaderTtsSetWidget.a(this.b, this.a);
        }
    }
}
