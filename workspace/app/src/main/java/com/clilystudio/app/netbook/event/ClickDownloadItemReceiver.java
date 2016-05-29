package com.clilystudio.app.netbook.event;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.event.ClickDownloadItemReceiver
 * JD-Core Version:    0.6.2
 */