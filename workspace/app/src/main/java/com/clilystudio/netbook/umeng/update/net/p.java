package com.clilystudio.netbook.umeng.update.net;

import android.app.ActivityManager;
import android.app.ActivityManager$RunningAppProcessInfo;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build$VERSION;
import android.os.Messenger;
import android.support.design.widget.am;
import android.util.SparseArray;
import android.widget.RemoteViews;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

class p {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String a = null;

    static {
    }

    private SparseArray b;
    private Map c;
    private v d;
    public p(SparseArray SparseArray1, Map Map2, v v3) {
        b = SparseArray1;
        c = Map2;
        d = v3;
    }

    static int a(k k1) {
        return Math.abs((int) ((long) ((k1.b.hashCode() >> 2) + (k1.c.hashCode() >> 3)) + System.currentTimeMillis()));
    }

    static String a() {
        return a;
    }

    static Map a(p p1) {
        return p1.c;
    }

    private static void a(Context Context1, r r2, int int3, int int4) {
        if (Build$VERSION.SDK_INT >= 16) {
            PendingIntent PendingIntent5 = b.a(Context1, b.b(int3, "continue"));
            PendingIntent PendingIntent6 = b.a(Context1, b.b(int3, "cancel"));

            switch (int4) {
                case 1:
                    r2.a(17301540, Context1.getResources().getString(com.alipay.sdk.b.b.g(Context1)), PendingIntent5);
                    break;
                case 2:
                    r2.a(17301539, Context1.getResources().getString(com.alipay.sdk.b.b.f(Context1)), PendingIntent5);
                    break;
                default:
                    break;
            }
            r2.a(17301560, Context1.getResources().getString(u.a.c.a(Context1).d("umeng_common_action_cancel")), PendingIntent6);
        }
    }

    static boolean a(Context Context1) {
        List List2 = ((ActivityManager) Context1.getSystemService("activity")).getRunningAppProcesses();

        if (List2 != null) {
            String String3 = Context1.getPackageName();
            Iterator Iterator4 = List2.iterator();

            while (Iterator4.hasNext()) {
                ActivityManager$RunningAppProcessInfo RunningAppProcessInfo5 = (ActivityManager$RunningAppProcessInfo) Iterator4.next();

                if (RunningAppProcessInfo5.importance != 100 || !RunningAppProcessInfo5.processName.equals(String3))
                    continue;
                return true;
            }
        }
        return false;
    }

    final r a(Context Context1, k k2, int int3, int int4) {
        Context Context5 = Context1.getApplicationContext();
        r r6 = new r(Context5);
        PendingIntent PendingIntent7 = PendingIntent.getActivity(Context5, 0, new Intent(), 134217728);
        RemoteViews RemoteViews9;

        r6.d((CharSequence) Context5.getString(u.a.c.a(Context5).d("umeng_common_start_download_notification"))).a(17301633).a(PendingIntent7).a(System.currentTimeMillis());
        RemoteViews9 = new RemoteViews(Context5.getPackageName(), android.support.v7.app.f.i(Context5));
        if (Build$VERSION.SDK_INT >= 14) {
            int int28 = Context5.getResources().getDimensionPixelSize(17104901);
            int int29 = Context5.getResources().getDimensionPixelSize(17104902);

            RemoteViews9.setInt(am.v(Context5), "setWidth", int28);
            RemoteViews9.setInt(am.v(Context5), "setHeight", int29);
            try {
                reflect.Field Field31 = Class.forName("com.android.internal.R$drawable").getDeclaredField("notify_panel_notification_icon_bg_tile");
                int int32;

                Field31.setAccessible(true);
                int32 = Field31.getInt(null);
                RemoteViews9.setInt(am.v(Context5), "setBackgroundResource", int32);
            } catch (Exception Exception30) {
                u.a.b.a(a, "No notification icon background found:", Exception30);
            }
        } else {
            try {
                reflect.Field Field26 = Class.forName("com.android.internal.R$drawable").getDeclaredField("status_bar_notification_icon_bg");
                int int27;

                Field26.setAccessible(true);
                int27 = Field26.getInt(null);
                RemoteViews9.setInt(am.v(Context5), "setBackgroundResource", int27);
            } catch (Exception Exception10) {
                try {
                    Class Class19 = Class.forName("com.android.internal.R$dimen");
                    reflect.Field Field20 = Class19.getDeclaredField("status_bar_edge_ignore");
                    int int21;
                    int int22;
                    reflect.Field Field23;
                    int int24;
                    int int25;

                    Field20.setAccessible(true);
                    int21 = Field20.getInt(null);
                    int22 = 0 + Context5.getResources().getDimensionPixelSize(int21);
                    Field23 = Class19.getDeclaredField("status_bar_height");
                    Field23.setAccessible(true);
                    int24 = Field23.getInt(null);
                    int25 = int22 + Context5.getResources().getDimensionPixelSize(int24) + Context5.getResources().getDimensionPixelSize(int24);
                    RemoteViews9.setInt(am.v(Context5), "setWidth", int25);
                } catch (Exception Exception11) {
                    u.a.b.a(a, "No notification size found:", Exception11);
                }
            }
        }
        r6.a(RemoteViews9);
        r6.b((CharSequence) new StringBuilder(String.valueOf(Context5.getResources().getString(u.a.c.a(Context5).d("umeng_common_download_notification_prefix")))).append(k2.b).toString()).a((CharSequence) new StringBuilder(String.valueOf(int4)).append("%").toString()).a(100, int4, false);
        if (k2.g) {
            PendingIntent PendingIntent16;
            PendingIntent PendingIntent17;

            r6.b(RemoteViews9);
            r6.e();
            PendingIntent16 = b.a(Context5, b.b(int3, "continue"));
            PendingIntent17 = b.a(Context5, b.b(int3, "cancel"));
            a(Context5, r6, int3, 2);
            r6.a(PendingIntent16, PendingIntent17).c().a(true).b(false);
        } else
            r6.a().a(true).b(false);
        return r6;
    }

