package com.nostra13.universalimageloader.b;

import com.alipay.a.a.b;
import com.alipay.a.a.c;
import com.alipay.a.a.d;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeSet;

public class e
  implements c, d
{
  private static Collection<Object> a(Class<?> paramClass, Type paramType)
  {
    if (paramClass == AbstractCollection.class)
      return new ArrayList();
    if (paramClass.isAssignableFrom(HashSet.class))
      return new HashSet();
    if (paramClass.isAssignableFrom(LinkedHashSet.class))
      return new LinkedHashSet();
    if (paramClass.isAssignableFrom(TreeSet.class))
      return new TreeSet();
    if (paramClass.isAssignableFrom(ArrayList.class))
      return new ArrayList();
    if (paramClass.isAssignableFrom(EnumSet.class))
    {
      if ((paramType instanceof ParameterizedType));
      for (Object localObject = ((ParameterizedType)paramType).getActualTypeArguments()[0]; ; localObject = Object.class)
        return EnumSet.noneOf((Class)localObject);
    }
    try
    {
      Collection localCollection = (Collection)paramClass.newInstance();
      return localCollection;
    }
    catch (Exception localException)
    {
    }
    throw new IllegalArgumentException("create instane error, class " + paramClass.getName());
  }

  public Object a(Object paramObject)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((Iterable)paramObject).iterator();
    while (localIterator.hasNext())
      localArrayList.add(b.b(localIterator.next()));
    return localArrayList;
  }

  public Object a(Object paramObject, Type paramType)
  {
    int i = 0;
    if (!paramObject.getClass().equals(org.json.alipay.a.class))
      return null;
    Class localClass = com.arcsoft.hpay100.a.a.a(paramType);
    org.json.alipay.a locala = (org.json.alipay.a)paramObject;
    Collection localCollection = a(localClass, paramType);
    if ((paramType instanceof ParameterizedType))
    {
      Type localType = ((ParameterizedType)paramType).getActualTypeArguments()[0];
      while (i < locala.a())
      {
        localCollection.add(com.alipay.a.a.a.a(locala.a(i), localType));
        i++;
      }
    }
    throw new IllegalArgumentException("Does not support the implement for generics.");
    return localCollection;
  }

  public boolean a(Class<?> paramClass)
  {
    return Collection.class.isAssignableFrom(paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.b.e
 * JD-Core Version:    0.6.0
 */