package com.clilystudio.app.netbook.model;

import java.util.Date;

public class ReviewSummary
{
  private String _id;
  private ReviewBook book;
  private Date created;
  private ReviewHelpful helpful;
  private String state;
  private String title;

  public ReviewBook getBook()
  {
    if (this.book == null)
    {
      this.book = new ReviewBook();
      this.book.set_id("");
      this.book.setTitle("该书不存在");
      this.book.setCover("");
      this.book.setType("");
    }
    return this.book;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public ReviewHelpful getHelpful()
  {
    return this.helpful;
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

  public void setBook(ReviewBook paramReviewBook)
  {
    this.book = paramReviewBook;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setHelpful(ReviewHelpful paramReviewHelpful)
  {
    this.helpful = paramReviewHelpful;
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
 * Qualified Name:     com.clilystudio.app.netbook.model.ReviewSummary
 * JD-Core Version:    0.6.2
 */