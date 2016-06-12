package com.clilystudio.netbook.model;

import java.util.Date;

public class UserVipInfo {

    private long dueInMs;
    private boolean ok;
    private Date vipExpire;

    public long getDueInMs() {
        return dueInMs;
    }

    public void setDueInMs(long long1) {
        dueInMs = long1;
    }

    public Date getVipExpire() {
        return vipExpire;
    }

    public void setVipExpire(Date Date1) {
        vipExpire = Date1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
