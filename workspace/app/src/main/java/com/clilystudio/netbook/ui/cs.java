package com.clilystudio.netbook.ui;

import com.koushikdutta.async.http.a.a;

final class cs implements r {
    final /* synthetic */ String[] b;
    final /* synthetic */ WifiActivity c;
    int a;

    cs(WifiActivity wifiActivity, String[] arrstring) {
        this.c = wifiActivity;
        this.b = arrstring;
        this.a = 0;
    }

    @Override
    public final void a(h h2, l l2) {
        d d2 = (d) h2.b_();
        this.a = 0;
        d2.a(new ct(this, d2, new Boolean[]{null}));
        h2.b(new cv(this, l2));
    }
}
