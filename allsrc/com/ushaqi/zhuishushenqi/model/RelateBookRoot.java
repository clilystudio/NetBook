package com.ushaqi.zhuishushenqi.model;

import java.util.List;

public class RelateBookRoot extends Root
{
  private static final long serialVersionUID = 692271766036187202L;
  private List<BookSummary> books;

  public List<BookSummary> getBooks()
  {
    return this.books;
  }

  public void setBooks(List<BookSummary> paramList)
  {
    this.books = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.RelateBookRoot
 * JD-Core Version:    0.6.0
 */