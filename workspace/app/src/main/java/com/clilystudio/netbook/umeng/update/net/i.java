package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Messenger;

public class i {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String b = null;

    static {
    }

    final Messenger a = new Messenger((Handler) new l(this));
    private Context c;
    private u d;
    private Messenger e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private boolean k = false;
    private boolean l = false;
    private boolean m = false;
    private ServiceConnection n = new j(this);
    public i(Context Context1, String String2, String String3, String String4, u u5) {
        c = Context1.getApplicationContext();
        f = String2;
        g = String3;
        h = String4;
        d = u5;
    }

    static String a(i i1) {
        return i1.f;
    }

    static void a(i i1, Messenger Messenger2) {
        i1.e = Messenger2;
    }

    static String b() {
        return b;
    }

    static String b(i i1) {
        return i1.g;
    }

    static String c(i i1) {
        return i1.h;
    }

    static String d(i i1) {
        return i1.i;
    }

    static String e(i i1) {
        return i1.j;
    }

    static String[] f(i i1) {
        return null;
    }

    static boolean g(i i1) {
        return i1.k;
    }

    static boolean h(i i1) {
        return i1.l;
    }

    static boolean i(i i1) {
        return i1.m;
    }

    static Messenger j(i i1) {
        return i1.e;
    }

    static u k(i i1) {
        return i1.d;
    }

    static Context l(i i1) {
        return i1.c;
    }

    static ServiceConnection m(i i1) {
        return i1.n;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void a() {
    }

    public final void a(String String1) {
        i = String1;
    }

    public final void a(boolean boolean1) {
        k = true;
    }

    public final void b(String String1) {
        j = String1;
    }

    public final void b(boolean boolean1) {
        l = boolean1;
    }

    public final void c(boolean boolean1) {
        m = boolean1;
    }
}
