package org.litepal.d;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class h extends b
{
  private org.litepal.d.a.b b;

  private void a(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        a((String[])localArrayList.toArray(new String[0]), this.a);
        return;
      }
      String str1 = (String)localIterator.next();
      String str2 = (String)paramMap.get(str1);
      localArrayList.add(a(this.b.a(), str1, str2));
    }
  }

  private Map<String, String> c()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = this.b.b().iterator();
    label136: 
    while (true)
    {
      if (!localIterator1.hasNext())
        return localHashMap;
      String str = (String)localIterator1.next();
      Iterator localIterator2 = g(this.b.a()).b().iterator();
      label63: if (!localIterator2.hasNext());
      for (int i = 1; ; i = 0)
      {
        if ((i == 0) || (d(str)))
          break label136;
        localHashMap.put(str, (String)this.b.c().get(str));
        break;
        if (!str.equalsIgnoreCase((String)localIterator2.next()))
          break label63;
      }
    }
  }

  private Map<String, String> d()
  {
    HashMap localHashMap = new HashMap();
    org.litepal.d.a.b localb = g(this.b.a());
    Iterator localIterator1 = localb.b().iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
        return localHashMap;
      String str1 = (String)localIterator1.next();
      Iterator localIterator2 = this.b.b().iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        if (!str1.equalsIgnoreCase(str2))
          continue;
        String str3 = (String)localb.c().get(str1);
        String str4 = (String)this.b.c().get(str2);
        if (str3.equalsIgnoreCase(str4))
          continue;
        localHashMap.put(str2, str4);
      }
    }
  }

  protected final void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    this.a = paramSQLiteDatabase;
    Iterator localIterator1 = a().iterator();
    if (!localIterator1.hasNext())
      return;
    this.b = ((org.litepal.d.a.b)localIterator1.next());
    org.litepal.d.a.b localb = g(this.b.a());
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator2 = localb.c().keySet().iterator();
    label77: Iterator localIterator3;
    if (!localIterator2.hasNext())
      localIterator3 = localArrayList.iterator();
    while (true)
    {
      if (!localIterator3.hasNext())
      {
        a(localArrayList, this.b.a());
        a(c());
        Map localMap = d();
        a(localMap.keySet(), this.b.a());
        a(localMap);
        break;
        String str1 = (String)localIterator2.next();
        int i;
        if (com.arcsoft.hpay100.a.a.a(this.b.b(), str1))
        {
          i = 0;
          label190: if ((i == 0) || (d(str1)) || (a(this.b, str1)))
            break label243;
        }
        label243: for (int j = 1; ; j = 0)
        {
          if (j == 0)
            break label247;
          localArrayList.add(str1);
          break;
          i = 1;
          break label190;
        }
        label247: break label77;
      }
      String str2 = (String)localIterator3.next();
      org.litepal.e.a.a("AssociationUpdater", "remove column is >> " + str2);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.h
 * JD-Core Version:    0.6.0
 */