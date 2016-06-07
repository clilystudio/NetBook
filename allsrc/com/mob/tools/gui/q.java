package com.mob.tools.gui;

final class q
  implements Runnable
{
  q(PullToRefreshView paramPullToRefreshView)
  {
  }

  public final void run()
  {
    PullToRefreshView.a(this.a);
    PullToRefreshView.b(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.q
 * JD-Core Version:    0.6.0
 */