package com.ushaqi.zhuishushenqi.model;

import java.util.Date;

public class PayVoucherRecord$Voucher
{
  private int _id;
  private String accountId;
  private int amount;
  private int balance;
  private Date created;
  private Date expired;
  private String from;

  public String getAccountId()
  {
    return this.accountId;
  }

  public int getAmount()
  {
    return this.amount;
  }

  public int getBalance()
  {
    return this.balance;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public Date getExpired()
  {
    return this.expired;
  }

  public String getFrom()
  {
    return this.from;
  }

  public int get_id()
  {
    return this._id;
  }

  public void setAccountId(String paramString)
  {
    this.accountId = paramString;
  }

  public void setAmount(int paramInt)
  {
    this.amount = paramInt;
  }

  public void setBalance(int paramInt)
  {
    this.balance = paramInt;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setExpired(Date paramDate)
  {
    this.expired = paramDate;
  }

  public void setFrom(String paramString)
  {
    this.from = paramString;
  }

  public void set_id(int paramInt)
  {
    this._id = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.PayVoucherRecord.Voucher
 * JD-Core Version:    0.6.0
 */