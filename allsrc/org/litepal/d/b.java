package org.litepal.d;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class b extends d
{
  protected SQLiteDatabase a;
  private Collection<org.litepal.d.a.a> b;

  private boolean a(String paramString1, String paramString2)
  {
    Iterator localIterator = this.b.iterator();
    org.litepal.d.a.a locala;
    do
      while (true)
      {
        if (!localIterator.hasNext())
          return true;
        locala = (org.litepal.d.a.a)localIterator.next();
        if (locala.d() != 1)
          break;
        if (!paramString1.equalsIgnoreCase(locala.c()))
          continue;
        if (locala.a().equalsIgnoreCase(paramString1))
          if (a(locala, paramString1, paramString2))
            return false;
        if ((locala.b().equalsIgnoreCase(paramString1)) && (a(locala, paramString2, paramString1)))
          return false;
      }
    while ((locala.d() != 2) || (!a(locala, paramString2, paramString1)));
    return false;
  }

  private static boolean a(org.litepal.d.a.a parama, String paramString1, String paramString2)
  {
    return (parama.a().equalsIgnoreCase(paramString1)) && (parama.b().equalsIgnoreCase(paramString2));
  }

  private String b(Collection<String> paramCollection, String paramString)
  {
    org.litepal.d.a.b localb = g(paramString);
    Iterator localIterator = paramCollection.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return a(localb);
      localb.b((String)localIterator.next());
    }
  }

  private List<String> b(org.litepal.d.a.b paramb)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = g(paramb.a()).b().iterator();
    label142: 
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      String str = (String)localIterator.next();
      int i;
      if (!TextUtils.isEmpty(str))
        if ((str.toLowerCase().endsWith("_id")) && (!str.equalsIgnoreCase("_id")))
          i = 1;
      while (true)
      {
        if ((i == 0) || (com.arcsoft.hpay100.a.a.a(paramb.b(), str)))
          break label142;
        org.litepal.e.a.a("AssociationUpdater", "getForeignKeyColumnNames >> foreign key column is " + str);
        localArrayList.add(str);
        break;
        i = 0;
        continue;
        i = 0;
      }
    }
  }

  private String c(Collection<String> paramCollection, String paramString)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = g(paramString).b().iterator();
    StringBuilder localStringBuilder;
    Iterator localIterator2;
    int j;
    label84: Iterator localIterator3;
    if (!localIterator1.hasNext())
    {
      if (localArrayList.isEmpty())
        break label260;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("insert into ").append(paramString).append("(");
      localIterator2 = localArrayList.iterator();
      j = 0;
      if (localIterator2.hasNext())
        break label184;
      localStringBuilder.append(") ");
      localStringBuilder.append("select ");
      localIterator3 = localArrayList.iterator();
    }
    while (true)
    {
      if (!localIterator3.hasNext())
      {
        localStringBuilder.append(" from ").append(h(paramString));
        return localStringBuilder.toString();
        String str1 = (String)localIterator1.next();
        if (com.arcsoft.hpay100.a.a.a(paramCollection, str1))
          break;
        localArrayList.add(str1);
        break;
        label184: String str2 = (String)localIterator2.next();
        if (j != 0)
          localStringBuilder.append(", ");
        localStringBuilder.append(str2);
        j = 1;
        break label84;
      }
      String str3 = (String)localIterator3.next();
      if (i != 0)
        localStringBuilder.append(", ");
      localStringBuilder.append(str3);
      i = 1;
    }
    label260: return null;
  }

  private List<String> c()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = com.arcsoft.hpay100.a.a.a(this.a).iterator();
    String str;
    do
    {
      if (!localIterator1.hasNext())
      {
        org.litepal.e.a.a("AssociationUpdater", "findIntermediateTablesToDrop >> " + localArrayList);
        return localArrayList;
      }
      str = (String)localIterator1.next();
    }
    while (!com.arcsoft.hpay100.a.a.a(str, this.a));
    Iterator localIterator2 = this.b.iterator();
    for (int i = 1; ; i = 0)
    {
      org.litepal.d.a.a locala;
      do
      {
        if (!localIterator2.hasNext())
        {
          if (i == 0)
            break;
          localArrayList.add(str);
          break;
        }
        locala = (org.litepal.d.a.a)localIterator2.next();
      }
      while ((locala.d() != 3) || (!str.equalsIgnoreCase(com.arcsoft.hpay100.a.a.l(locala.a(), locala.b()))));
    }
  }

  private static String h(String paramString)
  {
    return paramString + "_temp";
  }

  protected abstract void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean);

  protected final void a(Collection<String> paramCollection, String paramString)
  {
    if ((paramCollection != null) && (!paramCollection.isEmpty()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("alter table ").append(paramString).append(" rename to ").append(h(paramString));
      String str1 = localStringBuilder.toString();
      org.litepal.e.a.a("AssociationUpdater", "generateRemoveColumnSQL >> " + str1);
      String str2 = b(paramCollection, paramString);
      org.litepal.e.a.a("AssociationUpdater", "generateRemoveColumnSQL >> " + str2);
      String str3 = c(paramCollection, paramString);
      org.litepal.e.a.a("AssociationUpdater", "generateRemoveColumnSQL >> " + str3);
      String str4 = f(h(paramString));
      org.litepal.e.a.a("AssociationUpdater", "generateRemoveColumnSQL >> " + str4);
      a(new String[] { str1, str2, str3, str4 }, this.a);
    }
  }

  protected final void a(List<String> paramList, SQLiteDatabase paramSQLiteDatabase)
  {
    String[] arrayOfString;
    if ((paramList != null) && (!paramList.isEmpty()))
      arrayOfString = new String[paramList.size()];
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString.length)
      {
        a(arrayOfString, paramSQLiteDatabase);
        return;
      }
      arrayOfString[i] = f((String)paramList.get(i));
    }
  }

  protected final boolean a(org.litepal.d.a.b paramb, String paramString)
  {
    return com.arcsoft.hpay100.a.a.a(b(paramb), paramString);
  }

  protected final void b(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    this.b = b();
    this.a = paramSQLiteDatabase;
    Iterator localIterator1 = org.litepal.c.a.a().d().iterator();
    if (!localIterator1.hasNext())
    {
      List localList2 = c();
      a(localList2, this.a);
      b(localList2);
      return;
    }
    org.litepal.d.a.b localb = a((String)localIterator1.next());
    ArrayList localArrayList = new ArrayList();
    List localList1 = b(localb);
    String str1 = localb.a();
    Iterator localIterator2 = localList1.iterator();
    label247: 
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        org.litepal.e.a.a("AssociationUpdater", "findForeignKeyToRemove >> " + localb.a() + " " + localArrayList);
        a(localArrayList, localb.a());
        break;
      }
      String str2 = (String)localIterator2.next();
      String str3;
      if (!TextUtils.isEmpty(str2))
        if (str2.toLowerCase().endsWith("_id"))
          str3 = str2.substring(0, -3 + str2.length());
      while (true)
      {
        if (!a(str1, str3))
          break label247;
        localArrayList.add(str2);
        break;
        str3 = null;
        continue;
        str3 = null;
      }
    }
  }

  protected final void b(List<String> paramList)
  {
    StringBuilder localStringBuilder;
    Iterator localIterator;
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      localStringBuilder = new StringBuilder("delete from ");
      localStringBuilder.append("table_schema where");
      localIterator = paramList.iterator();
    }
    for (int i = 0; ; i = 1)
    {
      if (!localIterator.hasNext())
      {
        org.litepal.e.a.a("AssociationUpdater", "clear table schema value sql is " + localStringBuilder);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = localStringBuilder.toString();
        a(arrayOfString, this.a);
        return;
      }
      String str = (String)localIterator.next();
      if (i != 0)
        localStringBuilder.append(" or ");
      localStringBuilder.append(" lower(name").append(") ");
      localStringBuilder.append("= lower('").append(str).append("')");
    }
  }

  protected final org.litepal.d.a.b g(String paramString)
  {
    return com.arcsoft.hpay100.a.a.c(paramString, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.b
 * JD-Core Version:    0.6.0
 */