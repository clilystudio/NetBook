package com.ximalaya.ting.android.opensdk.model.album;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class HumanRecommendAlbum
{

  @SerializedName("albums")
  private List<Album> albumList;

  @SerializedName("category_id")
  private long categoryId;

  @SerializedName("category_name")
  private String categoryName;

  @SerializedName("human_recommend_category_name")
  private String humanRecommendCategoryName;

  public List<Album> getAlbumList()
  {
    return this.albumList;
  }

  public long getCategoryId()
  {
    return this.categoryId;
  }

  public String getCategoryName()
  {
    return this.categoryName;
  }

  public String getHumanRecommendCategoryName()
  {
    return this.humanRecommendCategoryName;
  }

  public void setAlbumList(List<Album> paramList)
  {
    this.albumList = paramList;
  }

  public void setCategoryId(long paramLong)
  {
    this.categoryId = paramLong;
  }

  public void setCategoryName(String paramString)
  {
    this.categoryName = paramString;
  }

  public void setHumanRecommendCategoryName(String paramString)
  {
    this.humanRecommendCategoryName = paramString;
  }

  public String toString()
  {
    return "HumanRecommendAlbum [categoryId=" + this.categoryId + ", categoryName=" + this.categoryName + ", humanRecommendCategoryName=" + this.humanRecommendCategoryName + ", albumList=" + this.albumList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.album.HumanRecommendAlbum
 * JD-Core Version:    0.6.0
 */