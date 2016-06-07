package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class BookRankSummary
{
  private String _id;
  private boolean collapse;
  private String cover;
  private String monthRank;
  private String title;
  private String totalRank;

  public String getCover()
  {
    return this.cover;
  }

  public String getFullCover()
  {
    return ApiService.a + this.cover;
  }

  public String[] getIds()
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = this._id;
    arrayOfString[1] = this.monthRank;
    arrayOfString[2] = this.totalRank;
    return arrayOfString;
  }

  public String getMonthRank()
  {
    return this.monthRank;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getTotalRank()
  {
    return this.totalRank;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isCollapse()
  {
    return this.collapse;
  }

  public void setCollapse(boolean paramBoolean)
  {
    this.collapse = paramBoolean;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setMonthRank(String paramString)
  {
    this.monthRank = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setTotalRank(String paramString)
  {
    this.totalRank = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.BookRankSummary
 * JD-Core Version:    0.6.0
 */