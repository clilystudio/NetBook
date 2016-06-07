package com.xiaomi.kenai.jbosh;

import java.util.Queue;
import java.util.concurrent.locks.ReentrantLock;

final class H
  implements Runnable
{
  H(F paramF)
  {
  }

  public final void run()
  {
    try
    {
      F.b(this.a).lock();
      if (F.c(this.a) != null)
      {
        boolean bool = F.c(this.a).isEmpty();
        if (!bool);
      }
      else
      {
        return;
      }
      F.b(this.a).unlock();
      F.a(this.a, System.currentTimeMillis());
      F.d(this.a);
    }
    finally
    {
      F.b(this.a).unlock();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.H
 * JD-Core Version:    0.6.0
 */