package com.clilystudio.netbook.reader;

import android.os.Handler;
import android.os.Message;

import java.util.ArrayList;
import java.util.Collection;

final class l extends Handler {

    private LocalChapterListActivity a;

    l(LocalChapterListActivity LocalChapterListActivity1) {
        a = LocalChapterListActivity1;
    }

    public final void handleMessage(Message Message1) {
        super.handleMessage(Message1);
        if (LocalChapterListActivity.f(a) != null)
            LocalChapterListActivity.f(a).dismiss();
        if (Message1.what == 1 && Message1.obj != null) {
            Object Object2 = (ArrayList) Message1.obj;

            if (((ArrayList) Object2).size() == 0) {
                LocalChapterListActivity.g(a).setVisibility(8);
                LocalChapterListActivity.h(a).setVisibility(0);
                LocalChapterListActivity.h(a).setText((CharSequence) "\u65E0\u9884\u8BFB\u7AE0\u8282");
            } else {
                LocalChapterListActivity.g(a).setVisibility(0);
                LocalChapterListActivity.h(a).setVisibility(8);
            }
            LocalChapterListActivity.b(a).a((Collection) Object2);
        }
    }
}
