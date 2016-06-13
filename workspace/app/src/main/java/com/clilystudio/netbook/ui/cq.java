package com.clilystudio.netbook.ui;

import com.koushikdutta.async.http.a.a;

import org.apache.http.NameValuePair;

final class cq
        implements r {
    private /* synthetic */ String[] a;

    cq(WifiActivity wifiActivity, String[] arrstring) {
        this.a = arrstring;
    }

    @Override
    public final void a(h h2, l l2) {
        for (NameValuePair nameValuePair : ((k) h2.b_()).b()) {
            if (!"filename".equals(nameValuePair.getName())) continue;
            this.a[0] = nameValuePair.getValue();
        }
        l2.a("finish");
    }
}
