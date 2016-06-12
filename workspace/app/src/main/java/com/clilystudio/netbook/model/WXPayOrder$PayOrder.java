
package com.clilystudio.netbook.model;

public class WXPayOrder$PayOrder {

    private String appid;
    private String noncestr;
    private String partnerid;
    private String prepayid;
    private String sign;
    private String timestamp;
    private String xpackage;

    public String getAppid()
    {
        return appid;
    }

    public String getNoncestr()
    {
        return noncestr;
    }

    public String getPartnerid()
    {
        return partnerid;
    }

    public String getPrepayid()
    {
        return prepayid;
    }

    public String getSign()
    {
        return sign;
    }

    public String getTimestamp()
    {
        return timestamp;
    }

    public String getXpackage()
    {
        return xpackage;
    }

    public void setAppid(String String1)
    {
        appid = String1;
    }

    public void setNoncestr(String String1)
    {
        noncestr = String1;
    }

    public void setPartnerid(String String1)
    {
        partnerid = String1;
    }

    public void setPrepayid(String String1)
    {
        prepayid = String1;
    }

    public void setSign(String String1)
    {
        sign = String1;
    }

    public void setTimestamp(String String1)
    {
        timestamp = String1;
    }

    public void setXpackage(String String1)
    {
        xpackage = String1;
    }

    public String toString()
    {
        return new StringBuilder( "PayOrder{appid='" ).append( appid ).append( '\'' ).append( ", partnerid='" ).append( partnerid ).append( '\'' ).append( ", prepayid='" ).append( prepayid ).append( '\'' ).append( ", xpackage='" ).append( xpackage ).append( '\'' ).append( ", timestamp='" ).append( timestamp ).append( '\'' ).append( ", noncestr='" ).append( noncestr ).append( '\'' ).append( ", sign='" ).append( sign ).append( '\'' ).append( '}' ).toString();
    }
}
