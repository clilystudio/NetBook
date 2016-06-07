package com.ximalaya.ting.android.opensdk.model.track;

import com.google.gson.annotations.SerializedName;

public class SearchTrackList extends CommonTrackList
{

  @SerializedName("category_id")
  private int categoryId;

  @SerializedName("tag_name")
  private String tagName;

  public int getCategoryId()
  {
    return this.categoryId;
  }

  public String getTagName()
  {
    return this.tagName;
  }

  public void setCategoryId(int paramInt)
  {
    this.categoryId = paramInt;
  }

  public void setTagName(String paramString)
  {
    this.tagName = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.SearchTrackList
 * JD-Core Version:    0.6.0
 */