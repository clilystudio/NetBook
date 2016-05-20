package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;
import java.util.Date;

public class MysteryBook
{
  private String _id;
  private String author;
  private String cover;
  private String lastChapter;
  private String title;
  private Date updated;

  public String getAuthor()
  {
    return this.author;
  }

  public String getCover()
  {
    return this.cover;
  }

  public String getFullCover()
  {
    return ApiService.a + this.cover;
  }

  public String getLastChapter()
  {
    return this.lastChapter;
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

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setLastChapter(String paramString)
  {
    this.lastChapter = paramString;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.MysteryBook
 * JD-Core Version:    0.6.2
 */