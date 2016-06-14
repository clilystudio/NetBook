package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class P extends BroadcastReceiver {
    private /* synthetic */ GameListActivity a;

    P(GameListActivity gameListActivity) {
        this.a = gameListActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        GameListActivity.c(this.a);
    }
}
