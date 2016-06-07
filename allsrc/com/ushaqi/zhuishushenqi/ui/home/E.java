package com.ushaqi.zhuishushenqi.ui.home;

import android.os.Handler;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.event.BookShelfRefreshEvent;
import com.ushaqi.zhuishushenqi.event.i;

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
    com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter.a = true;
    new Handler().postDelayed(new F(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.E
 * JD-Core Version:    0.6.0
 */