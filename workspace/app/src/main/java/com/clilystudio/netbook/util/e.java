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
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.post.OtherUserActivity;

public class e {
    private static e a;
    private static RemoteViews c;
    private static NotificationManager d;
    private static Notification e;
    private static long f;
    private Context b;

    private e(Context context) {
        this.b = context;
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
            return 10 + (e.a(n - 1) << 1);
        }
        return 3840 + (e.a(n - 1) + 50 * (n2 - 10));
    }

    static /* synthetic */ long a(long l) {
        f = l;
        return l;
    }

    public static e a(Context context) {
        if (a == null) {
            a = new e(context);
        }
        return a;
    }

    public static void a(Activity activity, int n) {
        if (activity == null) {
            return;
        }
        e.a(activity, activity.getString(n), 0);
    }

    public static void a(Activity activity, String string) {
        e.a(activity, string, 0);
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

    public static void a(Context context, long l2, int n) {
    }

    public static void a(Context context, String string) {
        if (context == null || string == null) {
            return;
        }
        Toast.makeText(context, string, 0).show();
    }

    static /* synthetic */ void a(Bitmap bitmap) {
        if (bitmap == null || c == null) {
            return;
        }
        c.setImageViewBitmap(R.id.cover, bitmap);
        d.notify(1001, e);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(e e2) {
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
        e.a(activity, string, 1);
    }

    public static void b(Context context) {
        try {
            d.cancel(1001);
             return;
        } catch (Exception var1_1) {
            return;
        }
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
        d = (NotificationManager) MyApplication.a().getSystemService("notification");
        c = new RemoteViews(MyApplication.a().getPackageName(), R.layout.notification_audio_bar);
        notificationCompat$Builder = new NotificationCompat.Builder(MyApplication.a());
        notificationCompat$Builder.setSmallIcon(17301623);
        notificationCompat$Builder.setContent(c);
        notificationCompat$Builder.setAutoCancel(false).setOngoing(true);
        e = notification = notificationCompat$Builder.build();
        return notification;
    }

    public static String c(Context context) {
        if (com.clilystudio.netbook.am.e() == null) {
            String string = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (string == null) {
                string = "";
            }
            return com.integralblue.httpresponsecache.compat.libcore.a.a.b(string.getBytes());
        }
        return com.clilystudio.netbook.am.e().getUser().getId();
    }

    public static void c(final String string) {
        final Account account = com.clilystudio.netbook.am.e();
        if (account == null) {
            return;
        }
        new Thread(){
            @Override
            public void run() {
                com.clilystudio.netbook.api.b.a();
                com.clilystudio.netbook.api.b.b().x(account.getToken(), string);
            }
        }.start();
    }

    static /* synthetic */ long d() {
        return f;
    }

    static /* synthetic */ RemoteViews e() {
        return c;
    }

    static /* synthetic */ Notification f() {
        return e;
    }

    static /* synthetic */ NotificationManager g() {
        return d;
    }

    public final void b() {
        new Thread(){

            @Override
            public void run() {
                com.clilystudio.netbook.util.e.a(com.clilystudio.netbook.util.e.this);
            }
        }.start();
    }
}
