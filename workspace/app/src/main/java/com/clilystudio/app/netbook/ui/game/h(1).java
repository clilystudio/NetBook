package com.clilystudio.app.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class h extends BroadcastReceiver {
    h(GameDetailActivity paramGameDetailActivity) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        if (GameDetailActivity.e(this.a) != null)
            GameDetailActivity.f(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.h
 * JD-Core Version:    0.6.2
 */