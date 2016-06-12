package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class u extends BroadcastReceiver {

    private GameGiftFragment a;

    u(GameGiftFragment GameGiftFragment1) {
        a = GameGiftFragment1;
    }

    public final void onReceive(Context Context1, Intent Intent2) {
        GameGiftFragment.c(a);
    }
}
