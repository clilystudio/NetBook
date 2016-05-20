package com.clilystudio.app.netbook.model;

import java.util.Date;

public class BookHelpSummary
{
  private String _id;
  private Author author;
  private int commentCount;
  private Date created;
  private String state;
  private String title;

  public Author getAuthor()
  {
    return this.author;
  }

  public int getCommentCount()
  {
    return this.commentCount;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public String getState()
  {
    return this.state;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setCommentCount(int paramInt)
  {
    this.commentCount = paramInt;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setState(String paramString)
  {
    this.state = paramString;
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
 * Qualified Name:     com.clilystudio.app.netbook.model.BookHelpSummary
 * JD-Core Version:    0.6.2
 */