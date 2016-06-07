package com.koushikdutta.async.b;

public class e
  implements b
{
  private boolean a;
  private boolean b;
  private a c;

  static
  {
    if (!e.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      d = bool;
      new f();
      return;
    }
  }

  protected void a()
  {
  }

  public e b(a parama)
  {
    monitorenter;
    try
    {
      if (!isDone())
        this.c = parama;
      return this;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean b()
  {
    monitorenter;
    try
    {
      if (this.a)
        return false;
      if (this.b)
        return true;
    }
    finally
    {
      monitorexit;
    }
    this.b = true;
    a locala = this.c;
    this.c = null;
    monitorexit;
    if (locala != null)
      locala.b();
    a();
    return true;
  }

  public boolean c()
  {
    monitorenter;
    try
    {
      if (this.b)
        return false;
      if (!this.a)
        break label43;
      if (!d)
        throw new AssertionError();
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
    return true;
    label43: this.a = true;
    this.c = null;
    monitorexit;
    return true;
  }

  public boolean isCancelled()
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (!this.b)
        {
          if ((this.c == null) || (!this.c.isCancelled()))
            break label45;
          break label40;
          return i;
        }
      }
      finally
      {
        monitorexit;
      }
      label40: int i = 1;
      continue;
      label45: i = 0;
    }
  }

  public boolean isDone()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.b.e
 * JD-Core Version:    0.6.0
 */