package com.squareup.okhttp.internal;

import com.squareup.okhttp.L;
import java.util.LinkedHashSet;
import java.util.Set;

public final class k
{
  private final Set<L> a = new LinkedHashSet();

  public final void a(L paramL)
  {
    monitorenter;
    try
    {
      this.a.add(paramL);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void b(L paramL)
  {
    monitorenter;
    try
    {
      this.a.remove(paramL);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final boolean c(L paramL)
  {
    monitorenter;
    try
    {
      boolean bool = this.a.contains(paramL);
      monitorexit;
      return bool;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.k
 * JD-Core Version:    0.6.0
 */