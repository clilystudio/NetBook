package com.xiaomi.smack;

import com.xiaomi.smack.packet.e;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class d
  implements Runnable
{
  private e a;

  public d(b paramb, e parame)
  {
    this.a = parame;
  }

  public final void run()
  {
    Iterator localIterator = this.b.f.values().iterator();
    while (localIterator.hasNext())
      ((m)localIterator.next()).a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d
 * JD-Core Version:    0.6.0
 */