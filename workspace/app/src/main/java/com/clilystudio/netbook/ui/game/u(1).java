package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class u extends BroadcastReceiver {
    u(GameGiftFragment paramGameGiftFragment) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        GameGiftFragment.c(this.a);
    }
}

