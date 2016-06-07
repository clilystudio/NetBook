package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;

public class LastUpTrack
{

  @SerializedName("created_at")
  private long createdAt;

  @SerializedName("duration")
  private long duration;

  @SerializedName("track_id")
  private long trackId;

  @SerializedName("track_title")
  private String trackTitle;

  @SerializedName("updated_at")
  private long updatedAt;

  public long getCreatedAt()
  {
    return this.createdAt;
  }

  public long getDuration()
  {
    return this.duration;
  }

  public long getTrackId()
  {
    return this.trackId;
  }

  public String getTrackTitle()
  {
    return this.trackTitle;
  }

  public long getUpdatedAt()
  {
    return this.updatedAt;
  }

  public void setCreatedAt(long paramLong)
  {
    this.createdAt = paramLong;
  }

  public void setDuration(long paramLong)
  {
    this.duration = paramLong;
  }

  public void setTrackId(long paramLong)
  {
    this.trackId = paramLong;
  }

  public void setTrackTitle(String paramString)
  {
    this.trackTitle = paramString;
  }

  public void setUpdatedAt(long paramLong)
  {
    this.updatedAt = paramLong;
  }

  public String toString()
  {
    return "LastUpTrack [trackId=" + this.trackId + ", trackTitle=" + this.trackTitle + ", duration=" + this.duration + ", createdAt=" + this.createdAt + ", updatedAt=" + this.updatedAt + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.LastUpTrack
 * JD-Core Version:    0.6.0
 */