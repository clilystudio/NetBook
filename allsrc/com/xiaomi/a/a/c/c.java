package com.xiaomi.a.a.c;

import java.util.Map;

public final class c
{
  public int a;
  public Map<String, String> b;

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.a);
    arrayOfObject[1] = this.b.toString();
    return String.format("resCode = %1$d, headers = %2$s", arrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.a.a.c.c
 * JD-Core Version:    0.6.0
 */