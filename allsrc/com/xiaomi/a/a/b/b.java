package com.xiaomi.a.a.b;

import android.os.Handler;

public final class b
{
  private c a;
  private Handler b = null;
  private volatile boolean c = false;
  private final boolean d;
  private volatile d e;

  public b()
  {
    this(false);
  }

  public b(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final void a(d paramd)
  {
    monitorenter;
    try
    {
      if (this.a == null)
      {
        this.a = new c(this);
        this.a.setDaemon(this.d);
        this.a.start();
      }
      this.a.a(paramd);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(d paramd, long paramLong)
  {
    this.b.postDelayed(new f(this, paramd), 5000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.a.a.b.b
 * JD-Core Version:    0.6.0
 */