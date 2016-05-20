package com.clilystudio.app.netbook.reader;

import android.support.design.widget.am;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.squareup.a.b;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.v;
import com.clilystudio.app.netbook.model.TocSummary;

final class bC
  implements AdapterView.OnItemClickListener
{
  bC(ReaderMixActivity paramReaderMixActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - ReaderMixActivity.c(this.a).getHeaderViewsCount();
    TocSummary localTocSummary = (TocSummary)ReaderMixActivity.d(this.a).getItem(i);
    if (!localTocSummary.getHost().equals(ReaderMixActivity.a(this.a)))
    {
      MyApplication.a().c(ReaderMixActivity.b(this.a));
      if (!"vip.zhuishushenqi.com".equals(ReaderMixActivity.a(this.a)))
        break label123;
      am.c(ReaderMixActivity.b(this.a), 9);
    }
    while (true)
    {
      i.a().c(new v(1));
      ReaderMixActivity.a(this.a, localTocSummary.get_id());
      this.a.finish();
      return;
      label123: am.c(ReaderMixActivity.b(this.a), 10);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bC
 * JD-Core Version:    0.6.2
 */