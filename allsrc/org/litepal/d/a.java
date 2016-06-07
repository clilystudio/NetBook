package org.litepal.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.exceptions.DatabaseGenerateException;

public abstract class a extends f
{
  protected static String a(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("alter table ").append(paramString1).append(" add column ").append(paramString2).append(" ").append(paramString3);
    org.litepal.e.a.a("Generator", "add column sql is >> " + localStringBuilder);
    return localStringBuilder.toString();
  }

  private static boolean a(Cursor paramCursor, String paramString)
  {
    boolean bool = paramCursor.moveToFirst();
    int i = 0;
    if (bool);
    do
    {
      if (!paramCursor.getString(paramCursor.getColumnIndexOrThrow("name")).equalsIgnoreCase(paramString))
        continue;
      i = 1;
      return i;
    }
    while (paramCursor.moveToNext());
    return false;
  }

  protected static String f(String paramString)
  {
    return "drop table if exists " + paramString;
  }

  protected final String a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    Set localSet = paramMap.keySet();
    Iterator localIterator1 = localSet.iterator();
    String str1;
    label31: StringBuilder localStringBuilder;
    Iterator localIterator2;
    if (!localIterator1.hasNext())
    {
      str1 = "";
      if (!TextUtils.isEmpty(str1))
        localSet.remove(str1);
      localStringBuilder = new StringBuilder("create table ");
      localStringBuilder.append(paramString).append(" (");
      if (paramBoolean)
        localStringBuilder.append("id integer primary key autoincrement,");
      localIterator2 = localSet.iterator();
      if (!localIterator2.hasNext())
        localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
    }
    for (int i = 0; ; i = 1)
    {
      if (!localIterator2.hasNext())
      {
        localStringBuilder.append(")");
        org.litepal.e.a.a("Generator", "add column sql is >> " + localStringBuilder);
        return localStringBuilder.toString();
        str1 = (String)localIterator1.next();
        if (!d(str1))
          break;
        break label31;
      }
      if (i != 0)
        localStringBuilder.append(", ");
      String str2 = (String)localIterator2.next();
      localStringBuilder.append(str2).append(" ").append((String)paramMap.get(str2));
    }
  }

  protected abstract void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean);

  protected final void a(String paramString, int paramInt, SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor = null;
    StringBuilder localStringBuilder = new StringBuilder("select * from ");
    localStringBuilder.append("table_schema");
    org.litepal.e.a.a("Generator", "giveTableSchemaACopy SQL is >> " + localStringBuilder);
    try
    {
      localCursor = paramSQLiteDatabase.rawQuery(localStringBuilder.toString(), null);
      if ((!a(localCursor, paramString)) && (!"table_schema".equalsIgnoreCase(paramString)));
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
        {
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("name", com.arcsoft.hpay100.a.a.S(paramString));
          localContentValues.put("type", Integer.valueOf(paramInt));
          paramSQLiteDatabase.insert("table_schema", null, localContentValues);
        }
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
    throw localObject;
  }

  protected void b(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    Iterator localIterator = b().iterator();
    org.litepal.d.a.a locala;
    label171: label251: 
    do
    {
      String str1;
      while (true)
      {
        if (!localIterator.hasNext())
          return;
        locala = (org.litepal.d.a.a)localIterator.next();
        if ((2 != locala.d()) && (1 != locala.d()))
          break label251;
        str1 = locala.a();
        String str2 = locala.b();
        String str3 = locala.c();
        if (!com.arcsoft.hpay100.a.a.b(str1, paramSQLiteDatabase))
          break;
        if (com.arcsoft.hpay100.a.a.b(str2, paramSQLiteDatabase))
        {
          String str4;
          if (str1.equals(str3))
            str4 = e(str2);
          while (true)
          {
            if (com.arcsoft.hpay100.a.a.a(str4, str3, paramSQLiteDatabase))
              break label171;
            String[] arrayOfString = new String[1];
            arrayOfString[0] = a(str3, str4, "integer");
            a(arrayOfString, paramSQLiteDatabase);
            break;
            boolean bool = str2.equals(str3);
            str4 = null;
            if (!bool)
              continue;
            str4 = e(str1);
          }
          org.litepal.e.a.a("Generator", "column " + str4 + " is already exist, no need to add one");
          continue;
        }
        throw new DatabaseGenerateException("Table doesn't exist with the name of " + str2);
      }
      throw new DatabaseGenerateException("Table doesn't exist with the name of " + str1);
    }
    while (3 != locala.d());
    String str5 = locala.a();
    String str6 = locala.b();
    HashMap localHashMap = new HashMap();
    localHashMap.put(str5 + "_id", "integer");
    localHashMap.put(str6 + "_id", "integer");
    String str7 = com.arcsoft.hpay100.a.a.l(str5, str6);
    ArrayList localArrayList = new ArrayList();
    if (com.arcsoft.hpay100.a.a.b(str7, paramSQLiteDatabase))
      if (paramBoolean)
      {
        localArrayList.add(f(str7));
        localArrayList.add(a(str7, localHashMap, false));
      }
    while (true)
    {
      a((String[])localArrayList.toArray(new String[0]), paramSQLiteDatabase);
      a(str7, 1, paramSQLiteDatabase);
      break;
      localArrayList.add(a(str7, localHashMap, false));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.a
 * JD-Core Version:    0.6.0
 */