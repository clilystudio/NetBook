package com.xiaomi.mistatistic.sdk.a;

import com.xiaomi.mistatistic.sdk.b.b;
import com.xiaomi.mistatistic.sdk.b.d;
import com.xiaomi.mistatistic.sdk.b.g;
import com.xiaomi.mistatistic.sdk.b.h;
import com.xiaomi.mistatistic.sdk.b.i;

final class s
  implements j
{
  private b a;

  public s(b paramb)
  {
    this.a = paramb;
  }

  public final void a()
  {
    i locali1 = this.a.a();
    new n();
    if (((this.a instanceof g)) || ((this.a instanceof h)) || ((this.a instanceof d)) || ((this.a instanceof com.xiaomi.mistatistic.sdk.b.c)))
      n.a(locali1);
    while (true)
    {
      if (c.a().d())
        new w().a();
      return;
      String str1 = locali1.c;
      String str2 = locali1.a;
      i locali2 = n.a(str2, str1);
      if ((locali2 == null) || (!locali1.d.equals(locali2.d)))
      {
        n.a(locali1);
        continue;
      }
      n.a(str1, str2, locali1.e);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.s
 * JD-Core Version:    0.6.0
 */