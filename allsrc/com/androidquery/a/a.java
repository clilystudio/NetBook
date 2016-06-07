package com.androidquery.a;

import java.util.LinkedHashSet;

public abstract class a
{
  private LinkedHashSet<com.androidquery.b.a<?, ?>> a;

  public final void a(com.androidquery.b.a<?, ?> parama)
  {
    monitorenter;
    try
    {
      if (this.a == null)
      {
        this.a = new LinkedHashSet();
        this.a.add(parama);
      }
      while (true)
      {
        return;
        this.a.add(parama);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public abstract boolean a();

  public abstract boolean b();

  public abstract boolean c();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.a.a
 * JD-Core Version:    0.6.0
 */