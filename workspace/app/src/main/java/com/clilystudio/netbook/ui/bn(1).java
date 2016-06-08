package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bn extends BroadcastReceiver {
    bn(MysteryActivity paramMysteryActivity) {
    }

    public final void onReceive(Context paramContext, Intent paramIntent) {
        MysteryActivity.a(this.a);
    }
}

