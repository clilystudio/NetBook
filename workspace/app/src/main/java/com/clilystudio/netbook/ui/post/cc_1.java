package com.clilystudio.netbook.ui.post;

final class cc implements Runnable {

    private OtherUserActivity a;

    cc(OtherUserActivity OtherUserActivity1) {
        a = OtherUserActivity1;
    }

    public final void run() {
        OtherUserActivity.e(a);
        OtherUserActivity.f(a);
    }
}
