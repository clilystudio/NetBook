package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bn extends BroadcastReceiver {

    private MysteryActivity a;

    bn(MysteryActivity MysteryActivity1) {
        a = MysteryActivity1;
    }

    public final void onReceive(Context Context1, Intent Intent2) {
        MysteryActivity.a(a);
    }
}
