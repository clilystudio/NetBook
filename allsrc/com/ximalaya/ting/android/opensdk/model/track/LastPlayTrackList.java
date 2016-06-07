package com.ximalaya.ting.android.opensdk.model.track;

import com.google.gson.annotations.SerializedName;

public class LastPlayTrackList extends CommonTrackList
{

  @SerializedName("category_id")
  private int categoryId;

  @SerializedName("current_page")
  private int pageid;

  @SerializedName("tag_name")
  private String tagname;

  public int getCategoryId()
  {
    return this.categoryId;
  }

  public int getPageid()
  {
    return this.pageid;
  }

  public String getTagname()
  {
    return this.tagname;
  }

  public void setCategoryId(int paramInt)
  {
    this.categoryId = paramInt;
  }

  public void setPageid(int paramInt)
  {
    this.pageid = paramInt;
  }

  public void setTagname(String paramString)
  {
    this.tagname = paramString;
  }

  public String toString()
  {
    return "LastPlayTrackList [categoryId=" + this.categoryId + ", tagname=" + this.tagname + ", pageid=" + this.pageid + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.track.LastPlayTrackList
 * JD-Core Version:    0.6.0
 */