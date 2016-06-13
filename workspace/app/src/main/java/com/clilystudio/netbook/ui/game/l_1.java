package com.clilystudio.netbook.ui.game;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class l
        implements av {
    private /* synthetic */ GameDetailActivity a;

    l(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    @Override
    public final void a() {
        if (GameDetailActivity.n(this.a) == null || GameDetailActivity.n(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            GameDetailActivity.g(this.a);
        }
    }
}
