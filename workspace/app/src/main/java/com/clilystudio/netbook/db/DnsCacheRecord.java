package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.util.Date;

public class DnsCacheRecord extends Model {

    private Date expiredTime;
    private String host;
    private String ip;

    public Date getExpiredTime() {
        return expiredTime;
    }

    public void setExpiredTime(Date Date1) {
        expiredTime = Date1;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String String1) {
        host = String1;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String String1) {
        ip = String1;
    }

    public boolean isExpired() {
        if (new Date().getTime() > expiredTime.getTime())
            return true;
        else
            return false;
    }
}
