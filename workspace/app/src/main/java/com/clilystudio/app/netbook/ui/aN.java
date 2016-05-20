package com.clilystudio.app.netbook.ui;

import android.annotation.TargetApi;
import android.widget.ListView;
import com.clilystudio.app.netbook.event.k;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aN
 * JD-Core Version:    0.6.2
 */