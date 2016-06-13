package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class u
        extends BroadcastReceiver {
    private /* synthetic */ GameGiftFragment a;

    u(GameGiftFragment gameGiftFragment) {
        this.a = gameGiftFragment;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        GameGiftFragment.c(this.a);
    }
}
