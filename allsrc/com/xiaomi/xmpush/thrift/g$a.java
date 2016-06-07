package com.xiaomi.xmpush.thrift;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum g$a
{
  private static final Map<String, a> l;
  private final short m;
  private final String n;

  static
  {
    a[] arrayOfa = new a[11];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    arrayOfa[7] = h;
    arrayOfa[8] = i;
    arrayOfa[9] = j;
    arrayOfa[10] = k;
    o = arrayOfa;
    l = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      l.put(locala.a(), locala);
    }
  }

  private g$a(short paramShort, String paramString)
  {
    this.m = paramShort;
    this.n = paramString;
  }

  public final String a()
  {
    return this.n;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.g.a
 * JD-Core Version:    0.6.0
 */