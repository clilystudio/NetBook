package com.ushaqi.zhuishushenqi.model;

public class WXPayOrder$PayOrder
{
  private String appid;
  private String noncestr;
  private String partnerid;
  private String prepayid;
  private String sign;
  private String timestamp;
  private String xpackage;

  public String getAppid()
  {
    return this.appid;
  }

  public String getNoncestr()
  {
    return this.noncestr;
  }

  public String getPartnerid()
  {
    return this.partnerid;
  }

  public String getPrepayid()
  {
    return this.prepayid;
  }

  public String getSign()
  {
    return this.sign;
  }

  public String getTimestamp()
  {
    return this.timestamp;
  }

  public String getXpackage()
  {
    return this.xpackage;
  }

  public void setAppid(String paramString)
  {
    this.appid = paramString;
  }

  public void setNoncestr(String paramString)
  {
    this.noncestr = paramString;
  }

  public void setPartnerid(String paramString)
  {
    this.partnerid = paramString;
  }

  public void setPrepayid(String paramString)
  {
    this.prepayid = paramString;
  }

  public void setSign(String paramString)
  {
    this.sign = paramString;
  }

  public void setTimestamp(String paramString)
  {
    this.timestamp = paramString;
  }

  public void setXpackage(String paramString)
  {
    this.xpackage = paramString;
  }

  public String toString()
  {
    return "PayOrder{appid='" + this.appid + '\'' + ", partnerid='" + this.partnerid + '\'' + ", prepayid='" + this.prepayid + '\'' + ", xpackage='" + this.xpackage + '\'' + ", timestamp='" + this.timestamp + '\'' + ", noncestr='" + this.noncestr + '\'' + ", sign='" + this.sign + '\'' + '}';
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.WXPayOrder.PayOrder
 * JD-Core Version:    0.6.0
 */