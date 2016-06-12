package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class h extends BroadcastReceiver {

    private GameDetailActivity a;

    h(GameDetailActivity GameDetailActivity1) {
        a = GameDetailActivity1;
    }

    public final void onReceive(Context Context1, Intent Intent2) {
        if (GameDetailActivity.e(a) != null)
            GameDetailActivity.f(a);
    }
}
