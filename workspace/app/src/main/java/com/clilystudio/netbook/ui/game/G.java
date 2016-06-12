
package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class G extends BroadcastReceiver {

    G(GameLayoutFragment GameLayoutFragment1)
    {
        a = GameLayoutFragment1;
    }

    private GameLayoutFragment a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        GameLayoutFragment.a( a );
    }
}
