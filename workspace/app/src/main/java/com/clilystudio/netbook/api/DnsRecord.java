package com.clilystudio.netbook.api;

import java.util.Calendar;
import java.util.Date;

public final class DnsRecord {
    private final String mIp;
    private final Date mExpiredTime;

    public DnsRecord(String ip, int seconds) {
        this.mIp = ip;
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.SECOND, seconds);
        this.mExpiredTime = calendar.getTime();
    }

    public final String getIp() {
        return this.mIp;
    }

    public final Date getExpiredTime() {
        return this.mExpiredTime;
    }
}
