package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;

public class BookRankDetail
{
  private String _id;
  private String author;
  private String cat;
  private String cover;
  private int latelyFollower;
  private String retentionRatio;
  private String shortIntro;
  private String title;

  public String getAuthor()
  {
    return this.author;
  }

  public String getCat()
  {
    return this.cat;
  }

  public String getCover()
  {
    return this.cover;
  }

  public String getFullCover()
  {
    return ApiService.a + this.cover + "-covers";
  }

  public int getLatelyFollower()
  {
    return this.latelyFollower;
  }

  public String getRetentionRatio()
  {
    return this.retentionRatio;
  }

  public String getShortIntro()
  {
    return this.shortIntro;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }

  public void setCat(String paramString)
  {
    this.cat = paramString;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setLatelyFollower(int paramInt)
  {
    this.latelyFollower = paramInt;
  }

  public void setRetentionRatio(String paramString)
  {
    this.retentionRatio = paramString;
  }

  public void setShortIntro(String paramString)
  {
    this.shortIntro = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookRankDetail
 * JD-Core Version:    0.6.2
 */