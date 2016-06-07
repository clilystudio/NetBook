package com.alipay.b.e;

import java.util.LinkedList;

final class b
  implements Runnable
{
  b(a parama)
  {
  }

  public final void run()
  {
    try
    {
      while (!a.a(this.a).isEmpty())
      {
        d locald = (d)a.a(this.a).pollFirst();
        if (locald == null)
          continue;
        locald.a();
      }
    }
    catch (Throwable localThrowable)
    {
      return;
      return;
    }
    finally
    {
      a.b(this.a);
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.e.b
 * JD-Core Version:    0.6.0
 */