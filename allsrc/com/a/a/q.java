package com.a.a;

public final class q
{
  private static q g = new q();
  private boolean a = false;
  private int b = 1800000;
  private int c = 2;
  private int d = 2;
  private int e = 30000;
  private int f = 1000;

  public static q a()
  {
    return g;
  }

  public final void a(int paramInt)
  {
    monitorenter;
    try
    {
      this.b = paramInt;
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

  public final void a(String paramString)
  {
    monitorenter;
    if (paramString == null);
    while (true)
    {
      monitorexit;
      return;
      try
      {
        if (paramString.equals("at_launch"))
        {
          this.c = 1;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      if (!paramString.equals("by_interval"))
        continue;
      this.c = 2;
    }
  }

  public final void b(int paramInt)
  {
    monitorenter;
    try
    {
      this.c = paramInt;
      this.d = paramInt;
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

  public final boolean b()
  {
    monitorenter;
    monitorexit;
    return false;
  }

  public final int c()
  {
    monitorenter;
    try
    {
      int i = this.b;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void c(int paramInt)
  {
    monitorenter;
    try
    {
      this.e = paramInt;
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

  public final void d()
  {
    monitorenter;
    try
    {
      this.c = this.d;
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

  public final void d(int paramInt)
  {
    monitorenter;
    try
    {
      this.f = paramInt;
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

  public final int e()
  {
    monitorenter;
    try
    {
      int i = this.c;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final int f()
  {
    monitorenter;
    try
    {
      int i = this.e;
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final int g()
  {
    monitorenter;
    try
    {
      int i = this.f;
      monitorexit;
      return i;
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
 * Qualified Name:     com.a.a.q
 * JD-Core Version:    0.6.0
 */