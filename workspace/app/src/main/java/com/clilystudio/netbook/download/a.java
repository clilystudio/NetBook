package com.clilystudio.netbook.download;

import android.content.Context;
import android.content.SharedPreferences$Editor;
import android.os.Handler;

import java.util.HashSet;
import java.util.Set;

public final class a {

    private Context a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int h;
    private boolean g = false;
    private Handler i = new b(this);
    public a(Context Context1, String String2, String String3, String String4, String String5) {
        Set Set6;

        a = Context1;
        b = String2;
        c = String3;
        d = String4;
        e = e.a;
        f = String5;
        Set6 = Context1.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", null);
        if (Set6 != null && Set6.contains(String5))
            g = true;
        else
            g = false;
    }

    static int a(a a1) {
        return a1.h;
    }

    static int a(a a1, int int2) {
        a1.h = int2;
        return int2;
    }

    static void b(a a1) {
        Set Set2 = a1.a.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", (Set) new HashSet());
        SharedPreferences$Editor Editor3 = a1.a.getSharedPreferences("downloadInfo", 0).edit();

        Editor3.putString("apkName", a1.b);
        Editor3.putString("apkSavePath", a1.e);
        Editor3.putString("packageName", a1.f);
        Set2.add(a1.f);
        Editor3.putStringSet("downloadedPackage", Set2);
        Editor3.apply();
        e.a(a1.a, a1.e, a1.b);
    }

    static String c(a a1) {
        return a1.e;
    }

    static String d(a a1) {
        return a1.b;
    }

    static String e(a a1) {
        return a1.c;
    }

    static Handler f(a a1) {
        return a1.i;
    }

    static String g(a a1) {
        return a1.d;
    }

    public final void a() {
        float float1 = com.clilystudio.netbook.hpay100.a.a.u(a, "rate_test");
        double double2 = Math.random();

        if ((double) float1 > double2 && !com.clilystudio.netbook.download.e.a(a, f) && (!g || g && !com.clilystudio.netbook.download.e.a(e, b).booleanValue())) {
            if (e.a(a)) {
                new d(this).start();
                new c(this).start();
                com.umeng.a.b.a(a, "manhuadao_download_count", c);
            } else {
                SharedPreferences$Editor Editor4 = a.getSharedPreferences("downloadInfo", 0).edit();

                Editor4.putString("apkName", b);
                Editor4.putString("apkUrl", c);
                Editor4.putString("iconUrl", d);
                Editor4.putString("packageName", f);
                Editor4.apply();
            }
        }
    }

    public final String b() {
        return f;
    }
}
