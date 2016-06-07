package com.clilystudio.netbook.model;

public class TimelineResult
{
  private String code;
  private boolean ok;
  private TimelineResult.Names[] retweetNames;
  private TimelineResult.Temp[] timeline;

  public String getCode()
  {
    return this.code;
  }

  public TimelineResult.Names[] getRetweetNames()
  {
    return this.retweetNames;
  }

  public TimelineResult.Temp[] getTweets()
  {
    return this.timeline;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setRetweetNames(TimelineResult.Names[] paramArrayOfNames)
  {
    this.retweetNames = paramArrayOfNames;
  }

  public void setTweets(TimelineResult.Temp[] paramArrayOfTemp)
  {
    this.timeline = paramArrayOfTemp;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.TimelineResult
 * JD-Core Version:    0.6.0
 */