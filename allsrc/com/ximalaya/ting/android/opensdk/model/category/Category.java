package com.ximalaya.ting.android.opensdk.model.category;

import com.google.gson.annotations.SerializedName;

public class Category
{

  @SerializedName("category_name")
  private String categoryName;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;
  private long id;
  private String kind;

  public String getCategoryName()
  {
    return this.categoryName;
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

  public long getId()
  {
    return this.id;
  }

  public String getKind()
  {
    return this.kind;
  }

  public void setCategoryName(String paramString)
  {
    this.categoryName = paramString;
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

  public void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public void setKind(String paramString)
  {
    this.kind = paramString;
  }

  public String toString()
  {
    return "Category [id=" + this.id + ", kind=" + this.kind + ", categoryName=" + this.categoryName + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.category.Category
 * JD-Core Version:    0.6.0
 */