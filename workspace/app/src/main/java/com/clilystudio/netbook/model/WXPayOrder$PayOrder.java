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

    public void setAppid(String paramString) {
        this.appid = paramString;
    }

    public String getNoncestr() {
        return this.noncestr;
    }

    public void setNoncestr(String paramString) {
        this.noncestr = paramString;
    }

    public String getPartnerid() {
        return this.partnerid;
    }

    public void setPartnerid(String paramString) {
        this.partnerid = paramString;
    }

    public String getPrepayid() {
        return this.prepayid;
    }

    public void setPrepayid(String paramString) {
        this.prepayid = paramString;
    }

    public String getSign() {
        return this.sign;
    }

    public void setSign(String paramString) {
        this.sign = paramString;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(String paramString) {
        this.timestamp = paramString;
    }

    public String getXpackage() {
        return this.xpackage;
    }

    public void setXpackage(String paramString) {
        this.xpackage = paramString;
    }

    public String toString() {
        return "PayOrder{appid='" + this.appid + '\'' + ", partnerid='" + this.partnerid + '\'' + ", prepayid='" + this.prepayid + '\'' + ", xpackage='" + this.xpackage + '\'' + ", timestamp='" + this.timestamp + '\'' + ", noncestr='" + this.noncestr + '\'' + ", sign='" + this.sign + '\'' + '}';
    }
}

