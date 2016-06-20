package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.widget.RemoteViews;
import android.widget.Toast;

import com.activeandroid.query.Delete;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.SplashRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.Splash;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.model.SplashRoot;
import com.clilystudio.netbook.ui.post.OtherUserActivity;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class e {
    private static e a;
    private static RemoteViews c;
    private static NotificationManager d;
    private static Notification e;
    private static long f;
    private static AudioBookNotification$SwitchButtonListener g;
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

    public static Intent a(Context context, Author author) {
        Intent intent = OtherUserActivity.a(context);
        intent.putExtra("USER_ID", author.get_id());
        intent.putExtra("USER_NAME", author.getNickname());
        return intent;
    }

    public static e a(Context context) {
        if (a == null) {
            a = new e(context);
        }
        return a;
    }

    private static List<SplashRecord> a(List<SplashRecord> list) {
        ArrayList<SplashRecord> arrayList = new ArrayList<SplashRecord>();
        long l2 = System.currentTimeMillis();
        for (int i = 0; i < list.size(); ++i) {
            SplashRecord splashRecord = list.get(i);
            if (splashRecord.start.getTime() > l2 || splashRecord.end.getTime() < l2) continue;
            arrayList.add(splashRecord);
        }
        return arrayList;
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

    private static void a(Activity activity, String string, int n) {
        if (activity == null || string == null) {
            return;
        }
        activity.runOnUiThread(new ad(activity.getApplication(), string, n));
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
        b.a();
        SplashRoot splashRoot = b.b().j();
        if (splashRoot == null || !splashRoot.isOk()) {
            return;
        }
        Splash[] arrsplash = splashRoot.getSplash();
        if (arrsplash == null || arrsplash.length == 0) {
            new Delete().from(SplashRecord.class).execute();
            return;
        }
        ArrayList<String> arrayList = new ArrayList<String>();
        int n = arrsplash.length;
        for (int k = 0; k < n; ++k) {
            arrayList.add(arrsplash[k].get_id());
        }
        List<SplashRecord> list = SplashRecord.getAll();
        ArrayList<String> arrayList2 = new ArrayList<String>();
        Iterator<SplashRecord> iterator = list.iterator();
        while (iterator.hasNext()) {
            arrayList2.add(iterator.next().splashId);
        }
        for (int i2 = 0; i2 < list.size(); ++i2) {
            String string = list.get((int) i2).splashId;
            if (arrayList.contains(string)) continue;
            arrayList2.remove(string);
            SplashRecord.delete(string);
        }
        int n2 = arrsplash.length;
        int n3 = 0;
        while (n3 < n2) {
            Splash splash = arrsplash[n3];
            if (!arrayList2.contains(splash.get_id())) {
                SplashRecord.create(splash);
                String string = splash.getImg3x4();
                Bitmap bitmap = a.L(string);
                if (bitmap != null) {
                    String string2 = a.K(string);
                    Context context = e2.b;
                    if (bitmap != null && string2 != null && context != null) {
                        FileOutputStream fileOutputStream = context.openFileOutput(string2, 0);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                        fileOutputStream.write(byteArrayOutputStream.toByteArray());
                        fileOutputStream.close();
                    }
                }
            }
            ++n3;
        }
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
            context.unregisterReceiver(g);
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
        g = new AudioBookNotification$SwitchButtonListener();
        try {
            MyApplication.a().registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    long l = new Date().getTime();
                    if (l - com.clilystudio.netbook.util.e.d() < 1000) {
                        com.clilystudio.netbook.util.e.a((long) l);
                        return;
                    }
                    com.clilystudio.netbook.util.e.a((long) l);
                    as.a();
                    Handler handler = new Handler();
                    if (as.c()) {
                        handler.post(new Runnable() {
                            @Override
                            public void run() {
                                as.a();
                                as.h();
                                com.clilystudio.netbook.util.e.e().setImageViewResource(R.id.iv_control, R.drawable.ic_play_audiobook_button);
                                com.clilystudio.netbook.util.e.g().notify(1001, com.clilystudio.netbook.util.e.f());
                            }
                        });
                        return;
                    }
                    handler.post(new Runnable() {
                        @Override
                        public void run() {
                            as.a().d();
                            com.clilystudio.netbook.util.e.e().setImageViewResource(R.id.iv_control, R.drawable.audio_bar_pause);
                            com.clilystudio.netbook.util.e.g().notify(1001, com.clilystudio.netbook.util.e.f());
                        }
                    });
                }
            }, new IntentFilter("com.clilystudio.netbook.SWITCH_AUDIO"));
        } catch (Exception var4_4) {
        }
        Intent intent = new Intent("com.clilystudio.netbook.SWITCH_AUDIO");
        PendingIntent pendingIntent = PendingIntent.getBroadcast(MyApplication.a(), 0, intent, 0);
        c.setOnClickPendingIntent(R.id.iv_control, pendingIntent);
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

    public static void c(String string) {
        Account account = com.clilystudio.netbook.am.e();
        if (account == null) {
            return;
        }
        new am(account, string).start();
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

    public final SplashAdvert a() {
        List<SplashRecord> list = SplashRecord.getAll();
        if (list.isEmpty()) {
            return null;
        }
        List<SplashRecord> list2 = SplashRecord.getAllNotShow();
        List<SplashRecord> list3 = e.a(list2);
        int n = list3.size();
        if (list2.isEmpty() || n == 0) {
            for (SplashRecord splashRecord : list) {
                splashRecord.isShow = false;
                splashRecord.save();
            }
            list3 = e.a(list);
            n = list3.size();
            if (n == 0) {
                return null;
            }
        }
        SplashRecord splashRecord = list3.get((int) (Math.random() * (double) n));
        String string = a.K(splashRecord.img3x4);
        Bitmap bitmap = a.k(this.b, string);
        if (bitmap == null) {
            return null;
        }
        splashRecord.isShow = true;
        splashRecord.save();
        SplashAdvert splashAdvert = new SplashAdvert();
        splashAdvert.setSplashRecord(splashRecord);
        splashAdvert.setBitmap(bitmap);
        return splashAdvert;
    }

    public final void b() {
        new f(this).start();
    }
}
