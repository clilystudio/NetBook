package org.litepal.b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.exceptions.DataSupportException;

class l extends c
{
  l(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a = paramSQLiteDatabase;
  }

  private void a(ContentValues paramContentValues, d paramd)
  {
    Map localMap = paramd.getAssociatedModelsMapWithoutFK();
    Iterator localIterator = localMap.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      paramContentValues.put(e(str), (Long)localMap.get(str));
    }
  }

  private void a(d paramd, Field paramField, long paramLong)
  {
    while (true)
    {
      try
      {
        a(paramd, paramLong);
        if (paramField != null)
        {
          String str = paramField.getName();
          Class localClass = paramField.getType();
          if ((str == null) || (localClass == null) || (paramLong <= 0L))
            break label130;
          i = 1;
          if (i != 0)
          {
            if ((localClass != Integer.TYPE) && (localClass != Integer.class))
              continue;
            Object localObject = Integer.valueOf((int)paramLong);
            b.a(paramd, str, localObject, paramd.getClass());
            return;
            if ((localClass != Long.TYPE) && (localClass != Long.class))
              continue;
            localObject = Long.valueOf(paramLong);
            continue;
            throw new DataSupportException("id type is not supported. Only int or long is acceptable for id");
          }
        }
      }
      catch (Exception localException)
      {
        throw new DataSupportException(localException.getMessage());
      }
      return;
      label130: int i = 0;
    }
  }

  private void a(d paramd, List<Field> paramList)
  {
    ContentValues localContentValues = new ContentValues();
    a(paramd, paramList, localContentValues);
    a(localContentValues, paramd);
    long l = this.a.insert(paramd.getTableName(), null, localContentValues);
    if (l == -1L)
      throw new DataSupportException("Save current model failed.");
    a(paramd, b(paramList), l);
    c(paramd);
    a(paramd, false);
  }

  private void a(d paramd, boolean paramBoolean)
  {
    Map localMap = paramd.getAssociatedModelsMapForJoinTable();
    ContentValues localContentValues = new ContentValues();
    Iterator localIterator1 = localMap.keySet().iterator();
    while (true)
    {
      if (!localIterator1.hasNext())
        return;
      String str1 = (String)localIterator1.next();
      String str2 = a(paramd, str1);
      if (paramBoolean)
      {
        SQLiteDatabase localSQLiteDatabase = this.a;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(e(paramd.getTableName()));
        localStringBuilder.append(" = ?");
        String str3 = localStringBuilder.toString();
        String[] arrayOfString = new String[1];
        arrayOfString[0] = String.valueOf(paramd.getBaseObjId());
        localSQLiteDatabase.delete(str2, str3, arrayOfString);
      }
      Iterator localIterator2 = ((Set)localMap.get(str1)).iterator();
      while (localIterator2.hasNext())
      {
        long l = ((Long)localIterator2.next()).longValue();
        localContentValues.clear();
        localContentValues.put(e(paramd.getTableName()), Long.valueOf(paramd.getBaseObjId()));
        localContentValues.put(e(str1), Long.valueOf(l));
        this.a.insert(str2, null, localContentValues);
      }
    }
  }

  private Field b(List<Field> paramList)
  {
    Iterator localIterator = paramList.iterator();
    Field localField;
    do
    {
      if (!localIterator.hasNext())
        return null;
      localField = (Field)localIterator.next();
    }
    while (!d(localField.getName()));
    return localField;
  }

  private void b(d paramd, List<Field> paramList)
  {
    ContentValues localContentValues = new ContentValues();
    b(paramd, paramList, localContentValues);
    SQLiteDatabase localSQLiteDatabase = this.a;
    String str = paramd.getTableName();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramd.getBaseObjId());
    localSQLiteDatabase.update(str, localContentValues, "id = ?", arrayOfString);
    c(paramd);
    a(paramd, true);
    d(paramd);
  }

  private void b(d paramd, List<Field> paramList, ContentValues paramContentValues)
  {
    a(paramd, paramList, paramContentValues);
    a(paramContentValues, paramd);
    Iterator localIterator = paramd.getListToClearSelfFK().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      paramContentValues.putNull((String)localIterator.next());
    }
  }

  private void c(d paramd)
  {
    Map localMap = paramd.getAssociatedModelsMapWithFK();
    ContentValues localContentValues = new ContentValues();
    Iterator localIterator = localMap.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      localContentValues.clear();
      localContentValues.put(e(paramd.getTableName()), Long.valueOf(paramd.getBaseObjId()));
      Set localSet = (Set)localMap.get(str);
      if ((localSet == null) || (localSet.isEmpty()))
        continue;
      this.a.update(str, localContentValues, a(localSet), null);
    }
  }

  private void d(d paramd)
  {
    Iterator localIterator = paramd.getListToClearAssociatedFK().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str1 = (String)localIterator.next();
      String str2 = e(paramd.getTableName());
      ContentValues localContentValues = new ContentValues();
      localContentValues.putNull(str2);
      String str3 = str2 + " = " + paramd.getBaseObjId();
      this.a.update(str1, localContentValues, str3, null);
    }
  }

  final <T extends d> void b(Collection<T> paramCollection)
  {
    int i = 0;
    d[] arrayOfd;
    List localList;
    Collection localCollection;
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      arrayOfd = (d[])paramCollection.toArray(new d[0]);
      String str = arrayOfd[0].getClassName();
      localList = c(str);
      localCollection = b(str);
      int j = arrayOfd.length;
      if (i < j);
    }
    else
    {
      return;
    }
    d locald = arrayOfd[i];
    if (!locald.isSaved())
    {
      a(locald, localCollection);
      a(locald, localList);
      a(locald, localCollection);
    }
    while (true)
    {
      locald.clearAssociatedData();
      i++;
      break;
      a(locald, localCollection);
      b(locald, localList);
    }
  }

  final void b(d paramd)
  {
    String str = paramd.getClassName();
    List localList = c(str);
    Collection localCollection = b(str);
    if (!paramd.isSaved())
    {
      a(paramd, localCollection);
      a(paramd, localList);
      a(paramd, localCollection);
      return;
    }
    a(paramd, localCollection);
    b(paramd, localList);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.l
 * JD-Core Version:    0.6.0
 */