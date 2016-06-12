package com.clilystudio.netbook.event;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class ClickDownloadItemReceiver extends BroadcastReceiver {

    public void onReceive(Context Context1, Intent Intent2) {
        Intent Intent3 = new Intent("android.intent.action.VIEW_DOWNLOADS");

        Intent3.setFlags(268435456);
        try {
            Context1.startActivity(Intent3);
        } catch (ActivityNotFoundException ActivityNotFoundException5) {
            ActivityNotFoundException5.printStackTrace();
            return;
        }
    }
}
