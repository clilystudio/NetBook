package com.koushikdutta.async.c;

import com.koushikdutta.async.v;
import com.koushikdutta.async.y;

public final class g
{
  public final com.koushikdutta.async.b.c<String> a(y paramy)
  {
    String str = paramy.j();
    a locala = new a();
    v localv = new v();
    b localb = new b(locala, paramy);
    paramy.a(new c(locala, localv));
    paramy.b(new d(locala, localb, localv));
    return (com.koushikdutta.async.b.c)localb.b(new h(this, str));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.c.g
 * JD-Core Version:    0.6.0
 */