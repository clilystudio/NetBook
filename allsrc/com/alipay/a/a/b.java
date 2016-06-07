package com.alipay.a.a;

import com.nostra13.universalimageloader.b.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class b
{
  private static List<d> a;

  static
  {
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add(new f());
    a.add(new com.xiaomi.mipush.sdk.a());
    a.add(new com.e.a.a.g.c());
    a.add(new org.litepal.d.c());
    a.add(new e());
    a.add(new com.nostra13.universalimageloader.core.a());
    a.add(new org.apache.commons.lang3.a.a());
  }

  public static String a(Object paramObject)
  {
    if (paramObject == null)
      return null;
    Object localObject = b(paramObject);
    if (com.arcsoft.hpay100.a.a.a(localObject.getClass()))
      return org.json.alipay.b.c(localObject.toString());
    if (Collection.class.isAssignableFrom(localObject.getClass()))
      return new org.json.alipay.a((List)localObject).toString();
    if (Map.class.isAssignableFrom(localObject.getClass()))
      return new org.json.alipay.b((Map)localObject).toString();
    throw new IllegalArgumentException("Unsupported Class : " + localObject.getClass());
  }

  public static Object b(Object paramObject)
  {
    if (paramObject == null)
      return null;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (!locald.a(paramObject.getClass()))
        continue;
      Object localObject = locald.a(paramObject);
      if (localObject != null)
        return localObject;
    }
    throw new IllegalArgumentException("Unsupported Class : " + paramObject.getClass());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.a.a.b
 * JD-Core Version:    0.6.0
 */