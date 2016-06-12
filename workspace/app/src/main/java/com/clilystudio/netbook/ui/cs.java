package com.clilystudio.netbook.ui;

final class cs implements r {

    int a;
    String[] b;     // final access specifier removed
    WifiActivity c;     // final access specifier removed
    cs(WifiActivity WifiActivity1, String[] String_1darray2) {
        c = WifiActivity1;
        b = String_1darray2;
        a = 0;
    }

    public final void a(h h1, l l2) {
        d d3 = (d) h1.b_();

        a = 0;
        d3.a((g) new ct(this, d3, new Boolean[]{null}));
        h1.b((com.koushikdutta.async.a.a) new cv(this, l2));
    }
}
