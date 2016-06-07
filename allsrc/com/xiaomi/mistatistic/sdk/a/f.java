package com.xiaomi.mistatistic.sdk.a;

import com.xiaomi.mistatistic.sdk.b;
import com.xiaomi.mistatistic.sdk.d;
import java.util.Iterator;
import java.util.List;

final class f
  implements j
{
  f(c paramc)
  {
  }

  public final void a()
  {
    if ((b.c()) && (!b.d()))
    {
      Iterator localIterator = d.a().iterator();
      while (localIterator.hasNext())
        d.a((Throwable)localIterator.next());
      d.b();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.f
 * JD-Core Version:    0.6.0
 */