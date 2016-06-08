package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.os.Message;

final class aB extends Handler {
    aB(BookInfoActivity paramBookInfoActivity) {
    }

    public final void handleMessage(Message paramMessage) {
        BookInfoActivity.a(this.a, true);
        BookInfoActivity.b(this.a);
    }
}

