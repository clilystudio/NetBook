package com.c.a;

import java.util.ArrayList;
import java.util.HashMap;

public class g
{
  private j a;

  g(d paramd, a parama)
  {
    this.a = ((j)d.b(paramd).get(parama));
    if (this.a == null)
    {
      this.a = new j(parama);
      d.b(paramd).put(parama, this.a);
      d.d(paramd).add(this.a);
    }
  }

  public final g a(a parama)
  {
    j localj = (j)d.b(this.b).get(parama);
    if (localj == null)
    {
      localj = new j(parama);
      d.b(this.b).put(parama, localj);
      d.d(this.b).add(localj);
    }
    localj.a(new h(this.a, 1));
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.g
 * JD-Core Version:    0.6.0
 */