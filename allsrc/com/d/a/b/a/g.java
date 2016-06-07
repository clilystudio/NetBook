package com.d.a.b.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public final class g
  implements c
{
  private final Map<String, Object> a = new HashMap();
  private boolean b = false;

  public g(f paramf)
  {
  }

  public final c a()
  {
    monitorenter;
    try
    {
      this.b = true;
      monitorexit;
      return this;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final c a(String paramString, float paramFloat)
  {
    monitorenter;
    try
    {
      this.a.put(paramString, Float.valueOf(paramFloat));
      monitorexit;
      return this;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final c a(String paramString, int paramInt)
  {
    monitorenter;
    try
    {
      this.a.put(paramString, Integer.valueOf(paramInt));
      monitorexit;
      return this;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final c a(String paramString, long paramLong)
  {
    monitorenter;
    try
    {
      this.a.put(paramString, Long.valueOf(paramLong));
      monitorexit;
      return this;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final c a(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      this.a.put(paramString1, paramString2);
      monitorexit;
      return this;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final c a(String paramString, boolean paramBoolean)
  {
    monitorenter;
    try
    {
      this.a.put(paramString, Boolean.valueOf(paramBoolean));
      monitorexit;
      return this;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final boolean b()
  {
    while (true)
    {
      String str;
      Object localObject4;
      synchronized (e.a())
      {
        if (f.a(this.c).size() > 0)
        {
          i = 1;
          if (i == 0)
            break label320;
          ArrayList localArrayList1 = new ArrayList();
          localHashSet = new HashSet(f.a(this.c).keySet());
          localArrayList2 = localArrayList1;
          monitorenter;
          try
          {
            if (!this.b)
              continue;
            f.b(this.c).clear();
            this.b = false;
            Iterator localIterator1 = this.a.entrySet().iterator();
            if (!localIterator1.hasNext())
              break label217;
            Map.Entry localEntry = (Map.Entry)localIterator1.next();
            str = (String)localEntry.getKey();
            localObject4 = localEntry.getValue();
            if (localObject4 != this)
              break label197;
            f.b(this.c).remove(str);
            if (i == 0)
              continue;
            localArrayList2.add(str);
            continue;
          }
          finally
          {
            monitorexit;
          }
        }
      }
      int i = 0;
      continue;
      label197: f.b(this.c).put(str, localObject4);
      continue;
      label217: this.a.clear();
      monitorexit;
      boolean bool = f.c(this.c);
      if (bool)
        this.c.d();
      monitorexit;
      if (i != 0)
        for (int j = -1 + localArrayList2.size(); j >= 0; j--)
        {
          localArrayList2.get(j);
          Iterator localIterator2 = localHashSet.iterator();
          while (localIterator2.hasNext())
            localIterator2.next();
        }
      return bool;
      label320: HashSet localHashSet = null;
      ArrayList localArrayList2 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.b.a.g
 * JD-Core Version:    0.6.0
 */