package com.clilystudio.netbook.util;

import android.support.design.widget.am;

final class aq extends Thread {

    private String a;
    private String b;
    private String c;
    aq(String String1, String String2, String String3) {
        a = String1;
        b = String2;
        c = String3;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().b(am.e().getToken(), a, b, c);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
