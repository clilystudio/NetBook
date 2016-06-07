package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.adapter.E;
import com.ushaqi.zhuishushenqi.model.BookSummary;

final class G
  implements AdapterView.OnItemClickListener
{
  G(AuthorBooksActivity paramAuthorBooksActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - AuthorBooksActivity.a(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < AuthorBooksActivity.b(this.a).getCount()))
    {
      BookSummary localBookSummary = (BookSummary)AuthorBooksActivity.b(this.a).getItem(i);
      if (localBookSummary != null)
        this.a.startActivity(BookInfoActivity.a(this.a, localBookSummary.getId()));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.G
 * JD-Core Version:    0.6.0
 */