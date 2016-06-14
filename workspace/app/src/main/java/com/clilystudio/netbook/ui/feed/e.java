package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.m;

final class e implements View.OnClickListener {
    private /* synthetic */ AlertDialog a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ FeedListActivity d;

    e(FeedListActivity feedListActivity, AlertDialog alertDialog, int n, int n2) {
        this.d = feedListActivity;
        this.a = alertDialog;
        this.b = n;
        this.c = n2;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        if (this.b != this.c) {
            int n = a.e(this.b);
            a.b((Context) this.d, "feed_chapter_count", n);
            i.a().c(new m());
        }
    }
}
