package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import java.util.ArrayList;

final class l extends Handler {
    private /* synthetic */ LocalChapterListActivity a;

    l(LocalChapterListActivity localChapterListActivity) {
        this.a = localChapterListActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void handleMessage(Message message) {
        super.handleMessage(message);
        if (LocalChapterListActivity.f(this.a) != null) {
            LocalChapterListActivity.f(this.a).dismiss();
        }
        if (message.what == 1 && message.obj != null) {
            ArrayList arrayList = (ArrayList) message.obj;
            if (arrayList.size() == 0) {
                LocalChapterListActivity.g(this.a).setVisibility(View.GONE);
                LocalChapterListActivity.h(this.a).setVisibility(View.VISIBLE);
                LocalChapterListActivity.h(this.a).setText("\u65e0\u9884\u8bfb\u7ae0\u8282");
            } else {
                LocalChapterListActivity.g(this.a).setVisibility(View.VISIBLE);
                LocalChapterListActivity.h(this.a).setVisibility(View.GONE);
            }
            LocalChapterListActivity.b(this.a).a(arrayList);
        }
    }
}
