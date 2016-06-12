
package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class P extends BroadcastReceiver {

    P(GameListActivity GameListActivity1)
    {
        a = GameListActivity1;
    }

    private GameListActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        GameListActivity.c( a );
    }
}
