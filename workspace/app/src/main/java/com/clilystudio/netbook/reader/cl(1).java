package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import com.clilystudio.netbook.util.t;

final class cl extends Handler {
    cl(ReaderTtsSetWidget paramReaderTtsSetWidget) {
    }

    public final void handleMessage(Message paramMessage) {
        if ((paramMessage.what < ReaderTtsSetWidget.g(this.a).length) && (paramMessage.arg1 > 0)) {
            ReaderTtsSetWidget.g(this.a)[paramMessage.what].setText(t.b(1000 * paramMessage.arg1));
            return;
        }
        ReaderTtsSetWidget.a(this.a, paramMessage.what, true);
    }
}
