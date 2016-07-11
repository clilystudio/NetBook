package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.wifi.WifiManager;
import android.support.v7.app.NotificationCompat;
import android.widget.RemoteViews;
import android.widget.Toast;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.Account;

public class e {
    private static RemoteViews c;
    private static NotificationManager d;
    private static Notification e;
    private static long f;

    private e() {
    }

    public static int a(int n) {
        if (n <= 0 || n > 999) {
            return 0;
        }
        int n2 = n + 1;
        if (n2 == 2) {
            return 20;
        }
        if (n2 <= 10) {
            return 10 + (a(n - 1) << 1);
        }
        return 3840 + (a(n - 1) + 50 * (n2 - 10));
    }

    static /* synthetic */ long a(long l) {
        f = l;
        return l;
    }

    public static void a(Activity activity, int n) {
        if (activity == null) {
            return;
        }
        a(activity, activity.getString(n), 0);
    }

    public static void a(Activity activity, String string) {
        a(activity, string, 0);
    }

    private static void a(final Activity activity, final String string, final int n) {
        if (activity == null || string == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(activity.getApplication(), string, n).show();
            }
        });
    }

    public static void a(Context context, String string) {
        if (context == null || string == null) {
            return;
        }
        Toast.makeText(context, string, Toast.LENGTH_SHORT).show();
    }

    static /* synthetic */ void a(Bitmap bitmap) {
        if (bitmap == null || c == null) {
            return;
        }
        c.setImageViewBitmap(R.id.cover, bitmap);
        d.notify(1001, e);
    }

    public static void a(String string) {
        if (c == null) {
            return;
        }
        c.setTextViewText(R.id.tv_title, string);
        d.notify(1001, e);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(boolean bl) {
        if (bl) {
            c.setImageViewResource(R.id.iv_control, R.drawable.audio_bar_pause);
        } else {
            c.setImageViewResource(R.id.iv_control, R.drawable.ic_play_audiobook_button);
        }
        d.notify(1001, e);
    }

    public static void b(Activity activity, String string) {
        a(activity, string, 1);
    }

    public static void b() {
        d.cancel(1001);
    }

    public static void b(String string) {
        if (c == null) {
            return;
        }
        c.setTextViewText(R.id.tv_time, string);
        d.notify(1001, e);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Notification c() {
        NotificationCompat.Builder notificationCompat$Builder;
        Notification notification;
        d = (NotificationManager) MyApplication.getInstance().getSystemService(Context.NOTIFICATION_SERVICE);
        c = new RemoteViews(MyApplication.getInstance().getPackageName(), R.layout.notification_audio_bar);
        notificationCompat$Builder = new NotificationCompat.Builder(MyApplication.getInstance());
        notificationCompat$Builder.setSmallIcon(17301623);
        notificationCompat$Builder.setContent(c);
        notificationCompat$Builder.setAutoCancel(false).setOngoing(true);
        e = notification = notificationCompat$Builder.build();
        return notification;
    }

    public static String c(Context context) {
        if (com.clilystudio.netbook.am.e() == null) {
            String string = ((WifiManager) context.getSystemService(Context.WIFI_SERVICE)).getConnectionInfo().getMacAddress();
            if (string == null) {
                string = "";
            }
            com.integralblue.httpresponsecache.compat.libcore.io.Base64.encode(string.getBytes());
        }
        return com.clilystudio.netbook.am.e().getUser().getId();
    }

    public static void c(final String string) {
        final Account account = com.clilystudio.netbook.am.e();
        if (account == null) {
            return;
        }
        new Thread() {
            @Override
            public void run() {
                ApiServiceProvider.getInstance();
                ApiServiceProvider.getApiService().x(account.getToken(), string);
            }
        }.start();
    }

    static /* synthetic */ long d() {
        return f;
    }
}
