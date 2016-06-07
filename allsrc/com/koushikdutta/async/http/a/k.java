package com.koushikdutta.async.http.a;

import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;

public final class k
  implements a<Multimap>
{
  private Multimap a;

  public final void a(y paramy, com.koushikdutta.async.a.a parama)
  {
    v localv = new v();
    paramy.a(new l(this, localv));
    paramy.b(new m(this, parama, localv));
  }

  public final boolean a_()
  {
    return true;
  }

  public final Multimap b()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.a.k
 * JD-Core Version:    0.6.0
 */