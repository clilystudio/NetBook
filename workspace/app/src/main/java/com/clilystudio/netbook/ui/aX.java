package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aX extends e<String, Void, List<BookSummary>>
{
  private aX(BookTagListActivity paramBookTagListActivity)
  {
  }

  private List<BookSummary> a()
  {
    try
    {
      BookTagRoot localBookTagRoot = b.b().c(BookTagListActivity.b(this.a), 0, 50);
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aX
 * JD-Core Version:    0.6.0
 */