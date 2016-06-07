package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.http.b.b;

final class H
  implements b
{
  H(G paramG)
  {
  }

  public final void a(String paramString1, String paramString2)
  {
    if (paramString1.equalsIgnoreCase("no-cache"))
      G.a(this.a, true);
    do
    {
      return;
      if (paramString1.equalsIgnoreCase("no-store"))
      {
        G.b(this.a, true);
        return;
      }
      if (paramString1.equalsIgnoreCase("max-age"))
      {
        G.a(this.a, a.e(paramString2));
        return;
      }
      if (paramString1.equalsIgnoreCase("s-maxage"))
      {
        G.b(this.a, a.e(paramString2));
        return;
      }
      if (!paramString1.equalsIgnoreCase("public"))
        continue;
      G.c(this.a, true);
      return;
    }
    while (!paramString1.equalsIgnoreCase("must-revalidate"));
    G.d(this.a, true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.H
 * JD-Core Version:    0.6.0
 */