package com.clilystudio.netbook.util;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

public final class A {
    private Activity a;
    private ProgressBar b;
    private TextView c;
    private Dialog d;
    private String e = "";
    private String f = "";
    private String g;
    private String h;
    private int i;
    private Runnable j;
    private Handler k;

    public A(Activity activity) {
        this.j = new B(this);
        this.k = new C(this);
        this.a = activity;
    }

    static /* synthetic */ int a(A a, int n) {
        a.i = n;
        return n;
    }

    static /* synthetic */ String a(A a) {
        return a.e;
    }

    static /* synthetic */ String a(A a, String string) {
        a.e = string;
        return string;
    }

    static /* synthetic */ Handler b(A a) {
        return a.k;
    }

    static /* synthetic */ String b(A a, String string) {
        a.f = string;
        return string;
    }

    static /* synthetic */ String c(A a) {
        return a.f;
    }

    static /* synthetic */ String c(A a, String string) {
        a.g = string;
        return string;
    }

    static /* synthetic */ int d(A a) {
        return a.i;
    }

    static /* synthetic */ String d(A a, String string) {
        a.h = string;
        return string;
    }

    static /* synthetic */ ProgressBar e(A a) {
        return a.b;
    }

    static /* synthetic */ String f(A a) {
        return a.h;
    }

    static /* synthetic */ String g(A a) {
        return a.g;
    }

    static /* synthetic */ TextView h(A a) {
        return a.c;
    }

    static /* synthetic */ void i(A a) {
        try {
            a.d.dismiss();
            return;
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }

    static /* synthetic */ Activity j(A a) {
        return a.a;
    }

    public final void a() {
        h h2 = new h(this.a);
        h2.d = "\u6b63\u5728\u4e0b\u8f7d";
        View view = LayoutInflater.from(this.a).inflate(R.layout.mhd_download_progress, null);
        this.b = (ProgressBar) view.findViewById(R.id.update_progress);
        this.c = (TextView) view.findViewById(R.id.update_progress_text);
        h2.a(view);
        this.d = h2.a();
        this.d.setCanceledOnTouchOutside(false);
        this.d.show();
        new Thread(this.j).start();
    }
}
