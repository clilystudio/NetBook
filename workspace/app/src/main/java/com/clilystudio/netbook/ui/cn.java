package com.clilystudio.netbook.ui;

import java.io.IOException;
import java.io.InputStream;

final class cn implements r {

    private String a;
    private String b;
    private WifiActivity c;
    cn(WifiActivity WifiActivity1, String String2, String String3) {
        c = WifiActivity1;
        a = String2;
        b = String3;
    }

    public final void a(h h1, l l2) {
        try {
            InputStream InputStream4 = c.getAssets().open(a);

            if (b != null)
                l2.b(b);
            l2.a(InputStream4, (long) InputStream4.available());
        } catch (IOException IOException3) {
            l2.a("error!!");
            IOException3.printStackTrace();
            return;
        }
    }
}
