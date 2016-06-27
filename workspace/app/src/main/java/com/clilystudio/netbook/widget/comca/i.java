package com.clilystudio.netbook.widget.comca;

import java.util.ArrayList;

final class i
  implements b
{
  private d a;
  private j b;
  private int c;

  public i(d paramd, j paramj, int paramInt)
  {
    this.a = paramd;
    this.b = paramj;
    this.c = paramInt;
  }

  private void e(a parama)
  {
    if (this.a.b)
      return;
    int i = this.b.c.size();
    int j = 0;
    label24: h localh;
    if (j < i)
    {
      localh = (h)this.b.c.get(j);
      if ((localh.b == this.c) && (localh.a.a == parama))
        parama.b(this);
    }
    while (true)
    {
      this.b.c.remove(localh);
      if (this.b.c.size() != 0)
        break;
      this.b.a.a();
      d.a(this.a).add(this.b.a);
      return;
      j++;
      break label24;
      localh = null;
    }
  }

  public final void a(a parama)
  {
    if (this.c == 0)
      e(parama);
  }

  public final void b(a parama)
  {
    if (this.c == 1)
      e(parama);
  }

  public final void c(a parama)
  {
  }

  public final void d(a parama)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.i
 * JD-Core Version:    0.6.0
 */