package com.ushaqi.zhuishushenqi.ui.ugcbook;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.b
 * JD-Core Version:    0.6.0
 */