package com.clilystudio.netbook.reader;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.v7.app.NotificationCompat$Builder;

import com.clilystudio.netbook.util.I;

public class TtsSpeakingService extends Service {
    private int a = 3;

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int n, int n2) {
        Notification notification = new NotificationCompat$Builder(this).setSmallIcon(R.drawable.ic_launcher).setContentTitle("\u6b63\u5728\u8bed\u97f3\u6717\u8bfb\u300a" + I.b + "\u300b").setContentText("\u89e6\u6478\u53ef\u8fdb\u5165\u9605\u8bfb").build();
        Intent intent2 = new Intent(this, ReaderActivity.class);
        intent2.setFlags(603979776);
        notification.contentIntent = PendingIntent.getActivity(this, 0, intent2, 0);
        notification.flags = 32 | notification.flags;
        this.startForeground(this.a, notification);
        return 2;
    }
}
