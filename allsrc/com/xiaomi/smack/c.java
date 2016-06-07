package com.xiaomi.smack;

import com.xiaomi.kenai.jbosh.K;
import com.xiaomi.kenai.jbosh.w;

final class c
  implements K
{
  private c(b paramb)
  {
  }

  public final void a(w paramw)
  {
    if (!paramw.a())
    {
      this.a.a(2, 0, null);
      this.a.a((Exception)paramw.b());
    }
    synchronized (b.d(this.a))
    {
      b.d(this.a).notifyAll();
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.c
 * JD-Core Version:    0.6.0
 */