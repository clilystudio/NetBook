package com.squareup.a;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class a
{
  private static final Map<Class<?>, Map<Class<?>, Method>> a = new HashMap();
  private static final Map<Class<?>, Map<Class<?>, Set<Method>>> b = new HashMap();

  static Map<Class<?>, h> a(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    HashMap localHashMap = new HashMap();
    if (!a.containsKey(localClass))
      a(localClass);
    Map localMap = (Map)a.get(localClass);
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        h localh = new h(paramObject, (Method)localEntry.getValue());
        localHashMap.put(localEntry.getKey(), localh);
      }
    }
    return localHashMap;
  }

  private static void a(Class<?> paramClass)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    if (j < i)
    {
      Method localMethod = arrayOfMethod[j];
      if (localMethod.isAnnotationPresent(l.class))
      {
        Class[] arrayOfClass2 = localMethod.getParameterTypes();
        if (arrayOfClass2.length != 1)
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation but requires " + arrayOfClass2.length + " arguments.  Methods must require a single argument.");
        Class localClass2 = arrayOfClass2[0];
        if (localClass2.isInterface())
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation on " + localClass2 + " which is an interface.  Subscription must be on a concrete class type.");
        if ((0x1 & localMethod.getModifiers()) == 0)
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation on " + localClass2 + " but is not 'public'.");
        Object localObject = (Set)localHashMap1.get(localClass2);
        if (localObject == null)
        {
          localObject = new HashSet();
          localHashMap1.put(localClass2, localObject);
        }
        ((Set)localObject).add(localMethod);
      }
      while (true)
      {
        j++;
        break;
        if (!localMethod.isAnnotationPresent(k.class))
          continue;
        Class[] arrayOfClass1 = localMethod.getParameterTypes();
        if (arrayOfClass1.length != 0)
          throw new IllegalArgumentException("Method " + localMethod + "has @Produce annotation but requires " + arrayOfClass1.length + " arguments.  Methods must require zero arguments.");
        if (localMethod.getReturnType() == Void.class)
          throw new IllegalArgumentException("Method " + localMethod + " has a return type of void.  Must declare a non-void type.");
        Class localClass1 = localMethod.getReturnType();
        if (localClass1.isInterface())
          throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation on " + localClass1 + " which is an interface.  Producers must return a concrete class type.");
        if (localClass1.equals(Void.TYPE))
          throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation but has no return type.");
        if ((0x1 & localMethod.getModifiers()) == 0)
          throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation on " + localClass1 + " but is not 'public'.");
        if (localHashMap2.containsKey(localClass1))
          throw new IllegalArgumentException("Producer for type " + localClass1 + " has already been registered.");
        localHashMap2.put(localClass1, localMethod);
      }
    }
    a.put(paramClass, localHashMap2);
    b.put(paramClass, localHashMap1);
  }

  static Map<Class<?>, Set<g>> b(Object paramObject)
  {
    Class localClass = paramObject.getClass();
    HashMap localHashMap = new HashMap();
    if (!b.containsKey(localClass))
      a(localClass);
    Map localMap = (Map)b.get(localClass);
    if (!localMap.isEmpty())
    {
      Iterator localIterator1 = localMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        HashSet localHashSet = new HashSet();
        Iterator localIterator2 = ((Set)localEntry.getValue()).iterator();
        while (localIterator2.hasNext())
          localHashSet.add(new g(paramObject, (Method)localIterator2.next()));
        localHashMap.put(localEntry.getKey(), localHashSet);
      }
    }
    return localHashMap;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.a.a
 * JD-Core Version:    0.6.0
 */