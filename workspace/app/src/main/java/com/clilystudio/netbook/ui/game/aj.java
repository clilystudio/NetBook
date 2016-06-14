package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class aj extends BroadcastReceiver {
    private /* synthetic */ GameRankListFragment a;

    aj(GameRankListFragment gameRankListFragment) {
        this.a = gameRankListFragment;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        GameRankListFragment.c(this.a);
    }
}
