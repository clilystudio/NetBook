package com.clilystudio.netbook.ui.user;

final class X implements Runnable {

    private W a;

    X(W W1) {
        a = W1;
    }

    public final void run() {
        PayConsumeActivity.a(a.b.a).smoothScrollToPositionFromTop(a.a, 0);
    }
}
