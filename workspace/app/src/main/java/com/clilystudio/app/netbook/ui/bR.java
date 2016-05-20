package com.clilystudio.app.netbook.ui;

import android.os.Handler;
import com.clilystudio.app.netbook.adapter.E;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.SearchPromRoot;
import com.clilystudio.app.netbook.model.SearchResultRoot;
import java.util.List;
import java.util.Map;

class bR extends com.clilystudio.app.netbook.a.e<String, Void, List<BookSummary>>
{
  private bR(SearchActivity paramSearchActivity)
  {
  }

  private List<BookSummary> a(String[] paramArrayOfString)
  {
    List localList1;
    try
    {
      if (SearchActivity.i(this.a) == 1)
      {
        localList1 = b.b().n(paramArrayOfString[0]);
        SearchPromRoot localSearchPromRoot = b.b().q(paramArrayOfString[0]);
        if ((localSearchPromRoot != null) && (localSearchPromRoot.getProm() != null))
        {
          localList1.add(0, localSearchPromRoot.getProm());
          return localList1;
        }
      }
      else
      {
        SearchResultRoot localSearchResultRoot = b.b().p(paramArrayOfString[0]);
        if (localSearchResultRoot != null)
        {
          List localList2 = localSearchResultRoot.getBooks();
          return localList2;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      localList1 = null;
    }
    return localList1;
  }

  protected void a(List<BookSummary> paramList)
  {
    super.onPostExecute(paramList);
    SearchActivity.a(this.a, true);
    if (paramList != null)
    {
      SearchActivity.b(this.a).a(paramList);
      new Handler().post(new bS(this));
      if (paramList.size() > 0)
        SearchActivity.a(this.a, 1);
      for (String str1 = "1"; ; str1 = "0")
      {
        SearchActivity localSearchActivity = this.a;
        String str2 = SearchActivity.j(this.a);
        Map localMap = com.arcsoft.hpay100.a.a.p(this.a);
        localMap.put("emp", str1);
        com.a.a.a.c(localSearchActivity, str2, localMap);
        return;
        SearchActivity.a(this.a, 3);
      }
    }
    SearchActivity.a(this.a, 2);
    com.clilystudio.app.netbook.util.e.a(this.a, 2131034478);
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    SearchActivity.a(this.a, false);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bR
 * JD-Core Version:    0.6.2
 */