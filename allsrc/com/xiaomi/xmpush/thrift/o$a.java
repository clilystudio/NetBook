package com.xiaomi.xmpush.thrift;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum o$a
{
  private static final Map<String, a> h;
  private final short i;
  private final String j;

  static
  {
    a[] arrayOfa = new a[7];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    k = arrayOfa;
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      h.put(locala.a(), locala);
    }
  }

  private o$a(short paramShort, String paramString)
  {
    this.i = paramShort;
    this.j = paramString;
  }

  public final String a()
  {
    return this.j;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.o.a
 * JD-Core Version:    0.6.0
 */