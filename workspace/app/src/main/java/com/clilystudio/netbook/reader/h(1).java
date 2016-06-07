package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.C;
import com.clilystudio.netbook.model.TocDownloadSummary;

final class h
  implements AdapterView.OnItemClickListener
{
  h(LocalChapterListActivity paramLocalChapterListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - LocalChapterListActivity.a(this.a).getHeaderViewsCount();
    if (i >= 0)
    {
      TocDownloadSummary localTocDownloadSummary = (TocDownloadSummary)LocalChapterListActivity.b(this.a).getItem(i);
      Intent localIntent = ReaderActivity.a(this.a, LocalChapterListActivity.c(this.a), LocalChapterListActivity.d(this.a), localTocDownloadSummary.getTocId(), null, true);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.h
 * JD-Core Version:    0.6.0
 */