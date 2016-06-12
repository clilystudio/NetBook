package com.clilystudio.netbook.ui;

final class cz implements Runnable {

    private String a;
    private cw b;
    cz(cw cw1, String String2) {
        b = cw1;
        a = String2;
    }

    public final void run() {
        cw.c(b).loadUrl(new StringBuilder("javascript:ZssqJsApiOnShared('").append(a).append("')").toString());
    }
}
