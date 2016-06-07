package com.clilystudio.netbook.model;

import java.util.Date;

public class NotifCountRoot extends Root
{
  private int important;
  private Date lastReadImportantTime;
  private Date lastReadUnimportantTime;
  private int unimportant;

  public int getImportant()
  {
    return this.important;
  }

  public Date getLastReadImportantTime()
  {
    return this.lastReadImportantTime;
  }

  public Date getLastReadUnimportantTime()
  {
    return this.lastReadUnimportantTime;
  }

  public int getUnimportant()
  {
    return this.unimportant;
  }

  public void setImportant(int paramInt)
  {
    this.important = paramInt;
  }

  public void setLastReadImportantTime(Date paramDate)
  {
    this.lastReadImportantTime = paramDate;
  }

  public void setLastReadUnimportantTime(Date paramDate)
  {
    this.lastReadUnimportantTime = paramDate;
  }

  public void setUnimportant(int paramInt)
  {
    this.unimportant = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.NotifCountRoot
 * JD-Core Version:    0.6.0
 */