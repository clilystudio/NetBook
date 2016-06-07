package com.ximalaya.ting.android.opensdk.model.category;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;

public class HumanRecommendCategory extends XimalayaResponse
{

  @SerializedName("id")
  private long categoryId;

  @SerializedName("category_name")
  private String categoryName;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_middle")
  private String coverUrlMiddle;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  @SerializedName("order_num")
  private int orderNum;

  public long getCategoryId()
  {
    return this.categoryId;
  }

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

  public int getOrderNum()
  {
    return this.orderNum;
  }

  public void setCategoryId(long paramLong)
  {
    this.categoryId = paramLong;
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

  public void setOrderNum(int paramInt)
  {
    this.orderNum = paramInt;
  }

  public String toString()
  {
    return "HumanRecommend [categoryId=" + this.categoryId + ", categoryName=" + this.categoryName + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlMiddle=" + this.coverUrlMiddle + ", coverUrlLarge=" + this.coverUrlLarge + ", orderNum=" + this.orderNum + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.category.HumanRecommendCategory
 * JD-Core Version:    0.6.0
 */