package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;
import com.squareup.a.b;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.i;

final class E
  implements k<ListView>
{
  E(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    i.a().c(new BookShelfRefreshEvent());
    HomeShelfFragment.e(this.a);
    com.clilystudio.netbook.adapter.HomeShelfAdapter.a = true;
    new Handler().postDelayed(new F(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.E
 * JD-Core Version:    0.6.0
 */