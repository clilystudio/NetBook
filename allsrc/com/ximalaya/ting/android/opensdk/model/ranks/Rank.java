package com.ximalaya.ting.android.opensdk.model.ranks;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class Rank
{

  @SerializedName("category_id")
  private long categoryId;

  @SerializedName("cover_url")
  private String coverUrl;

  @SerializedName("rank_content_type")
  private String rankContentType;

  @SerializedName("rank_first_item_id")
  private long rankFirstItemId;

  @SerializedName("rank_first_item_title")
  private String rankFirstItemTitle;

  @SerializedName("index_rank_items")
  private List<RankItem> rankItemList;

  @SerializedName("rank_item_num")
  private int rankItemNum;

  @SerializedName("rank_key")
  private String rankKey;

  @SerializedName("rank_order_num")
  private int rankOrderNum;

  @SerializedName("rank_period")
  private int rankPeriod;

  @SerializedName("rank_period_type")
  private String rankPeriodType;

  @SerializedName("rank_sub_title")
  private String rankSubTitle;

  @SerializedName("rank_title")
  private String rankTitle;

  @SerializedName("rank_type")
  private int rankType;

  public long getCategoryId()
  {
    return this.categoryId;
  }

  public String getCoverUrl()
  {
    return this.coverUrl;
  }

  public String getRankContentType()
  {
    return this.rankContentType;
  }

  public long getRankFirstItemId()
  {
    return this.rankFirstItemId;
  }

  public String getRankFirstItemTitle()
  {
    return this.rankFirstItemTitle;
  }

  public List<RankItem> getRankItemList()
  {
    return this.rankItemList;
  }

  public int getRankItemNum()
  {
    return this.rankItemNum;
  }

  public String getRankKey()
  {
    return this.rankKey;
  }

  public int getRankOrderNum()
  {
    return this.rankOrderNum;
  }

  public int getRankPeriod()
  {
    return this.rankPeriod;
  }

  public String getRankPeriodType()
  {
    return this.rankPeriodType;
  }

  public String getRankSubTitle()
  {
    return this.rankSubTitle;
  }

  public String getRankTitle()
  {
    return this.rankTitle;
  }

  public int getRankType()
  {
    return this.rankType;
  }

  public void setCategoryId(long paramLong)
  {
    this.categoryId = paramLong;
  }

  public void setCoverUrl(String paramString)
  {
    this.coverUrl = paramString;
  }

  public void setRankContentType(String paramString)
  {
    this.rankContentType = paramString;
  }

  public void setRankFirstItemId(long paramLong)
  {
    this.rankFirstItemId = paramLong;
  }

  public void setRankFirstItemTitle(String paramString)
  {
    this.rankFirstItemTitle = paramString;
  }

  public void setRankItemList(List<RankItem> paramList)
  {
    this.rankItemList = paramList;
  }

  public void setRankItemNum(int paramInt)
  {
    this.rankItemNum = paramInt;
  }

  public void setRankKey(String paramString)
  {
    this.rankKey = paramString;
  }

  public void setRankOrderNum(int paramInt)
  {
    this.rankOrderNum = paramInt;
  }

  public void setRankPeriod(int paramInt)
  {
    this.rankPeriod = paramInt;
  }

  public void setRankPeriodType(String paramString)
  {
    this.rankPeriodType = paramString;
  }

  public void setRankSubTitle(String paramString)
  {
    this.rankSubTitle = paramString;
  }

  public void setRankTitle(String paramString)
  {
    this.rankTitle = paramString;
  }

  public void setRankType(int paramInt)
  {
    this.rankType = paramInt;
  }

  public String toString()
  {
    return "Rank [rankKey=" + this.rankKey + ", rankTitle=" + this.rankTitle + ", rankType=" + this.rankType + ", rankSubTitle=" + this.rankSubTitle + ", rankPeriod=" + this.rankPeriod + ", rankPeriodType=" + this.rankPeriodType + ", rankItemNum=" + this.rankItemNum + ", rankOrderNum=" + this.rankOrderNum + ", coverUrl=" + this.coverUrl + ", categoryId=" + this.categoryId + ", rankCOntentType=" + this.rankContentType + ", rankFirstItemId=" + this.rankFirstItemId + ", rankFirstItemTitle=" + this.rankFirstItemTitle + ", rankItemList=" + this.rankItemList + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.ranks.Rank
 * JD-Core Version:    0.6.0
 */