package com.clilystudio.netbook.ui.post;

final class cc implements Runnable {
    private /* synthetic */ OtherUserActivity a;

    cc(OtherUserActivity otherUserActivity) {
        this.a = otherUserActivity;
    }

    @Override
    public final void run() {
        OtherUserActivity.e(this.a);
        OtherUserActivity.f(this.a);
    }
}
