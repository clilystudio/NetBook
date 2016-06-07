package com.xiaomi.mistatistic.sdk.a;

import android.os.Handler;
import java.util.ArrayList;

public final class g
{
  private static g a = null;
  private static g b = null;
  private volatile Handler c;
  private ArrayList d = new ArrayList();

  private g(String paramString)
  {
    new k(this, paramString).start();
  }

  public static g a()
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new g("local_job_dispatcher");
      g localg = a;
      return localg;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static g b()
  {
    monitorenter;
    try
    {
      if (b == null)
        b = new g("remote_job_dispatcher");
      g localg = b;
      return localg;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(j paramj)
  {
    synchronized (this.d)
    {
      if (this.c == null)
      {
        this.d.add(paramj);
        return;
      }
      this.c.post(new h(this, paramj));
    }
  }

  public final void a(j paramj, long paramLong)
  {
    if (this.c != null)
      this.c.postDelayed(new i(this, paramj), paramLong);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.g
 * JD-Core Version:    0.6.0
 */