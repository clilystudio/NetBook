package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.BookTagRoot;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aW extends e<String, Void, List<BookSummary>>
{
  private aW(BookTagListActivity paramBookTagListActivity)
  {
  }

  private List<BookSummary> a()
  {
    try
    {
      BookTagRoot localBookTagRoot = b.b().c(BookTagListActivity.b(this.a), BookTagListActivity.a(this.a).size(), 50);
      if ((localBookTagRoot != null) && (localBookTagRoot.getBooks() != null))
      {
        List localList = Arrays.asList(localBookTagRoot.getBooks());
        return localList;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aW
 * JD-Core Version:    0.6.2
 */