package com.alipay.a.a;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.alipay.b;

public final class a
{
  private static List<c> a;

  static
  {
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add(new f());
    a.add(new com.xiaomi.mipush.sdk.a());
    a.add(new com.e.a.a.g.c());
    a.add(new org.litepal.d.c());
    a.add(new e());
    a.add(new com.nostra13.universalimageloader.b.e());
    a.add(new com.nostra13.universalimageloader.core.a());
    a.add(new org.apache.commons.lang3.a.a());
  }

  public static final <T> T a(Object paramObject, Type paramType)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (!localc.a(com.arcsoft.hpay100.a.a.a(paramType)))
        continue;
      Object localObject = localc.a(paramObject, paramType);
      if (localObject != null)
        return localObject;
    }
    return null;
  }

  public static final Object a(String paramString, Type paramType)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return null;
    String str = paramString.trim();
    if ((str.startsWith("[")) && (str.endsWith("]")))
      return a(new org.json.alipay.a(str), paramType);
    if ((str.startsWith("{")) && (str.endsWith("}")))
      return a(new b(str), paramType);
    return a(str, paramType);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.a.a.a
 * JD-Core Version:    0.6.0
 */