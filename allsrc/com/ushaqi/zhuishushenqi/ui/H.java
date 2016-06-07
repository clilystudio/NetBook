package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookSummary;
import com.ushaqi.zhuishushenqi.model.SearchResultRoot;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.H
 * JD-Core Version:    0.6.0
 */