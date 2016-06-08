package com.clilystudio.netbook.reader;

import android.view.View;

final class cm
        implements View.OnClickListener {
    cm(ReaderTtsSetWidget paramReaderTtsSetWidget, int paramInt) {
    }

    public final void onClick(View paramView) {
        if (!ReaderTtsSetWidget.a(this.b, ReaderTtsSetWidget.h(this.b)[this.a]))
            ReaderTtsSetWidget.c(this.b, this.a);
    }
}

