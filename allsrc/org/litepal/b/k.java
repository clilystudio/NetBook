package org.litepal.b;

import android.database.sqlite.SQLiteDatabase;
import com.arcsoft.hpay100.a.a;
import java.util.List;

final class k extends c
{
  k(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a = paramSQLiteDatabase;
  }

  final double a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("avg(" + paramString2 + ")");
    return ((Double)a(paramString1, arrayOfString, paramArrayOfString, Double.TYPE)).doubleValue();
  }

  final int a(String paramString, String[] paramArrayOfString)
  {
    return ((Integer)a(paramString, new String[] { "count(1)" }, paramArrayOfString, Integer.TYPE)).intValue();
  }

  final <T> T a(Class<T> paramClass, long paramLong, boolean paramBoolean)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    List localList = a(paramClass, null, "id = ?", arrayOfString, null, null, null, null, a(paramClass.getName(), paramBoolean));
    int i = localList.size();
    Object localObject = null;
    if (i > 0)
      localObject = localList.get(0);
    return localObject;
  }

  final <T> T a(Class<T> paramClass, boolean paramBoolean)
  {
    List localList = a(paramClass, null, null, null, null, null, "id", "1", a(paramClass.getName(), paramBoolean));
    int i = localList.size();
    Object localObject = null;
    if (i > 0)
      localObject = localList.get(0);
    return localObject;
  }

  final <T> T a(String paramString1, String paramString2, String[] paramArrayOfString, Class<T> paramClass)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("max(" + paramString2 + ")");
    return a(paramString1, arrayOfString, paramArrayOfString, paramClass);
  }

  final <T> List<T> a(Class<T> paramClass, boolean paramBoolean, long[] paramArrayOfLong)
  {
    int i = 0;
    new Object[] { paramArrayOfLong };
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfLong.length;
    int k = 0;
    while (true)
    {
      if (k >= j)
        return a(paramClass, null, a.S(localStringBuilder.toString()), null, null, null, "id", null, a(paramClass.getName(), paramBoolean));
      long l = paramArrayOfLong[k];
      if (i != 0)
        localStringBuilder.append(" or ");
      localStringBuilder.append("id = ");
      localStringBuilder.append(l);
      k++;
      i = 1;
    }
  }

  final <T> T b(Class<T> paramClass, boolean paramBoolean)
  {
    List localList = a(paramClass, null, null, null, null, null, "id desc", "1", a(paramClass.getName(), paramBoolean));
    int i = localList.size();
    Object localObject = null;
    if (i > 0)
      localObject = localList.get(0);
    return localObject;
  }

  final <T> T b(String paramString1, String paramString2, String[] paramArrayOfString, Class<T> paramClass)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("min(" + paramString2 + ")");
    return a(paramString1, arrayOfString, paramArrayOfString, paramClass);
  }

  final <T> T c(String paramString1, String paramString2, String[] paramArrayOfString, Class<T> paramClass)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("sum(" + paramString2 + ")");
    return a(paramString1, arrayOfString, paramArrayOfString, paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.k
 * JD-Core Version:    0.6.0
 */