package com.ushaqi.zhuishushenqi.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class AliPayOrder$PayOrder
{
  private String _input_charset;
  private String body;
  private String it_b_pay;
  private String notify_url;
  private String out_trade_no;
  private String partner;
  private String payment_type;
  private String seller_id;
  private String service;
  private String sign;
  private String sign_type;
  private String subject;
  private String total_fee;

  public String getBody()
  {
    return this.body;
  }

  public String getIt_b_pay()
  {
    return this.it_b_pay;
  }

  public String getNotify_url()
  {
    return this.notify_url;
  }

  public String getOut_trade_no()
  {
    return this.out_trade_no;
  }

  public String getPartner()
  {
    return this.partner;
  }

  public String getPayString()
  {
    String str1 = "_input_charset=\"" + this._input_charset + "\"";
    String str2 = str1 + "&body=\"" + this.body + "\"";
    String str3 = str2 + "&it_b_pay=\"" + this.it_b_pay + "\"";
    String str4 = str3 + "&notify_url=\"" + this.notify_url + "\"";
    String str5 = str4 + "&out_trade_no=\"" + this.out_trade_no + "\"";
    String str6 = str5 + "&partner=\"" + this.partner + "\"";
    String str7 = str6 + "&payment_type=\"" + this.payment_type + "\"";
    String str8 = str7 + "&seller_id=\"" + this.seller_id + "\"";
    String str9 = str8 + "&service=\"" + this.service + "\"";
    String str10 = str9 + "&subject=\"" + this.subject + "\"";
    String str11 = str10 + "&total_fee=\"" + this.total_fee + "\"";
    try
    {
      this.sign = URLEncoder.encode(this.sign, "UTF-8");
      return str11 + "&sign=\"" + this.sign + "\"&sign_type=\"" + this.sign_type + "\"";
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        localUnsupportedEncodingException.printStackTrace();
    }
  }

  public String getPayment_type()
  {
    return this.payment_type;
  }

  public String getSeller_id()
  {
    return this.seller_id;
  }

  public String getService()
  {
    return this.service;
  }

  public String getSign()
  {
    return this.sign;
  }

  public String getSign_type()
  {
    return this.sign_type;
  }

  public String getSubject()
  {
    return this.subject;
  }

  public String getTotal_fee()
  {
    return this.total_fee;
  }

  public String get_input_charset()
  {
    return this._input_charset;
  }

  public void setBody(String paramString)
  {
    this.body = paramString;
  }

  public void setIt_b_pay(String paramString)
  {
    this.it_b_pay = paramString;
  }

  public void setNotify_url(String paramString)
  {
    this.notify_url = paramString;
  }

  public void setOut_trade_no(String paramString)
  {
    this.out_trade_no = paramString;
  }

  public void setPartner(String paramString)
  {
    this.partner = paramString;
  }

  public void setPayment_type(String paramString)
  {
    this.payment_type = paramString;
  }

  public void setSeller_id(String paramString)
  {
    this.seller_id = paramString;
  }

  public void setService(String paramString)
  {
    this.service = paramString;
  }

  public void setSign(String paramString)
  {
    this.sign = paramString;
  }

  public void setSign_type(String paramString)
  {
    this.sign_type = paramString;
  }

  public void setSubject(String paramString)
  {
    this.subject = paramString;
  }

  public void setTotal_fee(String paramString)
  {
    this.total_fee = paramString;
  }

  public void set_input_charset(String paramString)
  {
    this._input_charset = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.AliPayOrder.PayOrder
 * JD-Core Version:    0.6.0
 */