package com.clilystudio.netbook.api;

import com.clilystudio.netbook.db.DnsCacheRecord;

public final class c {
    private static c a;

    private c() {
    }

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    public final void a(DnsRecord d2, String string) {
        synchronized (this) {
            DnsCacheRecord dnsCacheRecord = new DnsCacheRecord();
            dnsCacheRecord.setExpiredTime(d2.getExpiredTime());
            dnsCacheRecord.setHost(string);
            dnsCacheRecord.setIp(d2.getIp());
            dnsCacheRecord.save();
        }
    }
}
