package com.clilystudio.netbook.ui.post;

final class cg
        implements Runnable {
    private /* synthetic */ cf a;

    cg(cf cf2) {
        this.a = cf2;
    }

    @Override
    public final void run() {
        OtherUserActivity.o(this.a.a);
    }
}