    final void a(Context Context1, int int2) {
        NotificationManager NotificationManager3 = (NotificationManager) Context1.getApplicationContext().getSystemService("notification");
        s s4 = (s) b.get(int2);

        if (s4 != null) {
            SparseArray SparseArray5;

            u.a.b.c(a, new StringBuilder("download service clear cache ").append(s4.d.b).toString());
            if (s4.a != null)
                s4.a.a(2);
            NotificationManager3.cancel(s4.c);
            if (c.containsKey(s4.d))
                c.remove(s4.d);
            SparseArray5 = b;
            if (SparseArray5.indexOfKey(s4.c) >= 0)
                SparseArray5.remove(s4.c);
            d.b(int2);
        }
    }

    final void a(k k1, long long2, long long4, long long6) {
        if (k1.f != null) {
            Object Object8 = new HashMap();
            int int11;
            float float12;

            ((Map) Object8).put("dsize", String.valueOf(long2));
            ((Map) Object8).put("dtime", u.a.g.a().split(" ")[1]);
            int11 = long4 == 0L;
            float12 = 0.0F;
            if (int11 > 0)
                float12 = (float) long2 / (float) long4;
            ((Map) Object8).put("dpcent", String.valueOf((int) (float12 * 100.0F)));
            ((Map) Object8).put("ptimes", String.valueOf(long6));
            a((Map) Object8, false, k1.f);
        }
    }

    final void a(Map Map1, boolean boolean2, String[] String_1darray3) {
        new Thread((Runnable) new q(this, String_1darray3, boolean2, Map1)).start();
    }

    final boolean a(DownloadingService DownloadingService1, Intent Intent2) {
        try {
            Context Context4 = DownloadingService1.getApplicationContext();
            String[] String_1darray5 = Intent2.getExtras().getString("com.clilystudio.netbook.umeng.broadcast.download.msg").split(":");
            int int6 = Integer.parseInt(String_1darray5[0]);
            Object Object7 = String_1darray5[1].trim();
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
        }
        return false;
    }

    final boolean a(k k1, boolean boolean2, Messenger Messenger3) {
        if (boolean2) {
            int int8 = new Random().nextInt(1000);

            if (c != null) {
                Iterator Iterator9 = c.keySet().iterator();

                while (Iterator9.hasNext()) {
                    k k10 = (k) Iterator9.next();

                    u.a.b.c(a, new StringBuilder("_").append(int8).append(" downling  ").append(k10.b).append("   ").append(k10.c).toString());
                }
            } else
                u.a.b.c(a, new StringBuilder("_").append(int8).append("downling  null").toString());
        }
        if (c != null) {
            Iterator Iterator4 = c.keySet().iterator();

            while (Iterator4.hasNext()) {
                Object Object5 = (k) Iterator4.next();

                if (k1.e != null && k1.e.equals(((k) Object5).e))
                    c.put(Object5, Messenger3);
                else {
                    if (!((k) Object5).c.equals(k1.c))
                        continue;
                    c.put(Object5, Messenger3);
                }
                return true;
            }
        }
        return false;
    }

    final int b(k k1) {
        int int2 = 0;

        while (int2 < b.size()) {
            int int3 = b.keyAt(int2);

            if (k1.e != null && k1.e.equals(((s) b.get(int3)).d.e))
                return ((s) b.get(int3)).c;
            else if (((s) b.get(int3)).d.c.equals(k1.c))
                return ((s) b.get(int3)).c;
            else
                ++int2;
        }
        return -1;
    }
}
