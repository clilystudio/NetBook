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
import android.widget.RemoteViews;
import android.widget.Toast;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.SplashRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.ui.post.OtherUserActivity;

import java.util.ArrayList;
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
    private e(Context Context1) {
        b = Context1;
    }

    public static int a(int int1) {
        if (int1 <= 0 || int1 > 999)
            return 0;
        else {
            int int2 = int1 + 1;

            if (int2 == 2)
                return 20;
            else if (int2 <= 10)
                return 10 + (a(int1 - 1) << 1);
            else
                return 3840 + (a(int1 - 1) + 50 * (int2 - 10));
        }
    }

    static long a(long long1) {
        f = long1;
        return long1;
    }

    public static Intent a(Context Context1, Author Author2) {
        Intent Intent3 = OtherUserActivity.a(Context1);

        Intent3.putExtra("USER_ID", Author2.get_id());
        Intent3.putExtra("USER_NAME", Author2.getNickname());
        return Intent3;
    }

    public static e a(Context Context1) {
        if (a == null)
            a = new e(Context1);
        return a;
    }

    private static List a(List List1) {
        Object Object2 = new ArrayList();
        long long3 = System.currentTimeMillis();
        int int5;

        for (int5 = 0; int5 < List1.size(); ++int5) {
            Object Object6 = (SplashRecord) List1.get(int5);

            if (((SplashRecord) Object6).start.getTime() <= long3 && ((SplashRecord) Object6).end.getTime() >= long3)
                ((List) Object2).add(Object6);
        }
        return (List) Object2;
    }

    public static void a(Activity Activity1, int int2) {
        if (Activity1 != null)
            a(Activity1, Activity1.getString(int2), 0);
    }

    public static void a(Activity Activity1, String String2) {
        a(Activity1, String2, 0);
    }

    private static void a(Activity Activity1, String String2, int int3) {
        if (Activity1 != null && String2 != null)
            Activity1.runOnUiThread((Runnable) new ad((Context) Activity1.getApplication(), String2, int3));
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void a(Context Context1, long long2, int int4) {
    }

    public static void a(Context Context1, String String2) {
        if (Context1 != null && String2 != null)
            Toast.makeText(Context1, (CharSequence) String2, 0).show();
    }

    static void a(Bitmap Bitmap1) {
        if (Bitmap1 != null && c != null) {
            c.setImageViewBitmap(2131493604, Bitmap1);
            d.notify(1001, e);
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void a(e e1) {
    }

    public static void a(String String1) {
        if (c != null) {
            c.setTextViewText(2131493605, (CharSequence) String1);
            d.notify(1001, e);
        }
    }

    public static void a(boolean boolean1) {
        if (boolean1)
            c.setImageViewResource(2131493607, 2130837584);
        else
            c.setImageViewResource(2131493607, 2130837925);
        d.notify(1001, e);
    }

    public static void b(Activity Activity1, String String2) {
        a(Activity1, String2, 1);
    }

    public static void b(Context Context1) {
        try {
            d.cancel(1001);
            Context1.unregisterReceiver((BroadcastReceiver) g);
        } catch (Exception Exception2) {
            return;
        }
    }

    public static void b(String String1) {
        if (c != null) {
            c.setTextViewText(2131493606, (CharSequence) String1);
            d.notify(1001, e);
        }
    }

    public static Notification c() {
        android.support.v7.app.NotificationCompat$Builder Builder1;
        Intent Intent6;
        PendingIntent PendingIntent7;
        Notification Notification8;

        d = (NotificationManager) MyApplication.a().getSystemService("notification");
        c = new RemoteViews(MyApplication.a().getPackageName(), 2130903334);
        Builder1 = new android.support.v7.app.NotificationCompat$Builder((Context) MyApplication.a());
        Builder1.setSmallIcon(17301623);
        Builder1.setContent(c);
        Builder1.setAutoCancel(false).setOngoing(true);
        g = new AudioBookNotification$SwitchButtonListener();
        try {
            MyApplication.a().registerReceiver((BroadcastReceiver) g, new IntentFilter("com.clilystudio.netbook.SWITCH_AUDIO"));
        } catch (Exception Exception5) {
        }
        Intent6 = new Intent("com.clilystudio.netbook.SWITCH_AUDIO");
        PendingIntent7 = PendingIntent.getBroadcast((Context) MyApplication.a(), 0, Intent6, 0);
        c.setOnClickPendingIntent(2131493607, PendingIntent7);
        Notification8 = Builder1.build();
        e = Notification8;
        return Notification8;
    }

    public static String c(Context Context1) {
        String String2;

        if (android.support.design.widget.am.e() != null)
            return android.support.design.widget.am.e().getUser().getId();
        String2 = ((WifiManager) Context1.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (String2 == null)
            String2 = "";
        return com.integralblue.httpresponsecache.compat.libcore.a.a.b(String2.getBytes());
    }

    public static void c(String String1) {
        Account Account2 = android.support.design.widget.am.e();

        if (Account2 != null)
            new am(Account2, String1).start();
    }

    static long d() {
        return f;
    }

    static RemoteViews e() {
        return c;
    }

    static Notification f() {
        return e;
    }

    static NotificationManager g() {
        return d;
    }

    public final SplashAdvert a() {
        List List1 = SplashRecord.getAll();

        if (List1.isEmpty())
            return null;
        else {
            List List2 = SplashRecord.getAllNotShow();
            List List3 = a(List2);
            int int4 = List3.size();
            SplashRecord SplashRecord6;
            String String7;
            Bitmap Bitmap8;

            if (List2.isEmpty() || int4 == 0) {
                Iterator Iterator5 = List1.iterator();

                while (Iterator5.hasNext()) {
                    SplashRecord SplashRecord11 = (SplashRecord) Iterator5.next();

                    SplashRecord11.isShow = false;
                    SplashRecord11.save();
                }
                List3 = a(List1);
                int4 = List3.size();
                if (int4 == 0)
                    return null;
            }
            SplashRecord6 = (SplashRecord) List3.get((int) (Math.random() * (double) int4));
            String7 = com.clilystudio.netbook.hpay100.a.a.K(SplashRecord6.img3x4);
            Bitmap8 = com.clilystudio.netbook.hpay100.a.a.k(b, String7);
            if (Bitmap8 == null)
                return null;
            else {
                SplashAdvert SplashAdvert10;

                SplashRecord6.isShow = true;
                SplashRecord6.save();
                SplashAdvert10 = new SplashAdvert();
                SplashAdvert10.setSplashRecord(SplashRecord6);
                SplashAdvert10.setBitmap(Bitmap8);
                return SplashAdvert10;
            }
        }
    }

    public final void b() {
        new f(this).start();
    }
}
