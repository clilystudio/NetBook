package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import com.clilystudio.netbook.util.t;

final class cl extends Handler {

    private ReaderTtsSetWidget a;

    cl(ReaderTtsSetWidget ReaderTtsSetWidget1) {
        a = ReaderTtsSetWidget1;
    }

    public final void handleMessage(Message Message1) {
        if (Message1.what < ReaderTtsSetWidget.g(a).length && Message1.arg1 > 0)
            ReaderTtsSetWidget.g(a)[Message1.what].setText((CharSequence) t.b((long) (1000 * Message1.arg1)));
        else
            ReaderTtsSetWidget.a(a, Message1.what, true);
    }
}
