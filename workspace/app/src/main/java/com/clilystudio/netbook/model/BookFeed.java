package com.clilystudio.netbook.model;

public class BookFeed
{
  private boolean fat;
  private long lastActionTime;
  private String title;

  public long getLastActionTime()
  {
    return this.lastActionTime;
  }

  public String getTitle()
  {
    return this.title;
  }

  public boolean isFat()
  {
    return this.fat;
  }

  public void setFat(boolean paramBoolean)
  {
    this.fat = paramBoolean;
  }

  public void setLastActionTime(long paramLong)
  {
    this.lastActionTime = paramLong;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.BookFeed
 * JD-Core Version:    0.6.0
 */