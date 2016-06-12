package com.clilystudio.netbook.umeng.a;

import android.content.Context;
import android.text.TextUtils;

import java.util.HashMap;
import java.util.Map;

import u.aly.bt;

public final class b {

    private static final j a = new j();

    public static void a(Context Context1) {
        a.c(Context1);
    }

    public static void a(Context Context1, String String2) {
        a.a(Context1, String2, null, -1L, 1);
    }

    public static void a(Context Context1, String String2, String String3) {
        if (TextUtils.isEmpty((CharSequence) String3))
            bt.a("MobclickAgent", "label is null or empty");
        else
            a.a(Context1, String2, String3, -1L, 1);
    }

    public static void a(Context Context1, String String2, String String3, int int4) {
        if (TextUtils.isEmpty(null))
            bt.a("MobclickAgent", "label is null or empty");
        else
            a.a(Context1, String2, null, -1L, 1);
    }

    public static void a(Context Context1, String String2, Map Map3, int int4) {
        Object Object5 = new HashMap();

        ((HashMap) Object5).put("__ct__", Integer.valueOf(int4));
        a.a(Context1, String2, (Map) Object5, -1L);
    }

    public static void a(com.clilystudio.netbook.umeng.a.a.a a1) {
        a.a(a1);
    }

    public static void a(String String1) {
        if (!android.text.TextUtils.isEmpty((CharSequence) String1))
            a.a(String1);
        else
            bt.b("MobclickAgent", "pageName is null or empty");
    }

    public static String b(Context Context1, String String2) {
        o.a(Context1);
        return o.g().getString(String2, "");
    }

    public static void b(Context Context1) {
        if (Context1 == null)
            bt.b("MobclickAgent", "unexpected null context in onResume");
        else
            a.b(Context1);
    }

    public static void b(String String1) {
        if (!android.text.TextUtils.isEmpty((CharSequence) String1))
            a.b(String1);
        else
            bt.b("MobclickAgent", "pageName is null or empty");
    }

    public static void c(Context Context1) {
        a.a(Context1);
    }
}
