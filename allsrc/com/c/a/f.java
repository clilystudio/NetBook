package com.c.a;

import java.util.ArrayList;
import java.util.HashMap;

final class f
  implements b
{
  private d a;

  f(d paramd1, d paramd2)
  {
    this.a = paramd2;
  }

  public final void a(a parama)
  {
  }

  public final void b(a parama)
  {
    parama.b(this);
    d.a(this.b).remove(parama);
    ((j)d.b(this.a).get(parama)).f = true;
    int j;
    if (!this.b.b)
    {
      ArrayList localArrayList1 = d.c(this.a);
      int i = localArrayList1.size();
      j = 0;
      if (j >= i)
        break label175;
      if (((j)localArrayList1.get(j)).f);
    }
    label175: for (int k = 0; ; k = 1)
    {
      if (k != 0)
      {
        if (this.b.a != null)
        {
          ArrayList localArrayList2 = (ArrayList)this.b.a.clone();
          int m = localArrayList2.size();
          int n = 0;
          while (true)
            if (n < m)
            {
              ((b)localArrayList2.get(n)).b(this.a);
              n++;
              continue;
              j++;
              break;
            }
        }
        d.a(this.a, false);
      }
      return;
    }
  }

  public final void c(a parama)
  {
    if ((!this.b.b) && (d.a(this.b).size() == 0) && (this.b.a != null))
    {
      int i = this.b.a.size();
      for (int j = 0; j < i; j++)
        ((b)this.b.a.get(j)).c(this.a);
    }
  }

  public final void d(a parama)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.f
 * JD-Core Version:    0.6.0
 */