package com.ximalaya.ting.android.opensdk.player.service;

public class XmTrackRecord extends XmBaseRecord
{
  private int mPlayType;
  private String mRecSrc;
  private String mRecTrack;

  public int getPlayType()
  {
    return this.mPlayType;
  }

  public String getRecSrc()
  {
    return this.mRecSrc;
  }

  public String getRecTrack()
  {
    return this.mRecTrack;
  }

  public void setPlayType(int paramInt)
  {
    this.mPlayType = paramInt;
  }

  public void setRecSrc(String paramString)
  {
    this.mRecSrc = paramString;
  }

  public void setRecTrack(String paramString)
  {
    this.mRecTrack = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmTrackRecord
 * JD-Core Version:    0.6.0
 */