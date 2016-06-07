package com.ushaqi.zhuishushenqi.model;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.BookGenderRecommend
 * JD-Core Version:    0.6.0
 */