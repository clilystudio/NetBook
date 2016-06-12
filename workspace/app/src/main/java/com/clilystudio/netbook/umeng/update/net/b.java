package com.clilystudio.netbook.umeng.update.net;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;

public class b implements e {

    private SparseArray a;
    private DownloadingService b;
    b(DownloadingService DownloadingService1) {
        b = DownloadingService1;
        a = new SparseArray();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static PendingIntent a(Context Context1, String String2) {
    }

    public static String b(int int1, String String2) {
        if (int1 == 0)
            return null;
        else {
            StringBuilder StringBuilder3 = new StringBuilder(new StringBuilder(String.valueOf(int1)).toString());

            StringBuilder3.append(":");
            StringBuilder3.append(String2);
            return StringBuilder3.toString();
        }
    }

    public final void a(int int1) {
        if (DownloadingService.b().indexOfKey(int1) >= 0) {
            s s2 = (s) DownloadingService.b().get(int1);
            long[] long_1darray3 = s2.e;
            int int4 = 0;

            if (long_1darray3 != null) {
                int int6 = long_1darray3[1] == 0L;

                int4 = 0;
                if (int6 > 0) {
                    int4 = (int) (100.0F * ((float) long_1darray3[0] / (float) long_1darray3[1]));
                    if (int4 > 100)
                        int4 = 99;
                }
            }
            if (!s2.d.h) {
                r r5;

                a.put(int1, Long.valueOf(-1L));
                r5 = DownloadingService.a(b).a((Context) b, s2.d, int1, int4);
                s2.b = r5;
                DownloadingService.c(b).notify(int1, r5.d());
            }
        }
    }

    public final void a(int int1, int int2) {
        if (DownloadingService.b().indexOfKey(int1) >= 0) {
            s s3 = (s) DownloadingService.b().get(int1);
            k k4 = s3.d;
            long long5 = System.currentTimeMillis();
            String String7;
            Object[] Object_1darray8;

            if (!k4.h && long5 - ((Long) a.get(int1)).longValue() > 500L) {
                r r9;

                a.put(int1, Long.valueOf(long5));
                r9 = s3.b;
                r9.a(100, int2, false).a((CharSequence) new StringBuilder(String.valueOf(String.valueOf(int2))).append("%").toString());
                DownloadingService.c(b).notify(int1, r9.d());
            }
            String7 = DownloadingService.a();
            Object_1darray8 = new Object[3];
            Object_1darray8[0] = Integer.valueOf(int1);
            Object_1darray8[1] = Integer.valueOf(int2);
            Object_1darray8[2] = k4.b;
            u.a.b.c(String7, String.format("%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s", Object_1darray8));
        }
    }

    public final void a(int int1, String String2) {
        if (DownloadingService.b().indexOfKey(int1) >= 0) {
            s s3 = (s) DownloadingService.b().get(int1);

            if (s3 != null) {
                Object Object4 = s3.d;
                Bundle Bundle5;

                m.a(DownloadingService.b(b)).a(((k) Object4).a, ((k) Object4).c, 100);
                Bundle5 = new Bundle();
                Bundle5.putString("filename", String2);
                if (((k) Object4).a.equalsIgnoreCase("delta_update")) {
                    Message Message10 = Message.obtain();

                    Message10.what = 6;
                    Message10.arg1 = 1;
                    Message10.obj = Object4;
                    Message10.arg2 = int1;
                    Message10.setData(Bundle5);
                    DownloadingService.d(b).sendMessage(Message10);
                } else {
                    Message Message6 = Message.obtain();
                    Message Message8;

                    Message6.what = 5;
                    Message6.arg1 = 1;
                    Message6.obj = Object4;
                    Message6.arg2 = int1;
                    Message6.setData(Bundle5);
                    DownloadingService.d(b).sendMessage(Message6);
                    Message8 = Message.obtain();
                    Message8.what = 5;
                    Message8.arg1 = 1;
                    Message8.arg2 = int1;
                    Message8.setData(Bundle5);
                    try {
                        if (DownloadingService.c().get(Object4) != null)
                            ((Messenger) DownloadingService.c().get(Object4)).send(Message8);
                        DownloadingService.a(b).a(DownloadingService.b(b), int1);
                    } catch (RemoteException RemoteException9) {
                        DownloadingService.a(b).a(DownloadingService.b(b), int1);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final void b(int int1) {
        if (DownloadingService.b().indexOfKey(int1) >= 0)
            DownloadingService.a(b).a(DownloadingService.b(b), int1);
    }
}
