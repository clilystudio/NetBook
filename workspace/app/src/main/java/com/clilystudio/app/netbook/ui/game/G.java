package com.clilystudio.app.netbook.ui.game;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.G
 * JD-Core Version:    0.6.2
 */