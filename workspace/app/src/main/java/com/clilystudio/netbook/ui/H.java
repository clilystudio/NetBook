package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchResultRoot;
import java.util.List;

final class H extends e<String, Void, List<BookSummary>>
{
  private H(AuthorBooksActivity paramAuthorBooksActivity)
  {
  }

  private List<BookSummary> a(String[] paramArrayOfString)
  {
    try
    {
      SearchResultRoot localSearchResultRoot = b.b().o(paramArrayOfString[0]);
      if (localSearchResultRoot != null)
      {
        List localList = localSearchResultRoot.getBooks();
        return localList;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.H
 * JD-Core Version:    0.6.0
 */