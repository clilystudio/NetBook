package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class bC implements Runnable {
    private /* synthetic */ bB a;

    bC(bB bB2) {
        this.a = bB2;
    }

    @Override
    public final void run() {
        if (!am.a((AsyncTask) GirlTopicListActivity.e(this.a.a))) {
            GirlTopicListActivity.e(this.a.a).cancel(true);
        }
        GirlTopicListActivity.a(this.a.a, new bJ(this.a.a, 0));
        bJ bJ2 = GirlTopicListActivity.h(this.a.a);
        String[] arrstring = new String[]{GirlTopicListActivity.f(this.a.a), GirlTopicListActivity.g(this.a.a)};
        bJ2.b(arrstring);
    }
}
