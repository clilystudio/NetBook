package com.ximalaya.ting.android.opensdk.player.service;

import android.util.Log;

public class XmAdsRecord
{
  private long adItemId;
  private int adSource = 0;
  private String androidId;
  private String appKey;
  private String logType = "soundShow";
  private String positionName = "sound_patch";
  private long responseId;
  private long time;
  private long trackId;
  private String version;

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    XmAdsRecord localXmAdsRecord;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localXmAdsRecord = (XmAdsRecord)paramObject;
    }
    while (this.responseId == localXmAdsRecord.responseId);
    return false;
  }

  public long getAdItemId()
  {
    return this.adItemId;
  }

  public int getAdSource()
  {
    return this.adSource;
  }

  public String getAndroidId()
  {
    return this.androidId;
  }

  public String getAppKey()
  {
    return this.appKey;
  }

  public String getLogType()
  {
    return this.logType;
  }

  public String getPositionName()
  {
    return this.positionName;
  }

  public long getResponseId()
  {
    return this.responseId;
  }

  public long getTime()
  {
    return this.time;
  }

  public long getTrackId()
  {
    return this.trackId;
  }

  public String getVersion()
  {
    return this.version;
  }

  public int hashCode()
  {
    return 31 + (int)(this.responseId ^ this.responseId >>> 32);
  }

  public void setAdItemId(long paramLong)
  {
    this.adItemId = paramLong;
  }

  public void setAdSource(int paramInt)
  {
    this.adSource = paramInt;
  }

  public void setAndroidId(String paramString)
  {
    this.androidId = paramString;
  }

  public void setAppKey(String paramString)
  {
    this.appKey = paramString;
  }

  public void setLogType(String paramString)
  {
    this.logType = paramString;
  }

  public void setPositionName(String paramString)
  {
    this.positionName = paramString;
  }

  public void setResponseId(long paramLong)
  {
    this.responseId = paramLong;
  }

  public void setTime(long paramLong)
  {
    this.time = paramLong;
  }

  public void setTrackId(long paramLong)
  {
    this.trackId = paramLong;
  }

  public void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public String toJsonString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\"logType\":\"").append(this.logType).append("\",\"time\":").append(this.time).append(",\"trackId\":").append(this.trackId).append(",\"androidId\":\"").append(this.androidId).append("\",\"adItemId\":").append(this.adItemId).append(",\"responseId\":").append(this.responseId).append(",\"adSource\":").append(this.adSource).append(",\"positionName\":\"").append(this.positionName).append("\",\"version\":\"").append(this.version).append("\",\"appKey\":\"").append(this.appKey).append("\"}");
    Log.e("toJsonString", localStringBuilder.toString());
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsRecord
 * JD-Core Version:    0.6.0
 */