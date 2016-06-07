package com.c.a;

import java.util.ArrayList;

final class j
  implements Cloneable
{
  public a a;
  public ArrayList<h> b = null;
  public ArrayList<h> c = null;
  public ArrayList<j> d = null;
  public ArrayList<j> e = null;
  public boolean f = false;

  public j(a parama)
  {
    this.a = parama;
  }

  public final j a()
  {
    try
    {
      j localj = (j)super.clone();
      localj.a = this.a.e();
      return localj;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }

  public final void a(h paramh)
  {
    if (this.b == null)
    {
      this.b = new ArrayList();
      this.d = new ArrayList();
    }
    this.b.add(paramh);
    if (!this.d.contains(paramh.a))
      this.d.add(paramh.a);
    j localj = paramh.a;
    if (localj.e == null)
      localj.e = new ArrayList();
    localj.e.add(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.j
 * JD-Core Version:    0.6.0
 */