package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class P extends BroadcastReceiver {

    private GameListActivity a;

    P(GameListActivity GameListActivity1) {
        a = GameListActivity1;
    }

    public final void onReceive(Context Context1, Intent Intent2) {
        GameListActivity.c(a);
    }
}
