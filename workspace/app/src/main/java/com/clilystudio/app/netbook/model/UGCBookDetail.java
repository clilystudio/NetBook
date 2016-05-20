package com.clilystudio.app.netbook.model;

import java.util.Date;

public class UGCBookDetail
{
  Author author;
  UGCBookDetail.UGCBookContainer[] books;
  String collectorCount;
  Date created;
  String desc;
  String shareLink;
  String title;

  public Author getAuthor()
  {
    return this.author;
  }

  public UGCBookDetail.UGCBookContainer[] getBooks()
  {
    return this.books;
  }

  public String getCollectorCount()
  {
    return this.collectorCount;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public String getShareLink()
  {
    return this.shareLink;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setAuthor(Author paramAuthor)
  {
    this.author = paramAuthor;
  }

  public void setBooks(UGCBookDetail.UGCBookContainer[] paramArrayOfUGCBookContainer)
  {
    this.books = paramArrayOfUGCBookContainer;
  }

  public void setCollectorCount(String paramString)
  {
    this.collectorCount = paramString;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setShareLink(String paramString)
  {
    this.shareLink = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UGCBookDetail
 * JD-Core Version:    0.6.2
 */