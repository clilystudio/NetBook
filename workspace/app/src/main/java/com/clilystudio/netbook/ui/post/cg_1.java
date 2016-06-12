package com.clilystudio.netbook.ui.post;

final class cg implements Runnable {

    private cf a;

    cg(cf cf1) {
        a = cf1;
    }

    public final void run() {
        OtherUserActivity.o(a.a);
    }
}
