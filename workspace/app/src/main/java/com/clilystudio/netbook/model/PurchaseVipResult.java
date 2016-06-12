package com.clilystudio.netbook.model;

import java.util.Date;

public class PurchaseVipResult {

    private String code;
    private long dueInMs;
    private boolean ok;
    private Date vipExpire;

    public String getCode() {
        return code;
    }

    public void setCode(String String1) {
        code = String1;
    }

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
