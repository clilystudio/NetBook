package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;

public class RecommendTrack
{

  @SerializedName("human_recommend_real_title")
  private String realTitle;

  @SerializedName("human_recommend_track_title")
  private String tackTitle;

  @SerializedName("human_recommend_track_id")
  private long trackId;
  private long uid;

  public String getRealTitle()
  {
    return this.realTitle;
  }

  public String getTackTitle()
  {
    return this.tackTitle;
  }

  public long getTrackId()
  {
    return this.trackId;
  }

  public long getUid()
  {
    return this.uid;
  }

  public void setRealTitle(String paramString)
  {
    this.realTitle = paramString;
  }

  public void setTackTitle(String paramString)
  {
    this.tackTitle = paramString;
  }

  public void setTrackId(long paramLong)
  {
    this.trackId = paramLong;
  }

  public void setUid(long paramLong)
  {
    this.uid = paramLong;
  }

  public String toString()
  {
    return "RecommendTrack [uid=" + this.uid + ", trackId=" + this.trackId + ", realTitle=" + this.realTitle + ", tackTitle=" + this.tackTitle + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.RecommendTrack
 * JD-Core Version:    0.6.0
 */