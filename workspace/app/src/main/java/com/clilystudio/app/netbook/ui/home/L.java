package com.clilystudio.app.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class L
  implements k<ListView>
{
  L(HomeTopicFragment paramHomeTopicFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    new Handler().postDelayed(new M(this), 1000L);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.L
 * JD-Core Version:    0.6.2
 */