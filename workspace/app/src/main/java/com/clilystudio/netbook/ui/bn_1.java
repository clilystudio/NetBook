package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bn extends BroadcastReceiver {
    private /* synthetic */ MysteryActivity a;

    bn(MysteryActivity mysteryActivity) {
        this.a = mysteryActivity;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        MysteryActivity.a(this.a);
    }
}
