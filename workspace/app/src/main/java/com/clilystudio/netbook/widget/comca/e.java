package com.clilystudio.netbook.widget.comca;

import java.util.ArrayList;

final class e extends c
{
  private boolean a = false;

  e(d paramd, ArrayList paramArrayList)
  {
  }

  public final void b(a parama)
  {
    if (!this.a)
    {
      int i = this.b.size();
      for (int j = 0; j < i; j++)
      {
        j localj = (j)this.b.get(j);
        localj.a.a();
        d.a(this.c).add(localj.a);
      }
    }
  }

  public final void c(a parama)
  {
    this.a = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.e
 * JD-Core Version:    0.6.0
 */