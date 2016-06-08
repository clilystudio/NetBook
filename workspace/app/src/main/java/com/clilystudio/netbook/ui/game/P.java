package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class P extends BroadcastReceiver {
    P(GameListActivity paramGameListActivity) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        GameListActivity.c(this.a);
    }
}

