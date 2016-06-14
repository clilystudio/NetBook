package com.clilystudio.netbook.model;

public class WXPayOrder$PayOrder {
    private String appid;
    private String noncestr;
    private String partnerid;
    private String prepayid;
    private String sign;
    private String timestamp;
    private String xpackage;

    public String getAppid() {
        return this.appid;
    }

    public void setAppid(String string) {
        this.appid = string;
    }

    public String getNoncestr() {
        return this.noncestr;
    }

    public void setNoncestr(String string) {
        this.noncestr = string;
    }

    public String getPartnerid() {
        return this.partnerid;
    }

    public void setPartnerid(String string) {
        this.partnerid = string;
    }

    public String getPrepayid() {
        return this.prepayid;
    }

    public void setPrepayid(String string) {
        this.prepayid = string;
    }

    public String getSign() {
        return this.sign;
    }

    public void setSign(String string) {
        this.sign = string;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(String string) {
        this.timestamp = string;
    }

    public String getXpackage() {
        return this.xpackage;
    }

    public void setXpackage(String string) {
        this.xpackage = string;
    }

    public String toString() {
        return "PayOrder{appid='" + this.appid + '\'' + ", partnerid='" + this.partnerid + '\'' + ", prepayid='" + this.prepayid + '\'' + ", xpackage='" + this.xpackage + '\'' + ", timestamp='" + this.timestamp + '\'' + ", noncestr='" + this.noncestr + '\'' + ", sign='" + this.sign + '\'' + '}';
    }
}