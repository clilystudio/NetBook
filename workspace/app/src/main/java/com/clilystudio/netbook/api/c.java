package com.clilystudio.netbook.api;

import com.clilystudio.netbook.db.DnsCacheRecord;

public final class c {

    private static c a;

    public static c a() {
        if (a == null)
            a = new c();
        return a;
    }

    public final void a(d d1, String String2) {
        synchronized (this) {
            DnsCacheRecord DnsCacheRecord3 = new DnsCacheRecord();

            DnsCacheRecord3.setExpiredTime(d1.b());
            DnsCacheRecord3.setHost(String2);
            DnsCacheRecord3.setIp(d1.a());
            DnsCacheRecord3.save();
        }
    }
}
