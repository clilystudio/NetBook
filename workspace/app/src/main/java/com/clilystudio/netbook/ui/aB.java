package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.os.Message;

final class aB extends Handler {

    private BookInfoActivity a;

    aB(BookInfoActivity BookInfoActivity1) {
        a = BookInfoActivity1;
    }

    public final void handleMessage(Message Message1) {
        BookInfoActivity.a(a, true);
        BookInfoActivity.b(a);
    }
}
