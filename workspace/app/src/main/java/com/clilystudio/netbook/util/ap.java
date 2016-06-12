package com.clilystudio.netbook.util;

import android.support.design.widget.am;

final class ap extends Thread {

    private String a;
    private String b;
    ap(String String1, String String2) {
        a = String1;
        b = String2;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().e(am.e().getToken(), a, b);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
