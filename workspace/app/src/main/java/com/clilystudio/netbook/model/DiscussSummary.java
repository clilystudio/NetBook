package com.clilystudio.netbook.model;

import java.util.Date;

public class DiscussSummary
{
  private String _id;
  private Author author;
  private int commentCount;
  private Date created;
  public int likeCount;
  private String state;
  private String title;
  private String type;
  private Date updated;
  private int voteCount;

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

  public String getType()
  {
    return this.type;
  }

  public Date getUpdated()
  {
    return this.updated;
  }

  public int getVoteCount()
  {
    return this.voteCount;
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

  public void setType(String paramString)
  {
    this.type = paramString;
  }

  public void setUpdated(Date paramDate)
  {
    this.updated = paramDate;
  }

  public void setVoteCount(int paramInt)
  {
    this.voteCount = paramInt;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.DiscussSummary
 * JD-Core Version:    0.6.0
 */