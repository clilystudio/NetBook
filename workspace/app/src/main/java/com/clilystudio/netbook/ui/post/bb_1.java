package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class bb
        implements Runnable {
    private /* synthetic */ ba a;

    bb(ba ba2) {
        this.a = ba2;
    }

    @Override
    public final void run() {
        if (!am.a(CommonPostListActivity.c(this.a.a))) {
            CommonPostListActivity.c(this.a.a).cancel(true);
        }
        CommonPostListActivity.a(this.a.a, new bi(this.a.a, 0));
        bi bi2 = CommonPostListActivity.f(this.a.a);
        String[] arrstring = new String[]{CommonPostListActivity.d(this.a.a), CommonPostListActivity.e(this.a.a)};
        bi2.b(arrstring);
    }
}
