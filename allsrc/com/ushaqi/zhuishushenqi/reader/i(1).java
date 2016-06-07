package com.ushaqi.zhuishushenqi.reader;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.adapter.C;
import com.ushaqi.zhuishushenqi.model.TocDownloadSummary;

final class i
  implements AdapterView.OnItemLongClickListener
{
  i(LocalChapterListActivity paramLocalChapterListActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - LocalChapterListActivity.a(this.a).getHeaderViewsCount();
    if (i >= 0)
    {
      TocDownloadSummary localTocDownloadSummary = (TocDownloadSummary)LocalChapterListActivity.b(this.a).getItem(i);
      if (localTocDownloadSummary != null)
        LocalChapterListActivity.a(this.a, localTocDownloadSummary.getTocId());
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.i
 * JD-Core Version:    0.6.0
 */