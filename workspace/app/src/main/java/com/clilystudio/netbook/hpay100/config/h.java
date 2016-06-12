package com.clilystudio.netbook.hpay100.config;

import android.content.Context;

import java.util.HashMap;
import java.util.Map;

final class h implements Runnable {

    private Context a;     // final access specifier removed
    private HashMap b;     // final access specifier removed
    h(Context Context1, HashMap HashMap2) {
        a = Context1;
        b = HashMap2;
    }

    public final void run() {
        try {
            String String2 = new StringBuilder(String.valueOf(f.h(a.getApplicationContext()))).append(a.a(b)).toString();
            Object Object3;

            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("data:").append(String2).toString());
            Object3 = new HashMap();
            ((HashMap) Object3).put("p", f.a(String2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"));
            com.clilystudio.netbook.hpay100.a.a.b(a.getApplicationContext(), "http://fee.arc-soft.com:26000/gamefee/sdk/dot_upload", (Map) Object3);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
