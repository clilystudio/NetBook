package com.clilystudio.app.netbook.ui.ugcbook;

import android.os.Handler;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.SearchPromRoot;
import java.util.List;

class A extends com.clilystudio.app.netbook.a.e<String, Void, List<BookSummary>>
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
    com.clilystudio.app.netbook.util.e.a(this.a, 2131034478);
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    UGCGuideAddBookActivity.c(this.a, false);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.A
 * JD-Core Version:    0.6.2
 */