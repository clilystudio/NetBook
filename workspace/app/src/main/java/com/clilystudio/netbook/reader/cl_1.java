package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import com.clilystudio.netbook.util.t;

final class cl
        extends Handler {
    private /* synthetic */ ReaderTtsSetWidget a;

    cl(ReaderTtsSetWidget readerTtsSetWidget) {
        this.a = readerTtsSetWidget;
    }

    @Override
    public final void handleMessage(Message message) {
        if (message.what < ReaderTtsSetWidget.g(this.a).length && message.arg1 > 0) {
            ReaderTtsSetWidget.g(this.a)[message.what].setText(t.b(1000 * message.arg1));
            return;
        }
        ReaderTtsSetWidget.a(this.a, message.what, true);
    }
}
