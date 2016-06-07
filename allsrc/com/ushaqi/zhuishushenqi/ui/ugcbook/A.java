package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.os.Handler;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookSummary;
import com.ushaqi.zhuishushenqi.model.SearchPromRoot;
import java.util.List;

class A extends com.ushaqi.zhuishushenqi.a.e<String, Void, List<BookSummary>>
{
  private A(UGCGuideAddBookActivity paramUGCGuideAddBookActivity)
  {
  }

  private List<BookSummary> a(String[] paramArrayOfString)
  {
    try
    {
      List localList = b.b().n(paramArrayOfString[0]);
      SearchPromRoot localSearchPromRoot = b.b().q(paramArrayOfString[0]);
      if ((localSearchPromRoot != null) && (localSearchPromRoot.getProm() != null))
        localList.add(0, localSearchPromRoot.getProm());
      return localList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  protected void a(List<BookSummary> paramList)
  {
    super.onPostExecute(paramList);
    UGCGuideAddBookActivity.c(this.a, true);
    if (paramList != null)
    {
      UGCGuideAddBookActivity.c(this.a).a(paramList);
      new Handler().post(new B(this));
      if (paramList.size() > 0)
      {
        UGCGuideAddBookActivity.b(this.a, 1);
        return;
      }
      UGCGuideAddBookActivity.b(this.a, 3);
      return;
    }
    UGCGuideAddBookActivity.b(this.a, 2);
    com.ushaqi.zhuishushenqi.util.e.a(this.a, 2131034478);
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    UGCGuideAddBookActivity.c(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.A
 * JD-Core Version:    0.6.0
 */