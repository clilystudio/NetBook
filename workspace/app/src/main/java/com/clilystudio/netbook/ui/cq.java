package com.clilystudio.netbook.ui;

import org.apache.http.NameValuePair;

import java.util.Iterator;

final class cq implements r {

    private String[] a;

    cq(WifiActivity WifiActivity1, String[] String_1darray2) {
        a = String_1darray2;
    }

    public final void a(h h1, l l2) {
        Iterator Iterator3 = ((k) h1.b_()).b().iterator();

        while (Iterator3.hasNext()) {
            NameValuePair NameValuePair4 = (NameValuePair) Iterator3.next();

            if (!"filename".equals(NameValuePair4.getName()))
                continue;
            a[0] = NameValuePair4.getValue();
        }
        l2.a("finish");
    }
}
