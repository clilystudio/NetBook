package com.ximalaya.ting.android.opensdk.model.word;

import com.google.gson.annotations.SerializedName;

public class AlbumResult
{

  @SerializedName("id")
  private long albumId;

  @SerializedName("album_title")
  private String albumTitle;

  @SerializedName("category_name")
  private String categoryName;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  @SerializedName("highlight_album_title")
  private String hightlightAlbumTitle;

  public long getAlbumId()
  {
    return this.albumId;
  }

  public String getAlbumTitle()
  {
    return this.albumTitle;
  }

  public String getCategoryName()
  {
    return this.categoryName;
  }

  public String getCoverUrlSmall()
  {
    return this.coverUrlSmall;
  }

  public String getHightlightAlbumTitle()
  {
    return this.hightlightAlbumTitle;
  }

  public void setAlbumId(long paramLong)
  {
    this.albumId = paramLong;
  }

  public void setAlbumTitle(String paramString)
  {
    this.albumTitle = paramString;
  }

  public void setCategoryName(String paramString)
  {
    this.categoryName = paramString;
  }

  public void setCoverUrlSmall(String paramString)
  {
    this.coverUrlSmall = paramString;
  }

  public void setHightlightAlbumTitle(String paramString)
  {
    this.hightlightAlbumTitle = paramString;
  }

  public String toString()
  {
    return "AlbumResult [albumId=" + this.albumId + ", albumTitle=" + this.albumTitle + ", hightlightAlbumTitle=" + this.hightlightAlbumTitle + ", categoryName=" + this.categoryName + ", coverUrlSmall=" + this.coverUrlSmall + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.word.AlbumResult
 * JD-Core Version:    0.6.0
 */