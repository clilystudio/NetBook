package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.m;

final class e implements View$OnClickListener {

    private AlertDialog a;
    private int b;
    private int c;
    private FeedListActivity d;
    e(FeedListActivity FeedListActivity1, AlertDialog AlertDialog2, int int3, int int4) {
        d = FeedListActivity1;
        a = AlertDialog2;
        b = int3;
        c = int4;
    }

    public final void onClick(View View1) {
        a.dismiss();
        if (b != c) {
            int int2 = com.clilystudio.netbook.hpay100.a.a.e(b);

            com.clilystudio.netbook.hpay100.a.a.b((Context) d, "feed_chapter_count", int2);
            i.a().c(new m());
        }
    }
}
