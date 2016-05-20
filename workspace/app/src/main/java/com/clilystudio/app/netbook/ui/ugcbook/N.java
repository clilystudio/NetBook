package com.clilystudio.app.netbook.ui.ugcbook;

import android.app.Activity;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookSummary;
import java.io.IOException;
import java.util.List;

final class N extends c<String[], List<BookSummary>>
{
  public N(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, Activity paramActivity)
  {
    super(paramActivity, "正在添加书籍...");
  }

  private List<BookSummary> a(String[][] paramArrayOfString)
  {
    String[] arrayOfString = paramArrayOfString[0];
    try
    {
      List localList = b.b().a(arrayOfString);
      return localList;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.N
 * JD-Core Version:    0.6.2
 */