package com.clilystudio.netbook.api;

import com.clilystudio.netbook.db.DnsCacheRecord;

public final class DnsCacheManager {
    private static DnsCacheManager mInstance;

    private DnsCacheManager() {
    }

    public static DnsCacheManager getInstance() {
        if (mInstance == null) {
            mInstance = new DnsCacheManager();
        }
        return mInstance;
    }

    public final void a(DnsRecord dnsRecord, String host) {
        synchronized (this) {
            DnsCacheRecord dnsCacheRecord = new DnsCacheRecord();
            dnsCacheRecord.setExpiredTime(dnsRecord.getExpiredTime());
            dnsCacheRecord.setHost(host);
            dnsCacheRecord.setIp(dnsRecord.getIp());
            dnsCacheRecord.save();
        }
    }
}
