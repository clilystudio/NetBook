package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class G extends BroadcastReceiver {
    private /* synthetic */ GameLayoutFragment a;

    G(GameLayoutFragment gameLayoutFragment) {
        this.a = gameLayoutFragment;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        GameLayoutFragment.a(this.a);
    }
}
