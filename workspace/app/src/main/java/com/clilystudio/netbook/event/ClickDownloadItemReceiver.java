package com.clilystudio.netbook.event;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class ClickDownloadItemReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent("android.intent.action.VIEW_DOWNLOADS");
        intent2.setFlags(268435456);
        try {
            context.startActivity(intent2);
            return;
        } catch (ActivityNotFoundException var5_4) {
            var5_4.printStackTrace();
            return;
        }
    }
}
