package com.koushikdutta.async.http.server;

import com.koushikdutta.async.a.a;

final class d
  implements a
{
  d(c paramc)
  {
  }

  public final void a(Exception paramException)
  {
    this.a.g();
    if (paramException != null)
    {
      c.a(this.a, paramException);
      return;
    }
    this.a.b = true;
    this.a.b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.d
 * JD-Core Version:    0.6.0
 */