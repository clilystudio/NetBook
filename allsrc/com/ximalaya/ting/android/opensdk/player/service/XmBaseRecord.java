package com.ximalaya.ting.android.opensdk.player.service;

public class XmBaseRecord
{
  public static final int PLAY_TYPE_LOCAL = 1;
  public static final int PLAY_TYPE_ONLINE;
  private String mAppId;
  private String mBundleId;
  private boolean mCounting = false;
  private String mDeviceId;
  private int mDuration;
  private long mId;
  private long mLastEventTime;
  private int mLastPostion;
  private String mOSType = "android";
  private int mPlaySource = 25;
  private int mPlayedSecs;
  private String mSDKVersion = "1.0";
  private long mStartedAt;

  public void addDuration(int paramInt)
  {
    this.mDuration += (int)(paramInt / 1000.0F);
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    XmBaseRecord localXmBaseRecord;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localXmBaseRecord = (XmBaseRecord)paramObject;
    }
    while (this.mId == localXmBaseRecord.mId);
    return false;
  }

  public String getAppId()
  {
    return this.mAppId;
  }

  public String getBundleId()
  {
    return this.mBundleId;
  }

  public String getDeviceId()
  {
    return this.mDeviceId;
  }

  public int getDuration()
  {
    return this.mDuration;
  }

  public long getId()
  {
    return this.mId;
  }

  public long getLastEventTime()
  {
    return this.mLastEventTime;
  }

  public int getLastPostion()
  {
    return this.mLastPostion;
  }

  public String getOSType()
  {
    return this.mOSType;
  }

  public int getPlaySource()
  {
    return this.mPlaySource;
  }

  public int getPlayedSecs()
  {
    return this.mPlayedSecs;
  }

  public String getSDKVersion()
  {
    return this.mSDKVersion;
  }

  public long getStartedAt()
  {
    return this.mStartedAt;
  }

  public int hashCode()
  {
    return 31 + (int)(this.mId ^ this.mId >>> 32);
  }

  public boolean isCounting()
  {
    return this.mCounting;
  }

  public void setAppId(String paramString)
  {
    this.mAppId = paramString;
  }

  public void setBundleId(String paramString)
  {
    this.mBundleId = paramString;
  }

  public void setCounting(boolean paramBoolean)
  {
    this.mCounting = paramBoolean;
  }

  public void setDeviceId(String paramString)
  {
    this.mDeviceId = paramString;
  }

  public void setDuration(int paramInt)
  {
    this.mDuration = (int)(paramInt / 1000.0F);
  }

  public void setId(long paramLong)
  {
    this.mId = paramLong;
  }

  public void setLastEventTime(long paramLong)
  {
    this.mLastEventTime = paramLong;
  }

  public void setLastPostion(int paramInt)
  {
    this.mLastPostion = paramInt;
  }

  public void setOSType(String paramString)
  {
    this.mOSType = paramString;
  }

  public void setPlaySource(int paramInt)
  {
    this.mPlaySource = paramInt;
  }

  public void setPlayedSecs(int paramInt)
  {
    this.mPlayedSecs = (int)(paramInt / 1000.0F);
  }

  public void setSDKVersion(String paramString)
  {
    this.mSDKVersion = paramString;
  }

  public void setStartedAt(long paramLong)
  {
    this.mStartedAt = paramLong;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmBaseRecord
 * JD-Core Version:    0.6.0
 */