package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UGCNewCollection
  implements Serializable
{
  List<BookSummary> books = new ArrayList();
  private String desc;
  private String title;

  public void addBook(BookSummary paramBookSummary)
  {
    String str = paramBookSummary.getId();
    Iterator localIterator = this.books.iterator();
    while (localIterator.hasNext())
      if (str.equals(((BookSummary)localIterator.next()).getId()))
        return;
    this.books.add(paramBookSummary);
  }

  public List<BookSummary> getBooks()
  {
    return this.books;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setBooks(List<BookSummary> paramList)
  {
    this.books = paramList;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.UGCNewCollection
 * JD-Core Version:    0.6.0
 */