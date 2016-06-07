package com.xiaomi.xmpush.thrift;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum f$a
{
  private static final Map<String, a> i;
  private final short j;
  private final String k;

  static
  {
    a[] arrayOfa = new a[8];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    arrayOfa[7] = h;
    l = arrayOfa;
    i = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      i.put(locala.a(), locala);
    }
  }

  private f$a(short paramShort, String paramString)
  {
    this.j = paramShort;
    this.k = paramString;
  }

  public final String a()
  {
    return this.k;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.f.a
 * JD-Core Version:    0.6.0
 */