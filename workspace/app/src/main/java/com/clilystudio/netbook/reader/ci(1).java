package com.clilystudio.netbook.reader;

import android.view.View;

final class ci
        implements View.OnClickListener {
    ci(ReaderTtsSetWidget paramReaderTtsSetWidget) {
    }

    public final void onClick(View paramView) {
        ReaderTtsSetWidget.a(this.a, ReaderTtsSetWidget.b(this.a), true);
        ReaderTtsSetWidget.a(this.a, true);
        ReaderTtsSetWidget.a(this.a, -1);
    }
}

