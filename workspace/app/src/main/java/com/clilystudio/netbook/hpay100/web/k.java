
package com.clilystudio.netbook.hpay100.web;

final class k implements Runnable {

    k(HPayWebView HPayWebView1, String String2)
    {
        a = HPayWebView1;
        b = String2;
    }

    private HPayWebView a;
    private String b;     // final access specifier removed

    public final void run()
    {
        HPayWebView.b( a, b );
    }
}
