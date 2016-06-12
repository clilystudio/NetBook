package com.clilystudio.netbook.hpay100.config;

import android.app.Activity;

import java.util.HashMap;
import java.util.Map;

final class n implements Runnable {

    private Activity a;     // final access specifier removed
    private String b;     // final access specifier removed
    private String c;     // final access specifier removed
    private int d;     // final access specifier removed
    private String e;     // final access specifier removed
    private String f;     // final access specifier removed
    private int g;     // final access specifier removed
    private k h;     // final access specifier removed
    n(Activity Activity1, String String2, String String3, int int4, String String5, String String6, int int7, k k8) {
        a = Activity1;
        b = String2;
        c = String3;
        d = int4;
        e = String5;
        f = String6;
        g = int7;
        h = k8;
    }

    public final void run() {
        try {
            String String2;
            Object Object3;

            l.q = "";
            String2 = new StringBuilder(String.valueOf(android.support.v7.app.f.h(a.getApplicationContext()))).append(l.a(b, c, d, e, f, g)).toString();
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("data:").append(String2).toString());
            Object3 = new HashMap();
            ((HashMap) Object3).put("p", android.support.v7.app.f.a(String2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
            l.q = com.clilystudio.netbook.hpay100.a.a.b(a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/before_create_order", (Map) Object3);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            l.q = "";
        }
        a.runOnUiThread((Runnable) new o(this, h));
    }
}
