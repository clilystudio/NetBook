package com.clilystudio.netbook.umeng.update;

import android.content.Context;

public final class k {

    private static String a;
    private static String b;
    private static boolean c = true;
    private static boolean d = true;
    private static boolean e = false;
    private static boolean f = true;
    private static boolean g = false;
    private static boolean h = true;
    private static boolean i = true;
    private static int j = 0;

    public static String a(Context Context1) {
        if (a == null)
            a = u.a.a.e(Context1);
        return a;
    }

    public static void a(Context Context1, String String2) {
        Context1.getApplicationContext().getSharedPreferences("umeng_update", 0).edit().putString("ignore", String2).commit();
    }

    public static void a(boolean boolean1) {
        e = false;
    }

    public static boolean a() {
        return c;
    }

    public static String b(Context Context1) {
        if (b == null)
            b = u.a.a.f(Context1);
        return b;
    }

    public static void b(boolean boolean1) {
        g = false;
    }

    public static boolean b() {
        return d;
    }

    public static String c(Context Context1) {
        String String2 = Context1.getApplicationContext().getSharedPreferences("umeng_update", 0).getString("ignore", "");

        if ("".equals(String2))
            String2 = null;
        return String2;
    }

    public static boolean c() {
        return e;
    }

    public static boolean d() {
        return f;
    }

    public static boolean e() {
        return g;
    }

    public static int f() {
        return 0;
    }

    public static boolean g() {
        return h;
    }

    public static boolean h() {
        return i;
    }
}
