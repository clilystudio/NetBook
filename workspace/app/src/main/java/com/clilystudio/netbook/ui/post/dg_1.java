package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

do;

final class dg
        implements j {
    private /* synthetic */ ReviewListActivity a;

    dg(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    @Override
    public final void a() {
        if (ReviewListActivity.f(this.a) == null || ReviewListActivity.f(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            ReviewListActivity.s(this.a).setVisibility(0);
            if (!am.a(ReviewListActivity.j(this.a))) {
                ReviewListActivity.j(this.a).cancel(true);
            }
            ReviewListActivity.a(this.a, new do (this.a, 0));
            do do_ = ReviewListActivity.f(this.a);
            String[] arrstring = new String[]{ReviewListActivity.g(this.a), ReviewListActivity.h(this.a), ReviewListActivity.i(this.a)};
            do_.b(arrstring);
        }
    }
}
