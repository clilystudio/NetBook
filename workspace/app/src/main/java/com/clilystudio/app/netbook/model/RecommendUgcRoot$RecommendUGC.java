package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;

public class RecommendUgcRoot$RecommendUGC
{
  private String author;
  private int bookCount;
  private int collectorCount;
  private String cover;
  private String desc;
  private String id;
  private String title;

  public String getAuthor()
  {
    return this.author;
  }

  public int getBookCount()
  {
    return this.bookCount;
  }

  public int getCollectorCount()
  {
    return this.collectorCount;
  }

  public String getCover()
  {
    return this.cover;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public String getFullCover()
  {
    return ApiService.a + this.cover + "-covers";
  }

  public String getId()
  {
    return this.id;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }

  public void setBookCount(int paramInt)
  {
    this.bookCount = paramInt;
  }

  public void setCollectorCount(int paramInt)
  {
    this.collectorCount = paramInt;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.RecommendUgcRoot.RecommendUGC
 * JD-Core Version:    0.6.2
 */