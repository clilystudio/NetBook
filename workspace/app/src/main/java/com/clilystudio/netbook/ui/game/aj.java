
package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class aj extends BroadcastReceiver {

    aj(GameRankListFragment GameRankListFragment1)
    {
        a = GameRankListFragment1;
    }

    private GameRankListFragment a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        GameRankListFragment.c( a );
    }
}
