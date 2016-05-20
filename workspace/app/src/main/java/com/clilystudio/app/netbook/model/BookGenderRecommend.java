package com.clilystudio.app.netbook.model;

public class BookGenderRecommend
{
  private BookGenderRecommend.RecommendBook[] books;
  private boolean ok;

  public BookGenderRecommend.RecommendBook[] getBooks()
  {
    return this.books;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBooks(BookGenderRecommend.RecommendBook[] paramArrayOfRecommendBook)
  {
    this.books = paramArrayOfRecommendBook;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookGenderRecommend
 * JD-Core Version:    0.6.2
 */