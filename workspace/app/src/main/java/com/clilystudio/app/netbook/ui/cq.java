package com.clilystudio.app.netbook.ui;

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
            if ("filename".equals(localNameValuePair.getName()))
                this.a[0] = localNameValuePair.getValue();
        }
        paraml.a("finish");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.cq
 * JD-Core Version:    0.6.2
 */