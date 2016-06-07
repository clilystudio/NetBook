package com.koushikdutta.async.http.server;

import com.koushikdutta.async.F;
import com.koushikdutta.async.r;
import com.koushikdutta.async.s;
import java.util.ArrayList;

final class b
  implements com.koushikdutta.async.a.c
{
  b(a parama)
  {
  }

  public final void a(r paramr)
  {
    this.a.a.add(paramr);
  }

  public final void a(s params)
  {
    c localc = new c(this, params);
    localc.c = params;
    F localF = new F();
    localc.c.a(localF);
    localF.a(localc.d);
    params.g();
  }

  public final void a(Exception paramException)
  {
    a.a(this.a, paramException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.b
 * JD-Core Version:    0.6.0
 */