package com.clilystudio.netbook.reader;

import android.os.Message;

import java.util.TimerTask;

final class ck extends TimerTask {
    ck(ReaderTtsSetWidget paramReaderTtsSetWidget, int paramInt) {
    }

    public final void run() {
        if (!ReaderTtsSetWidget.d(this.b)) {
            if (ReaderTtsSetWidget.e(this.b) > 0)
                ReaderTtsSetWidget.f(this.b);
            Message localMessage = new Message();
            localMessage.what = this.a;
            localMessage.arg1 = ReaderTtsSetWidget.e(this.b);
            this.b.a.sendMessage(localMessage);
        }
    }
}

