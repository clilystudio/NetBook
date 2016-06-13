package com.clilystudio.netbook.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

import java.util.Date;

public class AudioBookNotification$SwitchButtonListener
        extends BroadcastReceiver {
    private Handler a = new Handler();

    @Override
    public void onReceive(Context context, Intent intent) {
        long l = new Date().getTime();
        if (l - e.d() < 1000) {
            e.a((long) l);
            return;
        }
        e.a((long) l);
        as.a();
        if (as.c()) {
            this.a.post((Runnable) ((Object) new i(this)));
            return;
        }
        this.a.post((Runnable) ((Object) new j(this)));
    }
}
