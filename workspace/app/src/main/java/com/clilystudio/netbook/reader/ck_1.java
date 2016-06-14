package com.clilystudio.netbook.reader;

import android.os.Message;

import java.util.TimerTask;

final class ck extends TimerTask {
    private /* synthetic */ int a;
    private /* synthetic */ ReaderTtsSetWidget b;

    ck(ReaderTtsSetWidget readerTtsSetWidget, int n) {
        this.b = readerTtsSetWidget;
        this.a = n;
    }

    @Override
    public final void run() {
        if (!ReaderTtsSetWidget.d(this.b)) {
            if (ReaderTtsSetWidget.e(this.b) > 0) {
                ReaderTtsSetWidget.f(this.b);
            }
            Message message = new Message();
            message.what = this.a;
            message.arg1 = ReaderTtsSetWidget.e(this.b);
            this.b.a.sendMessage(message);
        }
    }
}
