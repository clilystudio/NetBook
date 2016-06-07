package com.alipay.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public final class e
  implements c
{
  public final Object a(Object paramObject, Type paramType)
  {
    int i = 0;
    if (!paramObject.getClass().equals(org.json.alipay.a.class))
      return null;
    org.json.alipay.a locala = (org.json.alipay.a)paramObject;
    HashSet localHashSet = new HashSet();
    Object localObject;
    if ((paramType instanceof ParameterizedType))
      localObject = ((ParameterizedType)paramType).getActualTypeArguments()[0];
    while (i < locala.a())
    {
      localHashSet.add(a.a(locala.a(i), (Type)localObject));
      i++;
      continue;
      localObject = Object.class;
      i = 0;
    }
    return localHashSet;
  }

  public final boolean a(Class<?> paramClass)
  {
    return Set.class.isAssignableFrom(paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.a.a.e
 * JD-Core Version:    0.6.0
 */