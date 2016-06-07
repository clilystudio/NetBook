package com.koushikdutta.async.http.a;

import com.koushikdutta.async.G;
import com.koushikdutta.async.H;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.v;

final class e
  implements G
{
  e(d paramd, com.koushikdutta.async.http.b.e parame)
  {
  }

  public final void a(String paramString)
  {
    if (!"\r".equals(paramString))
      this.b.b(paramString);
    h localh;
    do
    {
      return;
      this.a.b();
      this.a.a = null;
      this.a.a(null);
      localh = new h(this.b);
      if (this.a.d == null)
        continue;
      this.a.d.a(localh);
    }
    while (this.a.d() != null);
    if (localh.a())
    {
      this.a.a(new H());
      return;
    }
    this.a.c = localh.a.getString("name");
    this.a.b = new v();
    this.a.a(new f(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.a.e
 * JD-Core Version:    0.6.0
 */