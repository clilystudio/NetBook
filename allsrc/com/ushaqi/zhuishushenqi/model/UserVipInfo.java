package com.ushaqi.zhuishushenqi.model;

import java.util.Date;

public class UserVipInfo
{
  private long dueInMs;
  private boolean ok;
  private Date vipExpire;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.UserVipInfo
 * JD-Core Version:    0.6.0
 */