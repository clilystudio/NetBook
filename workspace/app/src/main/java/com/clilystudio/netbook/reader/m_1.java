package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import java.util.ArrayList;

final class m extends Thread {

    private Handler a;
    private LocalChapterListActivity b;
    m(LocalChapterListActivity LocalChapterListActivity1, Handler Handler2) {
        b = LocalChapterListActivity1;
        a = Handler2;
    }

    public final void run() {
        Message Message1 = new Message();

        try {
            ArrayList ArrayList4 = LocalChapterListActivity.i(b);

            Message1.what = 1;
            Message1.obj = ArrayList4;
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            Message1.what = -1;
        }
        a.sendMessage(Message1);
    }
}
