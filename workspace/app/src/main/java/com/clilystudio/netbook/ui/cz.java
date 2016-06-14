package com.clilystudio.netbook.ui;

final class cz implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ cw b;

    cz(cw cw2, String string) {
        this.b = cw2;
        this.a = string;
    }

    @Override
    public final void run() {
        cw.c(this.b).loadUrl("javascript:ZssqJsApiOnShared('" + this.a + "')");
    }
}
