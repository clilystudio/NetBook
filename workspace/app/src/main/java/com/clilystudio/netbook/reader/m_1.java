package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import java.util.ArrayList;

final class m
        extends Thread {
    private /* synthetic */ Handler a;
    private /* synthetic */ LocalChapterListActivity b;

    m(LocalChapterListActivity localChapterListActivity, Handler handler) {
        this.b = localChapterListActivity;
        this.a = handler;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void run() {
        Message message = new Message();
        try {
            ArrayList arrayList = LocalChapterListActivity.i(this.b);
            message.what = 1;
            message.obj = arrayList;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            message.what = -1;
        }
        this.a.sendMessage(message);
    }
}
