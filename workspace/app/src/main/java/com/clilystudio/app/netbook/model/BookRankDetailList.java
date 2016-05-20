package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;
import java.util.Date;

public class BookRankDetailList
{
  private String _id;
  private BookRankDetail[] books;
  private String cover;
  private String tag;
  private String title;
  private Date updated;

  public BookRankDetail[] getBooks()
  {
    return this.books;
  }

  public String getCover()
  {
    return this.cover;
  }

  public Date getCreated()
  {
    return this.updated;
  }

  public String getFullCover()
  {
    return ApiService.a + this.cover;
  }

  public String getTag()
  {
    return this.tag;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setBooks(BookRankDetail[] paramArrayOfBookRankDetail)
  {
    this.books = paramArrayOfBookRankDetail;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setCreated(Date paramDate)
  {
    this.updated = paramDate;
  }

  public void setTag(String paramString)
  {
    this.tag = paramString;
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
 * Qualified Name:     com.clilystudio.app.netbook.model.BookRankDetailList
 * JD-Core Version:    0.6.2
 */