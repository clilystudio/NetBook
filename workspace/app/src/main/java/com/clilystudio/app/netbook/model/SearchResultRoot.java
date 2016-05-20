package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.SearchResultRoot
 * JD-Core Version:    0.6.2
 */