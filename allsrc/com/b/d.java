package com.b;

import java.util.concurrent.Callable;

final class d
  implements Callable<Void>
{
  d(c paramc)
  {
  }

  private Void a()
  {
    synchronized (this.a)
    {
      if (c.a(this.a) == null)
        return null;
      c.b(this.a);
      if (c.c(this.a))
      {
        c.d(this.a);
        c.a(this.a, 0);
      }
      return null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.d
 * JD-Core Version:    0.6.0
 */