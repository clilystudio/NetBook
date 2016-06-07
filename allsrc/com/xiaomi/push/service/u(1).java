package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.a.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public final class u
{
  private static u a;
  private ConcurrentHashMap<String, HashMap<String, R>> b = new ConcurrentHashMap();
  private List<j> c = new ArrayList();

  public static u a()
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new u();
      u localu = a;
      return localu;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static String d(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = null;
    int i;
    do
    {
      return paramString;
      i = paramString.indexOf("@");
    }
    while (i <= 0);
    return paramString.substring(0, i);
  }

  public final void a(int paramInt)
  {
    monitorenter;
    try
    {
      Iterator localIterator1 = this.b.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((HashMap)localIterator1.next()).values().iterator();
        while (localIterator2.hasNext())
          ((R)localIterator2.next()).a(u.c.a, 2, paramInt, null, null);
      }
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public final void a(j paramj)
  {
    monitorenter;
    try
    {
      this.c.add(paramj);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(R paramR)
  {
    monitorenter;
    try
    {
      HashMap localHashMap = (HashMap)this.b.get(paramR.h);
      if (localHashMap == null)
      {
        localHashMap = new HashMap();
        this.b.put(paramR.h, localHashMap);
      }
      localHashMap.put(d(paramR.b), paramR);
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
        ((j)localIterator.next()).a();
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public final void a(String paramString)
  {
    monitorenter;
    try
    {
      HashMap localHashMap = (HashMap)this.b.get(paramString);
      if (localHashMap != null)
      {
        localHashMap.clear();
        this.b.remove(paramString);
      }
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
        ((j)localIterator.next()).a();
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public final void a(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      HashMap localHashMap = (HashMap)this.b.get(paramString1);
      if (localHashMap != null)
      {
        localHashMap.remove(d(paramString2));
        if (localHashMap.isEmpty())
          this.b.remove(paramString1);
      }
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
        ((j)localIterator.next()).a();
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public final R b(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      HashMap localHashMap = (HashMap)this.b.get(paramString1);
      if (localHashMap == null);
      for (R localR = null; ; localR = (R)localHashMap.get(d(paramString2)))
        return localR;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final ArrayList<R> b()
  {
    monitorenter;
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.b.values().iterator();
      while (localIterator.hasNext())
        localArrayList.addAll(((HashMap)localIterator.next()).values());
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
    return localArrayList;
  }

  public final List<String> b(String paramString)
  {
    monitorenter;
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator1 = this.b.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((HashMap)localIterator1.next()).values().iterator();
        while (localIterator2.hasNext())
        {
          R localR = (R)localIterator2.next();
          if (!paramString.equals(localR.a))
            continue;
          localArrayList.add(localR.h);
        }
      }
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
    return localArrayList;
  }

  public final int c()
  {
    monitorenter;
    try
    {
      int i = this.b.size();
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final Collection<R> c(String paramString)
  {
    monitorenter;
    try
    {
      if (!this.b.containsKey(paramString));
      Collection localCollection;
      for (Object localObject2 = new ArrayList(); ; localObject2 = localCollection)
      {
        return localObject2;
        localCollection = ((HashMap)((HashMap)this.b.get(paramString)).clone()).values();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final void d()
  {
    monitorenter;
    try
    {
      this.b.clear();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void e()
  {
    monitorenter;
    try
    {
      Iterator localIterator1 = this.b.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((HashMap)localIterator1.next()).values().iterator();
        while (localIterator2.hasNext())
          ((R)localIterator2.next()).a(u.c.a, 1, 3, null, null);
      }
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public final void f()
  {
    monitorenter;
    try
    {
      this.c.clear();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.u
 * JD-Core Version:    0.6.0
 */