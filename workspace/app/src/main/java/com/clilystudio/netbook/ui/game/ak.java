package com.clilystudio.netbook.ui.game;

import android.os.AsyncTask$Status;

import com.clilystudio.netbook.widget.av;

final class ak implements av {

    private GameRankListFragment a;

    ak(GameRankListFragment GameRankListFragment1) {
        a = GameRankListFragment1;
    }

    public final void a() {
        if (GameRankListFragment.g(a) == null || GameRankListFragment.g(a).getStatus() == AsyncTask$Status.FINISHED) {
            GameRankListFragment.d(a).setVisibility(0);
            GameRankListFragment.a(a, new am(a, (byte) 0));
            GameRankListFragment.g(a).b(new String[0]);
        }
    }
}
