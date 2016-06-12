package com.clilystudio.netbook.hpay100.c;

import android.content.Context;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class h {

    private static int a = -1;
    private static int b = 0;
    private static String[] c = {"com.tencent.qqpimsecure", "com.qihoo360.mobilesafe_mtk6573", "com.lbe.security:service", "com.qihoo360.mobilesafe:GuardService", "com.mobileann.MobileAnn", "com.ijinshan.duba:DefendService", "com.lbe.security.miui", "com.qihoo360.mobilesafe_lenovo", "com.qihoo.antivirus:server", "com.lenovo.safecenter"};

    public static int a() {
        int int2;

        label_64:
        {
            if (a == 1)
                return 1;
            else {
                if (a != 0) {
                    String[] String_1darray1 = {"/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};

                    int2 = 0;
                    while (int2 < 5) {
                        try {
                            if (!(new File(new StringBuilder(String.valueOf(String_1darray1[int2])).append("su").toString()).exists()))
                                break label_64;
                            a = 1;
                        } catch (Exception Exception3) {
                            Exception3.printStackTrace();
                            break;
                        }
                        break;
                    }
                    a = 0;
                }
                return 0;
            }
        }
        ++int2;
    }

    static List a(String[] String_1darray1) {
        return d();
    }

    static void a(int int1) {
        b = int1;
    }

    public static void a(Context Context1) {
        Thread Thread2 = new Thread((Runnable) new i(Context1));

        Thread2.setName("thread_setsaftsoft");
        Thread2.start();
    }

    public static int b() {
        return b;
    }

    static String[] c() {
        return c;
    }

    private static List d() {
        Object Object1 = new ArrayList();
        int int2 = 0;

        for (; ; ) {
            try {
                if (int2 >= c.length)
                    return (List) Object1;
            } catch (Exception Exception3) {
                Exception3.printStackTrace();
                return (List) Object1;
            }
            try {
                ((List) Object1).add(c[int2]);
            } catch (Exception Exception4) {
                Exception4.printStackTrace();
                return (List) Object1;
            }
            ++int2;
        }
        return (List) Object1;
    }
}
