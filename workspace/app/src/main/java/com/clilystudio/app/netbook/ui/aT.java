package com.clilystudio.app.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.clilystudio.app.netbook.model.BookSummary;
import java.util.List;

final class aT
  implements AdapterView.OnItemClickListener
{
  aT(BookTagListActivity paramBookTagListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((paramInt >= 0) && (paramInt < BookTagListActivity.a(this.a).size()))
    {
      BookSummary localBookSummary = (BookSummary)BookTagListActivity.a(this.a).get(paramInt);
      BookTagListActivity.a(this.a, localBookSummary);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aT
 * JD-Core Version:    0.6.2
 */