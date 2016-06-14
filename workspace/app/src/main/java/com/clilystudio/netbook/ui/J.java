package com.clilystudio.netbook.ui;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class J extends BroadcastReceiver {
    private /* synthetic */ BaseActivity a;

    J(BaseActivity baseActivity) {
        this.a = baseActivity;
    }

    @TargetApi(value = 11)
    @Override
    public final void onReceive(Context context, Intent intent) {
        this.a.recreate();
    }
}
