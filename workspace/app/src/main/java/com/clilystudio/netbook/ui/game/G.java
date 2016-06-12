package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class G extends BroadcastReceiver {

    private GameLayoutFragment a;

    G(GameLayoutFragment GameLayoutFragment1) {
        a = GameLayoutFragment1;
    }

    public final void onReceive(Context Context1, Intent Intent2) {
        GameLayoutFragment.a(a);
    }
}
