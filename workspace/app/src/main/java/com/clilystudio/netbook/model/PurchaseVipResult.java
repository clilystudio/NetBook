package com.clilystudio.netbook.model;

import java.util.Date;

public class PurchaseVipResult
{
  private String code;
  private long dueInMs;
  private boolean ok;
  private Date vipExpire;

  public String getCode()
  {
    return this.code;
  }

  public long getDueInMs()
  {
    return this.dueInMs;
  }

  public Date getVipExpire()
  {
    return this.vipExpire;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setDueInMs(long paramLong)
  {
    this.dueInMs = paramLong;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setVipExpire(Date paramDate)
  {
    this.vipExpire = paramDate;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PurchaseVipResult
 * JD-Core Version:    0.6.0
 */