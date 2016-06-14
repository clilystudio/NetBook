package com.clilystudio.netbook.ui.user;

import android.annotation.TargetApi;

final class X implements Runnable {
    private /* synthetic */ W a;

    X(W w) {
        this.a = w;
    }

    @TargetApi(value = 11)
    @Override
    public final void run() {
        PayConsumeActivity.a(this.a.b.a).smoothScrollToPositionFromTop(this.a.a, 0);
    }
}
