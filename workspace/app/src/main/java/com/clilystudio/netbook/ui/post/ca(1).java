package com.clilystudio.netbook.ui.post;

final class ca
        implements Runnable {
    ca(bZ parambZ) {
    }

    public final void run() {
        if (!am.a(OtherUserActivity.b(this.a.a)))
            OtherUserActivity.b(this.a.a).cancel(true);
        OtherUserActivity.c(this.a.a);
    }
}

