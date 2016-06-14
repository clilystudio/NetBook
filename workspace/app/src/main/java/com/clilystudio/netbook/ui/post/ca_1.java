package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class ca implements Runnable {
    private /* synthetic */ bZ a;

    ca(bZ bZ2) {
        this.a = bZ2;
    }

    @Override
    public final void run() {
        if (!am.a(OtherUserActivity.b(this.a.a))) {
            OtherUserActivity.b(this.a.a).cancel(true);
        }
        OtherUserActivity.c(this.a.a);
    }
}
