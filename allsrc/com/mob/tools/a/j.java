package com.mob.tools.a;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public final class j extends c
{
  private ArrayList<c> a = new ArrayList();

  public final j a(c paramc)
  {
    this.a.add(paramc);
    return this;
  }

  protected final InputStream a()
  {
    k localk = new k();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      localk.a(((c)localIterator.next()).a());
    return localk;
  }

  protected final long b()
  {
    Iterator localIterator = this.a.iterator();
    long l = 0L;
    while (localIterator.hasNext())
      l += ((c)localIterator.next()).b();
    return l;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      localStringBuilder.append(((c)localIterator.next()).toString());
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.j
 * JD-Core Version:    0.6.0
 */