package com.xiaomi.common.logger.thrift.mfs;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum g$a
{
  private static final Map<String, a> c;
  private final short d;
  private final String e;

  static
  {
    a[] arrayOfa = new a[2];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    f = arrayOfa;
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      c.put(locala.a(), locala);
    }
  }

  private g$a(short paramShort, String paramString)
  {
    this.d = paramShort;
    this.e = paramString;
  }

  public final String a()
  {
    return this.e;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.common.logger.thrift.mfs.g.a
 * JD-Core Version:    0.6.0
 */