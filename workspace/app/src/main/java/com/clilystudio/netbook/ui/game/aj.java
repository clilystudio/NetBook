package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class aj extends BroadcastReceiver {
    aj(GameRankListFragment paramGameRankListFragment) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        GameRankListFragment.c(this.a);
    }
}

