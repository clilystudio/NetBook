package com.clilystudio.app.netbook.ui.ugcbook;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class b
  implements k<ListView>
{
  b(AbsUGCListFragment paramAbsUGCListFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    this.a.j.setVisibility(8);
    this.a.f.postDelayed(new c(this), 1000L);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.b
 * JD-Core Version:    0.6.2
 */