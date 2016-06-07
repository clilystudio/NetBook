package com.ushaqi.zhuishushenqi.model;

public class BookTagRoot
{
  private BookSummary[] books;
  private boolean ok;

  public BookSummary[] getBooks()
  {
    return this.books;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBooks(BookSummary[] paramArrayOfBookSummary)
  {
    this.books = paramArrayOfBookSummary;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.BookTagRoot
 * JD-Core Version:    0.6.0
 */