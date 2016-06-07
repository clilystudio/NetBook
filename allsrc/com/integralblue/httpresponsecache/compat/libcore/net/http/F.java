package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.http.b.b;

final class F
  implements b
{
  F(E paramE)
  {
  }

  public final void a(String paramString1, String paramString2)
  {
    if (paramString1.equalsIgnoreCase("no-cache"))
      E.a(this.a, true);
    do
    {
      return;
      if (paramString1.equalsIgnoreCase("max-age"))
      {
        E.a(this.a, a.e(paramString2));
        return;
      }
      if (paramString1.equalsIgnoreCase("max-stale"))
      {
        E.b(this.a, a.e(paramString2));
        return;
      }
      if (!paramString1.equalsIgnoreCase("min-fresh"))
        continue;
      E.c(this.a, a.e(paramString2));
      return;
    }
    while (!paramString1.equalsIgnoreCase("only-if-cached"));
    E.b(this.a, true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.F
 * JD-Core Version:    0.6.0
 */