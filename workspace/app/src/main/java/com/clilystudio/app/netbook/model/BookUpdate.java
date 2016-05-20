package com.clilystudio.app.netbook.model;

import java.util.Date;

public class BookUpdate
{
  private String _id;
  private String author;
  private int chaptersCount;
  private String lastChapter;
  private Date updated;

  public String getAuthor()
  {
    return this.author;
  }

  public int getChaptersCount()
  {
    return this.chaptersCount;
  }

  public String getLastChapter()
  {
    return this.lastChapter;
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

  public void setLastChapter(String paramString)
  {
    this.lastChapter = paramString;
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
 * Qualified Name:     com.clilystudio.app.netbook.model.BookUpdate
 * JD-Core Version:    0.6.2
 */