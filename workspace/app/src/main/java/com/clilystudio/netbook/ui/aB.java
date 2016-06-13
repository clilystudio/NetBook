package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.os.Message;

final class aB
        extends Handler {
    private /* synthetic */ BookInfoActivity a;

    aB(BookInfoActivity bookInfoActivity) {
        this.a = bookInfoActivity;
    }

    @Override
    public final void handleMessage(Message message) {
        BookInfoActivity.a(this.a, true);
        BookInfoActivity.b(this.a);
    }
}
