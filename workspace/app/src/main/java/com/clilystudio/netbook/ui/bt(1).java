package com.clilystudio.netbook.ui;

import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class bt
  implements Runnable
{
  bt(bs parambs)
  {
  }

  public final void run()
  {
    if (NotifFragment.c(this.a.a) == null)
    {
      NotifFragment.a(this.a.a, false);
      NotifFragment.d(this.a.a).n();
      return;
    }
    this.a.a.c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bt
 * JD-Core Version:    0.6.0
 */