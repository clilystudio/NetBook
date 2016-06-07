package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.v;

final class m
  implements a
{
  m(k paramk, a parama, v paramv)
  {
  }

  public final void a(Exception paramException)
  {
    if (paramException != null)
    {
      this.a.a(paramException);
      return;
    }
    try
    {
      k.a(this.c, Multimap.parseUrlEncoded(this.b.a(null)));
      this.a.a(null);
      return;
    }
    catch (Exception localException)
    {
      this.a.a(localException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.a.m
 * JD-Core Version:    0.6.0
 */