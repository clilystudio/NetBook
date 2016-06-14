package com.clilystudio.netbook.ui.game;

import android.os.AsyncTask;

import com.clilystudio.netbook.widget.av;

final class ak implements av {
    private /* synthetic */ GameRankListFragment a;

    ak(GameRankListFragment gameRankListFragment) {
        this.a = gameRankListFragment;
    }

    @Override
    public final void a() {
        if (GameRankListFragment.g(this.a) == null || GameRankListFragment.g(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            GameRankListFragment.d(this.a).setVisibility(0);
            GameRankListFragment.a(this.a, new am(this.a, 0));
            GameRankListFragment.g(this.a).b(new String[0]);
        }
    }
}
