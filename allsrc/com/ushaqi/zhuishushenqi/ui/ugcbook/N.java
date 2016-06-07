package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookSummary;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.N
 * JD-Core Version:    0.6.0
 */