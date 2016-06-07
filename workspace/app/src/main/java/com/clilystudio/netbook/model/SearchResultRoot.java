package com.clilystudio.netbook.model;

import java.util.List;

public class SearchResultRoot extends Root
{
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
 * Qualified Name:     com.clilystudio.netbook.model.SearchResultRoot
 * JD-Core Version:    0.6.0
 */