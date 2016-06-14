package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;

import java.util.Date;

@Table(name = "DnsCache")
public class DnsCacheRecord extends Model {
    @Column(name = "expiredTime")
    private Date expiredTime;
    @Column(name = "host")
    private String host;
    @Column(name = "ip")
    private String ip;

    public Date getExpiredTime() {
        return this.expiredTime;
    }

    public void setExpiredTime(Date date) {
        this.expiredTime = date;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String string) {
        this.host = string;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String string) {
        this.ip = string;
    }

    public boolean isExpired() {
        if (new Date().getTime() > this.expiredTime.getTime()) {
            return true;
        }
        return false;
    }
}
