
package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class u extends BroadcastReceiver {

    u(GameGiftFragment GameGiftFragment1)
    {
        a = GameGiftFragment1;
    }

    private GameGiftFragment a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        GameGiftFragment.c( a );
    }
}
