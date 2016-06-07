package com.clilystudio.netbook.ui;

import android.annotation.TargetApi;
import android.widget.ListView;
import com.clilystudio.netbook.event.k;

final class aN
  implements Runnable
{
  aN(BookRankListActivity paramBookRankListActivity, k paramk)
  {
  }

  @TargetApi(11)
  public final void run()
  {
    BookRankListActivity.b(this.b).smoothScrollToPositionFromTop(this.a.a(), 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aN
 * JD-Core Version:    0.6.0
 */