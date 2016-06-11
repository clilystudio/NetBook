package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.wifi.WifiManager;
import android.widget.RemoteViews;
import android.widget.Toast;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.*;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.SplashRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.ui.AudioBookPlayActivity;
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
    private static AudioBookNotification.SwitchButtonListener g;
    private Context b;

    private e(Context paramContext) {
        this.b = paramContext;
    }

    public static int a(int paramInt) {
        if ((paramInt <= 0) || (paramInt > 999))
            return 0;
        int i = paramInt + 1;
        if (i == 2)
            return 20;
        if (i <= 10)
            return 10 + (a(paramInt - 1) << 1);
        return 3840 + (a(paramInt - 1) + 50 * (i - 10));
    }

    public static Intent a(Context paramContext, Author paramAuthor) {
        Intent localIntent = OtherUserActivity.a(paramContext);
        localIntent.putExtra("USER_ID", paramAuthor.get_id());
        localIntent.putExtra("USER_NAME", paramAuthor.getNickname());
        return localIntent;
    }

    public static e a(Context paramContext) {
        if (a == null)
            a = new e(paramContext);
        return a;
    }

    private static List<SplashRecord> a(List<SplashRecord> paramList) {
        ArrayList localArrayList = new ArrayList();
        long l = System.currentTimeMillis();
        for (int i = 0; i < paramList.size(); i++) {
            SplashRecord localSplashRecord = (SplashRecord) paramList.get(i);
            if ((localSplashRecord.start.getTime() > l) || (localSplashRecord.end.getTime() < l))
                continue;
            localArrayList.add(localSplashRecord);
        }
        return localArrayList;
    }

    public static void a(Activity paramActivity, int paramInt) {
        if (paramActivity == null)
            return;
        a(paramActivity, paramActivity.getString(paramInt), 0);
    }

    public static void a(Activity paramActivity, String paramString) {
        a(paramActivity, paramString, 0);
    }

    private static void a(Activity paramActivity, String paramString, int paramInt) {
        if ((paramActivity == null) || (paramString == null))
            return;
        paramActivity.runOnUiThread(new ad(paramActivity.getApplication(), paramString, paramInt));
    }

    public static void a(Context paramContext, long paramLong, int paramInt) {
        if (e == null)
            e = c();
        Intent localIntent = new Intent(paramContext, AudioBookPlayActivity.class);
        localIntent.putExtra("ALBUM_ID", paramLong);
        localIntent.putExtra("INDEX_OF_PLAYLIST", paramInt);
        PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, localIntent, 134217728);
        e.contentIntent = localPendingIntent;
        as.a();
        a(as.c());
        d.notify(1001, e);
    }

    public static void a(Context paramContext, String paramString) {
        if ((paramContext == null) || (paramString == null))
            return;
        Toast.makeText(paramContext, paramString, 0).show();
    }

    public static void a(String paramString) {
        if (c == null)
            return;
        c.setTextViewText(2131493605, paramString);
        d.notify(1001, e);
    }

    public static void a(boolean paramBoolean) {
        if (paramBoolean)
            c.setImageViewResource(2131493607, 2130837584);
        while (true) {
            d.notify(1001, e);
            return;
            c.setImageViewResource(2131493607, 2130837925);
        }
    }

    public static void b(Activity paramActivity, String paramString) {
        a(paramActivity, paramString, 1);
    }

    public static void b(Context paramContext) {
        try {
            d.cancel(1001);
            paramContext.unregisterReceiver(g);
            return;
        } catch (Exception localException) {
        }
    }

    public static void b(String paramString) {
        if (c == null)
            return;
        c.setTextViewText(2131493606, paramString);
        d.notify(1001, e);
    }

    public static Notification c() {
        d = (NotificationManager) MyApplication.a().getSystemService("notification");
        c = new RemoteViews(MyApplication.a().getPackageName(), 2130903334);
        android.support.v7.app.NotificationCompat.Builder localBuilder = new android.support.v7.app.NotificationCompat.Builder(MyApplication.a());
        localBuilder.setSmallIcon(17301623);
        localBuilder.setContent(c);
        localBuilder.setAutoCancel(false).setOngoing(true);
        g = new AudioBookNotification.SwitchButtonListener();
        try {
            MyApplication.a().registerReceiver(g, new IntentFilter("com.clilystudio.netbook.SWITCH_AUDIO"));
            label101:
            Intent localIntent = new Intent("com.clilystudio.netbook.SWITCH_AUDIO");
            PendingIntent localPendingIntent = PendingIntent.getBroadcast(MyApplication.a(), 0, localIntent, 0);
            c.setOnClickPendingIntent(2131493607, localPendingIntent);
            Notification localNotification = localBuilder.build();
            e = localNotification;
            return localNotification;
        } catch (Exception localException) {
            break label101;
        }
    }

    public static String c(Context paramContext) {
        if (android.support.design.widget.am.e() == null) {
            String str = ((WifiManager) paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (str == null)
                str = "";
            return com.integralblue.httpresponsecache.compat.libcore.a.a.b(str.getBytes());
        }
        return android.support.design.widget.am.e().getUser().getId();
    }

    public static void c(final String paramString) {
        final Account localAccount = android.support.design.widget.am.e();
        if (localAccount == null)
            return;
        Thread t = new Thread() {
            @Override
            public void run() {
                try {
                    com.clilystudio.netbook.api.b.a();
                    com.clilystudio.netbook.api.b.b().x(localAccount.getToken(), paramString);
                    return;
                } catch (Exception localException) {
                    localException.printStackTrace();
                }            }
        };
        t.start();
    }

    public final SplashAdvert a() {
        List localList1 = SplashRecord.getAll();
        if (localList1.isEmpty())
            return null;
        List localList2 = SplashRecord.getAllNotShow();
        List localList3 = a(localList2);
        int i = localList3.size();
        if ((localList2.isEmpty()) || (i == 0)) {
            Iterator localIterator = localList1.iterator();
            while (localIterator.hasNext()) {
                SplashRecord localSplashRecord2 = (SplashRecord) localIterator.next();
                localSplashRecord2.isShow = false;
                localSplashRecord2.save();
            }
            localList3 = a(localList1);
            i = localList3.size();
            if (i == 0)
                return null;
        }
        SplashRecord localSplashRecord1 = (SplashRecord) localList3.get((int) (Math.random() * i));
        String str = com.clilystudio.netbook.hpay100.a_Pack.a.K(localSplashRecord1.img3x4);
        Bitmap localBitmap = com.clilystudio.netbook.hpay100.a_Pack.a.k(this.b, str);
        if (localBitmap == null)
            return null;
        localSplashRecord1.isShow = true;
        localSplashRecord1.save();
        SplashAdvert localSplashAdvert = new SplashAdvert();
        localSplashAdvert.setSplashRecord(localSplashRecord1);
        localSplashAdvert.setBitmap(localBitmap);
        return localSplashAdvert;
    }

    public final void b() {
        new f(this).start();
    }
}

