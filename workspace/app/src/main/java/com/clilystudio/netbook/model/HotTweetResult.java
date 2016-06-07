package com.clilystudio.netbook.model;

public class HotTweetResult
{
  private String msg;
  private boolean ok;
  private TimelineResult.Temp[] tweets;

  public String getMsg()
  {
    return this.msg;
  }

  public TimelineResult.Temp[] getTweets()
  {
    return this.tweets;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setTweets(TimelineResult.Temp[] paramArrayOfTemp)
  {
    this.tweets = paramArrayOfTemp;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.HotTweetResult
 * JD-Core Version:    0.6.0
 */