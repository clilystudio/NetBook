package com.clilystudio.netbook.event;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class ClickDownloadItemReceiver extends BroadcastReceiver {
    public void onReceive(Context paramContext, Intent paramIntent) {
        Intent localIntent = new Intent("android.intent.action.VIEW_DOWNLOADS");
        localIntent.setFlags(268435456);
        try {
            paramContext.startActivity(localIntent);
            return;
        } catch (ActivityNotFoundException localActivityNotFoundException) {
            localActivityNotFoundException.printStackTrace();
        }
    }
}

