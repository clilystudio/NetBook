package com.clilystudio.netbook.ui.feed;

import android.app.AlertDialog;
import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.event.m;
import com.squareup.a.b;

final class e
        implements View.OnClickListener {
    e(FeedListActivity paramFeedListActivity, AlertDialog paramAlertDialog, int paramInt1, int paramInt2) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        if (this.b != this.c) {
            int i = a.e(this.b);
            a.b(this.d, "feed_chapter_count", i);
            i.a().c(new m());
        }
    }
}
