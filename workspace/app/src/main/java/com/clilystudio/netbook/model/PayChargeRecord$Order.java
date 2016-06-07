package com.clilystudio.netbook.model;

import java.util.Date;

public class PayChargeRecord$Order
{
  private String _id;
  private String accountId;
  private int amount;
  private Date completed;
  private Date created;
  private int currency;
  private String payId;
  private String payType;
  private float price;
  private String stat;
  private String timeflag;
  private int voucher;

  public String getAccountId()
  {
    return this.accountId;
  }

  public int getAmount()
  {
    return this.amount;
  }

  public String getChargeString()
  {
    if (this.completed == null)
      return "未支付";
    if (this.voucher > 0)
      return this.currency + "追书币+" + this.voucher + "追书券";
    return this.currency + "追书币";
  }

  public Date getCompleted()
  {
    return this.completed;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public int getCurrency()
  {
    return this.currency;
  }

  public String getPayId()
  {
    return this.payId;
  }

  public String getPayType()
  {
    return this.payType;
  }

  public float getPrice()
  {
    return this.price;
  }

  public String getStat()
  {
    return this.stat;
  }

  public String getTimeflag()
  {
    return this.timeflag;
  }

  public int getVoucher()
  {
    return this.voucher;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isCompleted()
  {
    return "completed".equals(this.stat);
  }

  public void setAccountId(String paramString)
  {
    this.accountId = paramString;
  }

  public void setAmount(int paramInt)
  {
    this.amount = paramInt;
  }

  public void setCompleted(Date paramDate)
  {
    this.completed = paramDate;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setCurrency(int paramInt)
  {
    this.currency = paramInt;
  }

  public void setPayId(String paramString)
  {
    this.payId = paramString;
  }

  public void setPayType(String paramString)
  {
    this.payType = paramString;
  }

  public void setPrice(float paramFloat)
  {
    this.price = paramFloat;
  }

  public void setStat(String paramString)
  {
    this.stat = paramString;
  }

  public void setTimeflag(String paramString)
  {
    this.timeflag = paramString;
  }

  public void setVoucher(int paramInt)
  {
    this.voucher = paramInt;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PayChargeRecord.Order
 * JD-Core Version:    0.6.0
 */