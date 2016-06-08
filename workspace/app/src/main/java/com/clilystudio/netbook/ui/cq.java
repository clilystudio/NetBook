package com.clilystudio.netbook.ui;

import org.apache.http.NameValuePair;

import java.util.Iterator;

final class cq
        implements r {
    cq(WifiActivity paramWifiActivity, String[] paramArrayOfString) {
    }

    public final void a(h paramh, l paraml) {
        Iterator localIterator = ((k) paramh.b_()).b().iterator();
        while (localIterator.hasNext()) {
            NameValuePair localNameValuePair = (NameValuePair) localIterator.next();
            if (!"filename".equals(localNameValuePair.getName()))
                continue;
            this.a[0] = localNameValuePair.getValue();
        }
        paraml.a("finish");
    }
}

