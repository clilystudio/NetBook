package com.clilystudio.app.netbook.reader;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.app.netbook.adapter.B;
import com.clilystudio.app.netbook.model.TocSummary;

final class bV
  implements AdapterView.OnItemClickListener
{
  bV(ReaderResourceFragment paramReaderResourceFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - ReaderResourceFragment.b(this.a).getHeaderViewsCount();
    if (i >= 0)
    {
      TocSummary localTocSummary = (TocSummary)ReaderResourceFragment.c(this.a).getItem(i);
      Intent localIntent = ReaderActivity.a(this.a.getActivity(), ReaderResourceFragment.a(this.a), ReaderResourceFragment.d(this.a), localTocSummary.get_id(), null, true);
      this.a.startActivity(localIntent);
      ReaderResourceFragment.c(this.a).a(i);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bV
 * JD-Core Version:    0.6.2
 */