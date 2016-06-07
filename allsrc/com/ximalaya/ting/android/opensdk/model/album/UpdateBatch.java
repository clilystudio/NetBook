package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;

public class UpdateBatch
{

  @SerializedName("id")
  private long albumId;

  @SerializedName("last_up_track_cover_path")
  private String coverUrl;

  @SerializedName("last_up_track_id")
  private long trackId;

  @SerializedName("last_up_track_title")
  private String trackTitle;

  @SerializedName("last_up_track_at")
  private long updateAt;

  public long getAlbumId()
  {
    return this.albumId;
  }

  public String getCoverUrl()
  {
    return this.coverUrl;
  }

  public long getTrackId()
  {
    return this.trackId;
  }

  public String getTrackTitle()
  {
    return this.trackTitle;
  }

  public long getUpdateAt()
  {
    return this.updateAt;
  }

  public void setAlbumId(long paramLong)
  {
    this.albumId = paramLong;
  }

  public void setCoverUrl(String paramString)
  {
    this.coverUrl = paramString;
  }

  public void setTrackId(long paramLong)
  {
    this.trackId = paramLong;
  }

  public void setTrackTitle(String paramString)
  {
    this.trackTitle = paramString;
  }

  public void setUpdateAt(long paramLong)
  {
    this.updateAt = paramLong;
  }

  public String toString()
  {
    return "UpdateBatch [albumId=" + this.albumId + ", trackId=" + this.trackId + ", trackTitle=" + this.trackTitle + ", coverUrl=" + this.coverUrl + ", updateAt=" + this.updateAt + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.UpdateBatch
 * JD-Core Version:    0.6.0
 */