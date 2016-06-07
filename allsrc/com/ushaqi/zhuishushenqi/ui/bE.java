package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.adapter.E;
import com.ushaqi.zhuishushenqi.model.BookSummary;
import com.ushaqi.zhuishushenqi.widget.j;

final class bE
  implements AdapterView.OnItemClickListener
{
  bE(SearchActivity paramSearchActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - SearchActivity.a(this.a).getHeaderViewsCount();
    BookSummary localBookSummary;
    if ((i >= 0) && (i < SearchActivity.b(this.a).getCount()))
    {
      localBookSummary = (BookSummary)SearchActivity.b(this.a).getItem(i);
      if (localBookSummary != null)
      {
        if (localBookSummary.getPromLink() != null)
          break label84;
        this.a.startActivity(BookInfoActivity.a(this.a, localBookSummary.getId()));
      }
    }
    return;
    label84: new j(this.a, localBookSummary.getPromLink()).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bE
 * JD-Core Version:    0.6.0
 */