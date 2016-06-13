package com.clilystudio.netbook.download;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
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
    private boolean g = false;
    private int h;
    private Handler i;

    @TargetApi(value = 11)
    public a(Context context, String string, String string2, String string3, String string4) {
        this.i = new b(this);
        this.a = context;
        this.b = string;
        this.c = string2;
        this.d = string3;
        this.e = e.a;
        this.f = string4;
        Set<String> set = context.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", null);
        if (set != null && set.contains(string4)) {
            this.g = true;
            return;
        }
        this.g = false;
    }

    static /* synthetic */ int a(a a2) {
        return a2.h;
    }

    static /* synthetic */ int a(a a2, int n) {
        a2.h = n;
        return n;
    }

    static /* synthetic */ void b(a a2) {
        Set<String> set = a2.a.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", new HashSet<String>());
        SharedPreferences.Editor editor = a2.a.getSharedPreferences("downloadInfo", 0).edit();
        editor.putString("apkName", a2.b);
        editor.putString("apkSavePath", a2.e);
        editor.putString("packageName", a2.f);
        set.add(a2.f);
        editor.putStringSet("downloadedPackage", set);
        editor.apply();
        e.a(a2.a, a2.e, a2.b);
    }

    static /* synthetic */ String c(a a2) {
        return a2.e;
    }

    static /* synthetic */ String d(a a2) {
        return a2.b;
    }

    static /* synthetic */ String e(a a2) {
        return a2.c;
    }

    static /* synthetic */ Handler f(a a2) {
        return a2.i;
    }

    static /* synthetic */ String g(a a2) {
        return a2.d;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        double d2;
        float f2 = com.clilystudio.netbook.hpay100.a.a.u(this.a, "rate_test");
        if ((double) f2 <= (d2 = Math.random()) || e.a(this.a, this.f) || this.g && (!this.g || e.a(this.e, this.b).booleanValue())) {
            return;
        }
        if (e.a(this.a)) {
            new d(this).start();
            new c(this).start();
            com.umeng.a.b.a(this.a, "manhuadao_download_count", this.c);
            return;
        }
        SharedPreferences.Editor editor = this.a.getSharedPreferences("downloadInfo", 0).edit();
        editor.putString("apkName", this.b);
        editor.putString("apkUrl", this.c);
        editor.putString("iconUrl", this.d);
        editor.putString("packageName", this.f);
        editor.apply();
    }

    public final String b() {
        return this.f;
    }
}
