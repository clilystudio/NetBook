package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class h
        extends BroadcastReceiver {
    private /* synthetic */ GameDetailActivity a;

    h(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        if (GameDetailActivity.e(this.a) != null) {
            GameDetailActivity.f(this.a);
        }
    }
}
