package com.handmark.pulltorefresh.library;

import android.view.animation.Interpolator;
import com.handmark.pulltorefresh.library.internal.e;

final class m
  implements Runnable
{
  private final Interpolator a;
  private final int b;
  private final int c;
  private final long d;
  private l e;
  private boolean f = true;
  private long g = -1L;
  private int h = -1;

  public m(PullToRefreshBase paramPullToRefreshBase, int paramInt1, int paramInt2, long paramLong, l paraml)
  {
    this.c = paramInt1;
    this.b = paramInt2;
    this.a = PullToRefreshBase.d(paramPullToRefreshBase);
    this.d = paramLong;
    this.e = paraml;
  }

  public final void a()
  {
    this.f = false;
    this.i.removeCallbacks(this);
  }

  public final void run()
  {
    if (this.g == -1L)
    {
      this.g = System.currentTimeMillis();
      if ((!this.f) || (this.b == this.h))
        break label126;
      e.a(this.i, this);
    }
    label126: 
    do
    {
      return;
      long l = Math.max(Math.min(1000L * (System.currentTimeMillis() - this.g) / this.d, 1000L), 0L);
      int j = Math.round((this.c - this.b) * this.a.getInterpolation((float)l / 1000.0F));
      this.h = (this.c - j);
      this.i.a(this.h);
      break;
    }
    while (this.e == null);
    this.e.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.m
 * JD-Core Version:    0.6.0
 */