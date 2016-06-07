package com.xiaomi.common.logger.thrift;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum a$a
{
  private static final Map<String, a> f;
  private final short g;
  private final String h;

  static
  {
    a[] arrayOfa = new a[5];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    i = arrayOfa;
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      f.put(locala.a(), locala);
    }
  }

  private a$a(short paramShort, String paramString)
  {
    this.g = paramShort;
    this.h = paramString;
  }

  public final String a()
  {
    return this.h;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.common.logger.thrift.a.a
 * JD-Core Version:    0.6.0
 */