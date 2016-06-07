package com.ushaqi.zhuishushenqi.model;

import com.ushaqi.zhuishushenqi.api.ApiService;

public class Book
{
  private String _id;
  private String author;
  private String cat;
  private String cover;
  private int latelyFollower;
  private String title;
  private int wordCount;

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
    return ApiService.a + this.cover;
  }

  public int getLatelyFollower()
  {
    return this.latelyFollower;
  }

  public String getTitle()
  {
    return this.title;
  }

  public int getWordCount()
  {
    return this.wordCount;
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

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setWordCount(int paramInt)
  {
    this.wordCount = paramInt;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Book
 * JD-Core Version:    0.6.0
 */