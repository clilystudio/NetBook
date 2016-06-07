package com.mob.tools.gui;

public final class i<K, V>
{
  private int a;
  private int b;
  private j<K, V> c;
  private j<K, V> d;

  public i(int paramInt)
  {
    this.a = paramInt;
  }

  public final int a()
  {
    return this.b;
  }

  public final V a(K paramK)
  {
    monitorenter;
    try
    {
      for (j localj = this.c; (localj != null) && (!localj.a.equals(paramK)); localj = localj.d);
      Object localObject2 = null;
      if (localj != null)
        if (localj.c != null)
        {
          if (localj.d != null)
            break label107;
          localj.c.d = null;
          this.d = this.d.c;
        }
      while (true)
      {
        localj.c = null;
        localj.d = this.c;
        this.c.c = localj;
        this.c = localj;
        localObject2 = localj.b;
        return localObject2;
        label107: localj.c.d = localj.d;
        localj.d.c = localj.c;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final void a(long paramLong)
  {
    monitorenter;
    try
    {
      int i = this.a;
      if (i <= 0);
      while (true)
      {
        return;
        for (j localj = this.c; localj != null; localj = localj.d)
        {
          if (j.a(localj) >= paramLong)
            continue;
          if (localj.c != null)
            localj.c.d = localj.d;
          if (localj.d != null)
            localj.d.c = localj.c;
          if (localj.equals(this.c))
            this.c = this.c.d;
          this.b = (-1 + this.b);
        }
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final boolean a(K paramK, V paramV)
  {
    monitorenter;
    int i = 0;
    if (paramK != null);
    j localj;
    try
    {
      int j = this.a;
      i = 0;
      if (j <= 0)
        return i;
      localj = null;
      while (this.b >= this.a)
      {
        localj = this.d;
        this.d = this.d.c;
        this.d.d = null;
        this.b = (-1 + this.b);
      }
    }
    finally
    {
      monitorexit;
    }
    if (localj == null)
      localj = new j(0);
    j.a(localj, System.currentTimeMillis());
    localj.a = paramK;
    localj.b = paramV;
    localj.c = null;
    localj.d = this.c;
    if (this.b == 0)
      this.d = localj;
    while (true)
    {
      this.c = localj;
      this.b = (1 + this.b);
      i = 1;
      break;
      this.c.c = localj;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.i
 * JD-Core Version:    0.6.0
 */