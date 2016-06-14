package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class cz implements av {
    private /* synthetic */ ReviewActivity a;

    cz(ReviewActivity reviewActivity) {
        this.a = reviewActivity;
    }

    @Override
    public final void a() {
        if (ReviewActivity.i(this.a) == null || ReviewActivity.i(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            ReviewActivity.b(this.a);
        }
    }
}
