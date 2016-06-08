package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class G extends BroadcastReceiver {
    G(GameLayoutFragment paramGameLayoutFragment) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        GameLayoutFragment.a(this.a);
    }
}

