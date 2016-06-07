package com.ximalaya.ting.android.opensdk.model.track;

import com.google.gson.annotations.SerializedName;

public class TrackList extends CommonTrackList
{

  @SerializedName("album_id")
  private int albumId;

  @SerializedName("album_title")
  private String albumTitle;

  @SerializedName("category_id")
  private int categoryId;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  public int getAlbumId()
  {
    return this.albumId;
  }

  public String getAlbumTitle()
  {
    return this.albumTitle;
  }

  public int getCategoryId()
  {
    return this.categoryId;
  }

  public String getCoverUrlLarge()
  {
    return this.coverUrlLarge;
  }

  public String getCoverUrlMiddle()
  {
    return this.coverUrlMiddle;
  }

  public String getCoverUrlSmall()
  {
    return this.coverUrlSmall;
  }

  public void setAlbumId(int paramInt)
  {
    this.albumId = paramInt;
  }

  public void setAlbumTitle(String paramString)
  {
    this.albumTitle = paramString;
  }

  public void setCategoryId(int paramInt)
  {
    this.categoryId = paramInt;
  }

  public void setCoverUrlLarge(String paramString)
  {
    this.coverUrlLarge = paramString;
  }

  public void setCoverUrlMiddle(String paramString)
  {
    this.coverUrlMiddle = paramString;
  }

  public void setCoverUrlSmall(String paramString)
  {
    this.coverUrlSmall = paramString;
  }

  public String toString()
  {
    return "TrackList [albumId=" + this.albumId + ", albumTitle=" + this.albumTitle + ", categoryId=" + this.categoryId + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.TrackList
 * JD-Core Version:    0.6.0
 */