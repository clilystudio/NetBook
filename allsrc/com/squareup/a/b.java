package com.squareup.a;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

public final class b
{
  private final ConcurrentMap<Class<?>, Set<g>> a = new ConcurrentHashMap();
  private final ConcurrentMap<Class<?>, h> b = new ConcurrentHashMap();
  private final String c;
  private final m d;
  private final i e;
  private final ThreadLocal<ConcurrentLinkedQueue<e>> f = new c(this);
  private final ThreadLocal<Boolean> g = new d(this);
  private final Map<Class<?>, Set<Class<?>>> h = new HashMap();

  public b()
  {
    this("default");
  }

  public b(m paramm)
  {
    this(paramm, "default");
  }

  private b(m paramm, String paramString)
  {
    this(paramm, paramString, i.a);
  }

  private b(m paramm, String paramString, i parami)
  {
    this.d = paramm;
    this.c = paramString;
    this.e = parami;
  }

  private b(String paramString)
  {
    this(m.b, paramString);
  }

  private Set<g> a(Class<?> paramClass)
  {
    return (Set)this.a.get(paramClass);
  }

  private void a()
  {
    if (((Boolean)this.g.get()).booleanValue())
      return;
    this.g.set(Boolean.valueOf(true));
    try
    {
      while (true)
      {
        e locale = (e)((ConcurrentLinkedQueue)this.f.get()).poll();
        if (locale == null)
          break;
        if (!locale.b.a())
          continue;
        a(locale.a, locale.b);
      }
    }
    finally
    {
      this.g.set(Boolean.valueOf(false));
    }
    this.g.set(Boolean.valueOf(false));
  }

  private void a(g paramg, h paramh)
  {
    try
    {
      Object localObject2 = paramh.c();
      localObject1 = localObject2;
      if (localObject1 == null)
        return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Object localObject1;
      while (true)
      {
        a("Producer " + paramh + " threw an exception.", localInvocationTargetException);
        localObject1 = null;
      }
      a(localObject1, paramg);
    }
  }

  private static void a(Object paramObject, g paramg)
  {
    try
    {
      paramg.a(paramObject);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      a("Could not dispatch event: " + paramObject.getClass() + " to handler " + paramg, localInvocationTargetException);
    }
  }

  private static void a(String paramString, InvocationTargetException paramInvocationTargetException)
  {
    Throwable localThrowable = paramInvocationTargetException.getCause();
    if (localThrowable != null)
      throw new RuntimeException(paramString, localThrowable);
    throw new RuntimeException(paramString);
  }

  public final void a(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("Object to register must not be null.");
    this.d.a(this);
    Map localMap1 = this.e.a(paramObject);
    Iterator localIterator1 = localMap1.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Class localClass3 = (Class)localIterator1.next();
      h localh2 = (h)localMap1.get(localClass3);
      h localh3 = (h)this.b.putIfAbsent(localClass3, localh2);
      if (localh3 != null)
        throw new IllegalArgumentException("Producer method for type " + localClass3 + " found on type " + localh2.a.getClass() + ", but already registered by type " + localh3.a.getClass() + ".");
      Set localSet = (Set)this.a.get(localClass3);
      if ((localSet == null) || (localSet.isEmpty()))
        continue;
      Iterator localIterator5 = localSet.iterator();
      while (localIterator5.hasNext())
        a((g)localIterator5.next(), localh2);
    }
    Map localMap2 = this.e.b(paramObject);
    Iterator localIterator2 = localMap2.keySet().iterator();
    while (localIterator2.hasNext())
    {
      Class localClass2 = (Class)localIterator2.next();
      Object localObject = (Set)this.a.get(localClass2);
      if (localObject == null)
      {
        CopyOnWriteArraySet localCopyOnWriteArraySet = new CopyOnWriteArraySet();
        localObject = (Set)this.a.putIfAbsent(localClass2, localCopyOnWriteArraySet);
        if (localObject == null)
          localObject = localCopyOnWriteArraySet;
      }
      ((Set)localObject).addAll((Set)localMap2.get(localClass2));
    }
    Iterator localIterator3 = localMap2.entrySet().iterator();
    label503: 
    while (localIterator3.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator3.next();
      Class localClass1 = (Class)localEntry.getKey();
      h localh1 = (h)this.b.get(localClass1);
      if ((localh1 == null) || (!localh1.a()))
        continue;
      Iterator localIterator4 = ((Set)localEntry.getValue()).iterator();
      while (true)
      {
        if (!localIterator4.hasNext())
          break label503;
        g localg = (g)localIterator4.next();
        if (!localh1.a())
          break;
        if (!localg.a())
          continue;
        a(localg, localh1);
      }
    }
  }

  public final void b(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("Object to unregister must not be null.");
    this.d.a(this);
    Iterator localIterator1 = this.e.a(paramObject).entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
      Class localClass = (Class)localEntry2.getKey();
      h localh1 = (h)this.b.get(localClass);
      h localh2 = (h)localEntry2.getValue();
      if ((localh2 == null) || (!localh2.equals(localh1)))
        throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + paramObject.getClass() + " registered?");
      ((h)this.b.remove(localClass)).b();
    }
    Iterator localIterator2 = this.e.b(paramObject).entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      Set localSet = a((Class)localEntry1.getKey());
      Collection localCollection = (Collection)localEntry1.getValue();
      if ((localSet == null) || (!localSet.containsAll(localCollection)))
        throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + paramObject.getClass() + " registered?");
      Iterator localIterator3 = localSet.iterator();
      while (localIterator3.hasNext())
      {
        g localg = (g)localIterator3.next();
        if (!localCollection.contains(localg))
          continue;
        localg.b();
      }
      localSet.removeAll(localCollection);
    }
  }

  public final void c(Object paramObject)
  {
    this.d.a(this);
    Class localClass1 = paramObject.getClass();
    Object localObject = (Set)this.h.get(localClass1);
    if (localObject == null)
    {
      LinkedList localLinkedList = new LinkedList();
      HashSet localHashSet = new HashSet();
      localLinkedList.add(localClass1);
      while (!localLinkedList.isEmpty())
      {
        Class localClass2 = (Class)localLinkedList.remove(0);
        localHashSet.add(localClass2);
        Class localClass3 = localClass2.getSuperclass();
        if (localClass3 == null)
          continue;
        localLinkedList.add(localClass3);
      }
      this.h.put(localClass1, localHashSet);
      localObject = localHashSet;
    }
    Iterator localIterator1 = ((Set)localObject).iterator();
    int i = 0;
    if (localIterator1.hasNext())
    {
      Set localSet = a((Class)localIterator1.next());
      if ((localSet != null) && (!localSet.isEmpty()))
      {
        Iterator localIterator2 = localSet.iterator();
        while (localIterator2.hasNext())
        {
          g localg = (g)localIterator2.next();
          ((ConcurrentLinkedQueue)this.f.get()).offer(new e(paramObject, localg));
        }
      }
    }
    for (int j = i; ; j = 1)
    {
      i = j;
      break;
      if ((i == 0) && (!(paramObject instanceof f)))
        c(new f(this, paramObject));
      a();
      return;
    }
  }

  public final String toString()
  {
    return "[Bus \"" + this.c + "\"]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.a.b
 * JD-Core Version:    0.6.0
 */