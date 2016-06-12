package com.clilystudio.netbook.reader;

import android.os.Message;

import java.util.TimerTask;

final class ck extends TimerTask {

    private int a;
    private ReaderTtsSetWidget b;
    ck(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2) {
        b = ReaderTtsSetWidget1;
        a = int2;
    }

    public final void run() {
        if (!com.clilystudio.netbook.reader.ReaderTtsSetWidget.d(b)) {
            Message Message1;

            if (ReaderTtsSetWidget.e(b) > 0)
                ReaderTtsSetWidget.f(b);
            Message1 = new Message();
            Message1.what = a;
            Message1.arg1 = ReaderTtsSetWidget.e(b);
            b.a.sendMessage(Message1);
        }
    }
}
