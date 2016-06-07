package com.clilystudio.netbook.ui.home;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.L
 * JD-Core Version:    0.6.0
 */