package com.c.a;

import java.util.ArrayList;

public abstract class a
  implements Cloneable
{
  ArrayList<b> a = null;

  public void a()
  {
  }

  public final void a(b paramb)
  {
    if (this.a == null)
      this.a = new ArrayList();
    this.a.add(paramb);
  }

  public void b()
  {
  }

  public final void b(b paramb)
  {
    if (this.a == null);
    do
    {
      return;
      this.a.remove(paramb);
    }
    while (this.a.size() != 0);
    this.a = null;
  }

  public void c()
  {
  }

  public abstract boolean d();

  public a e()
  {
    a locala;
    try
    {
      locala = (a)super.clone();
      if (this.a != null)
      {
        ArrayList localArrayList = this.a;
        locala.a = new ArrayList();
        int i = localArrayList.size();
        for (int j = 0; j < i; j++)
          locala.a.add(localArrayList.get(j));
      }
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
    return locala;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.a
 * JD-Core Version:    0.6.0
 */