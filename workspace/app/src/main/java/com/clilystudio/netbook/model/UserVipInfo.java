package com.clilystudio.netbook.model;

import java.util.Date;

public class UserVipInfo {
    private long dueInMs;
    private boolean ok;
    private Date vipExpire;

    public long getDueInMs() {
        return this.dueInMs;
    }

    public void setDueInMs(long paramLong) {
        this.dueInMs = paramLong;
    }

    public Date getVipExpire() {
        return this.vipExpire;
    }

    public void setVipExpire(Date paramDate) {
        this.vipExpire = paramDate;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

