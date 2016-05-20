package com.clilystudio.app.netbook.model;

import java.util.Date;

public class RemoteBookShelf$Book
{
  private String _id;
  private String author;
  private int chaptersCount;
  private String cover;
  private boolean hasCp;
  private String lastChapter;
  private String title;
  private Date updated;

  public RemoteBookShelf$Book(RemoteBookShelf paramRemoteBookShelf)
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

  public String getId()
  {
    return this._id;
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

  public boolean isHasCp()
  {
    return this.hasCp;
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

  public void setHasCp(boolean paramBoolean)
  {
    this.hasCp = paramBoolean;
  }

  public void setId(String paramString)
  {
    this._id = paramString;
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
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.RemoteBookShelf.Book
 * JD-Core Version:    0.6.2
 */