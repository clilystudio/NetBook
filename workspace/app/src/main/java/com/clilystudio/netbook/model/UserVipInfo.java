package com.clilystudio.netbook.model;

import java.util.Date;

public class UserVipInfo {
    private long dueInMs;
    private boolean ok;
    private Date vipExpire;

    public long getDueInMs() {
        return this.dueInMs;
    }

    public void setDueInMs(long l) {
        this.dueInMs = l;
    }

    public Date getVipExpire() {
        return this.vipExpire;
    }

    public void setVipExpire(Date date) {
        this.vipExpire = date;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
