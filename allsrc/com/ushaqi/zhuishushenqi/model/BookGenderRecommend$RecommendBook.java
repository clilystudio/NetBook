package com.ushaqi.zhuishushenqi.model;

import java.util.Date;

public class BookGenderRecommend$RecommendBook
{
  private String _id;
  private String author;
  private int chaptersCount;
  private String cover;
  private String lastChapter;
  private int latelyFollower;
  private double retentionRatio;
  private String shortIntro;
  private String title;
  private Date updated;

  public BookGenderRecommend$RecommendBook(BookGenderRecommend paramBookGenderRecommend)
  {
  }

  public String getAuthor()
  {
    return this.author;
  }

  public int getChaptersCount()
  {
    return this.chaptersCount;
  }

  public String getCover()
  {
    return this.cover;
  }

  public String getLastChapter()
  {
    return this.lastChapter;
  }

  public int getLatelyFollower()
  {
    return this.latelyFollower;
  }

  public double getRetentionRatio()
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

  public Date getUpdated()
  {
    return this.updated;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }

  public void setChaptersCount(int paramInt)
  {
    this.chaptersCount = paramInt;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setLastChapter(String paramString)
  {
    this.lastChapter = paramString;
  }

  public void setLatelyFollower(int paramInt)
  {
    this.latelyFollower = paramInt;
  }

  public void setRetentionRatio(double paramDouble)
  {
    this.retentionRatio = paramDouble;
  }

  public void setShortIntro(String paramString)
  {
    this.shortIntro = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setUpdated(Date paramDate)
  {
    this.updated = paramDate;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.BookGenderRecommend.RecommendBook
 * JD-Core Version:    0.6.0
 */