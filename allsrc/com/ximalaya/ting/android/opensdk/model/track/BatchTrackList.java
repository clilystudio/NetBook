package com.ximalaya.ting.android.opensdk.model.track;

import com.google.gson.annotations.SerializedName;

public class BatchTrackList extends CommonTrackList
{

  @SerializedName("category_id")
  private int categoryId;

  @SerializedName("current_page")
  private int currentPage;

  @SerializedName("tag_name")
  private String tagName;

  public int getCategoryId()
  {
    return this.categoryId;
  }

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public String getTagName()
  {
    return this.tagName;
  }

  public void setCategoryId(int paramInt)
  {
    this.categoryId = paramInt;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setTagName(String paramString)
  {
    this.tagName = paramString;
  }

  public String toString()
  {
    return "BatchTrackList [currentPage=" + this.currentPage + ", categoryId=" + this.categoryId + ", tagName=" + this.tagName + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.BatchTrackList
 * JD-Core Version:    0.6.0
 */