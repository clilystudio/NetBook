package com.clilystudio.app.netbook.ui.game;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.P
 * JD-Core Version:    0.6.2
 */