package org.litepal.b;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.exceptions.DataSupportException;

public final class g extends c
{
  private List<String> b;

  g(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a = paramSQLiteDatabase;
  }

  private List<String> a()
  {
    if (this.b == null)
      this.b = new ArrayList();
    return this.b;
  }

  private void a(Class<?> paramClass)
  {
    Iterator localIterator = b(paramClass.getName()).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      org.litepal.b.a.a locala = (org.litepal.b.a.a)localIterator.next();
      String str1 = com.arcsoft.hpay100.a.a.V(locala.b());
      if ((locala.f() == 2) || (locala.f() == 1))
      {
        String str2 = locala.c();
        if (paramClass.getName().equals(str2))
          continue;
        a().add(str1);
        continue;
      }
      if (locala.f() != 3)
        continue;
      String str3 = com.arcsoft.hpay100.a.a.S(com.arcsoft.hpay100.a.a.l(com.arcsoft.hpay100.a.a.S(paramClass.getSimpleName()), str1));
      a().add(str3);
    }
  }

  private void b(d paramd, Collection<org.litepal.b.a.a> paramCollection)
  {
    while (true)
    {
      org.litepal.b.a.a locala;
      try
      {
        Iterator localIterator1 = paramCollection.iterator();
        if (!localIterator1.hasNext())
          return;
        locala = (org.litepal.b.a.a)localIterator1.next();
        if ((locala.f() == 2) && (!paramd.getClassName().equals(locala.c())))
        {
          Collection localCollection = d(paramd, locala);
          if ((localCollection == null) || (localCollection.isEmpty()))
            continue;
          Iterator localIterator2 = localCollection.iterator();
          if (!localIterator2.hasNext())
            continue;
          d locald2 = (d)localIterator2.next();
          if (locald2 == null)
            continue;
          locald2.resetBaseObjId();
          continue;
          continue;
        }
      }
      catch (Exception localException)
      {
        throw new DataSupportException(localException.getMessage());
      }
      if (locala.f() != 1)
        continue;
      d locald1 = c(paramd, locala);
      if (locald1 == null)
        continue;
      locald1.resetBaseObjId();
    }
  }

  private static String c(String[] paramArrayOfString)
  {
    int i = 0;
    int j = -1 + paramArrayOfString.length;
    String str = paramArrayOfString[0];
    while (true)
    {
      if (i >= j)
        return str;
      str = str.replaceFirst("\\?", "'" + paramArrayOfString[(i + 1)] + "'");
      i++;
    }
  }

  private Collection<org.litepal.b.a.a> c(d paramd)
  {
    try
    {
      Collection localCollection = b(paramd.getClassName());
      a(paramd, localCollection);
      return localCollection;
    }
    catch (Exception localException)
    {
    }
    throw new DataSupportException(localException.getMessage());
  }

  private int d(d paramd)
  {
    Iterator localIterator = paramd.getAssociatedModelsMapForJoinTable().keySet().iterator();
    int i = 0;
    while (true)
    {
      if (!localIterator.hasNext())
        return i;
      String str1 = (String)localIterator.next();
      String str2 = com.arcsoft.hpay100.a.a.l(paramd.getTableName(), str1);
      String str3 = e(paramd.getTableName());
      i += this.a.delete(str2, str3 + " = " + paramd.getBaseObjId(), null);
    }
  }

  final int a(Class<?> paramClass, long paramLong)
  {
    a(paramClass);
    Iterator localIterator = a().iterator();
    int i = 0;
    while (true)
    {
      if (!localIterator.hasNext())
      {
        int j = i + this.a.delete(com.arcsoft.hpay100.a.a.S(paramClass.getSimpleName()), "id = " + paramLong, null);
        a().clear();
        return j;
      }
      String str1 = (String)localIterator.next();
      String str2 = e(com.arcsoft.hpay100.a.a.S(paramClass.getSimpleName()));
      i += this.a.delete(str1, str2 + " = " + paramLong, null);
    }
  }

  final int a(Class<?> paramClass, String[] paramArrayOfString)
  {
    com.arcsoft.hpay100.a.a.c(paramArrayOfString);
    a(paramClass);
    Iterator localIterator = a().iterator();
    int i = 0;
    while (true)
    {
      if (!localIterator.hasNext())
      {
        int j = i + this.a.delete(com.arcsoft.hpay100.a.a.S(paramClass.getSimpleName()), a(paramArrayOfString), b(paramArrayOfString));
        a().clear();
        return j;
      }
      String str1 = (String)localIterator.next();
      String str2 = com.arcsoft.hpay100.a.a.S(paramClass.getSimpleName());
      String str3 = e(str2);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str3).append(" in (select id from ");
      localStringBuilder.append(str2);
      if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
        localStringBuilder.append(" where ").append(c(paramArrayOfString));
      localStringBuilder.append(")");
      i += this.a.delete(str1, com.arcsoft.hpay100.a.a.S(localStringBuilder.toString()), null);
    }
  }

  final int a(String paramString, String[] paramArrayOfString)
  {
    com.arcsoft.hpay100.a.a.c(paramArrayOfString);
    return this.a.delete(paramString, a(paramArrayOfString), b(paramArrayOfString));
  }

  final int b(d paramd)
  {
    boolean bool = paramd.isSaved();
    int i = 0;
    Collection localCollection;
    Iterator localIterator;
    int j;
    if (bool)
    {
      localCollection = c(paramd);
      localIterator = paramd.getAssociatedModelsMapWithFK().keySet().iterator();
      j = 0;
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        i = j + d(paramd) + this.a.delete(paramd.getTableName(), "id = " + paramd.getBaseObjId(), null);
        b(paramd, localCollection);
        return i;
      }
      String str1 = (String)localIterator.next();
      String str2 = e(paramd.getTableName());
      j += this.a.delete(str1, str2 + " = " + paramd.getBaseObjId(), null);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.g
 * JD-Core Version:    0.6.0
 */