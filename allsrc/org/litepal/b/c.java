package org.litepal.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.litepal.exceptions.DataSupportException;

abstract class c extends org.litepal.a
{
  SQLiteDatabase a;
  private d b;
  private List<org.litepal.b.a.a> c;
  private List<org.litepal.b.a.a> d;

  private Object a(Class<?> paramClass)
  {
    while (true)
    {
      int k;
      int m;
      try
      {
        Constructor[] arrayOfConstructor = paramClass.getDeclaredConstructors();
        SparseArray localSparseArray = new SparseArray();
        i = 2147483647;
        int j = arrayOfConstructor.length;
        k = 0;
        if (k < j)
          continue;
        Constructor localConstructor1 = (Constructor)localSparseArray.get(i);
        if (localConstructor1 == null)
          continue;
        localConstructor1.setAccessible(true);
        return localConstructor1.newInstance(a(paramClass, localConstructor1));
        Constructor localConstructor2 = arrayOfConstructor[k];
        m = localConstructor2.getParameterTypes().length;
        Class[] arrayOfClass = localConstructor2.getParameterTypes();
        int n = arrayOfClass.length;
        int i1 = 0;
        if (i1 < n)
          continue;
        if (localSparseArray.get(m) == null)
        {
          localSparseArray.put(m, localConstructor2);
          break label175;
          Class localClass = arrayOfClass[i1];
          if (localClass != paramClass)
            continue;
          m += 10000;
          i1++;
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        throw new DataSupportException(localException.getMessage());
      }
      label175: 
      do
      {
        m = i;
        break;
      }
      while (m >= i);
      k++;
      int i = m;
    }
  }

  protected static String a(Collection<Long> paramCollection)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramCollection.iterator();
    for (int i = 0; ; i = 1)
    {
      if (!localIterator.hasNext())
        return com.arcsoft.hpay100.a.a.S(localStringBuilder.toString());
      long l = ((Long)localIterator.next()).longValue();
      if (i != 0)
        localStringBuilder.append(" or ");
      localStringBuilder.append("id = ");
      localStringBuilder.append(l);
    }
  }

  protected static String a(d paramd, String paramString)
  {
    return com.arcsoft.hpay100.a.a.S(com.arcsoft.hpay100.a.a.l(paramd.getTableName(), paramString));
  }

  private void a(Object paramObject, List<Field> paramList, List<org.litepal.b.a.a> paramList1, Cursor paramCursor)
  {
    Iterator localIterator1 = paramList.iterator();
    Iterator localIterator2;
    label30: Field localField;
    Object localObject1;
    label194: Object localObject2;
    if (!localIterator1.hasNext())
    {
      if (paramList1 != null)
      {
        localIterator2 = paramList1.iterator();
        if (localIterator2.hasNext());
      }
      else
      {
        return;
      }
    }
    else
    {
      localField = (Field)localIterator1.next();
      String str1 = b(localField.getType());
      if (d(localField.getName()));
      for (String str2 = "id"; ; str2 = localField.getName())
      {
        int i = paramCursor.getColumnIndex(com.arcsoft.hpay100.a.a.S(str2));
        if (i == -1)
          break;
        Class localClass = paramCursor.getClass();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        Method localMethod = localClass.getMethod(str1, arrayOfClass);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        localObject1 = localMethod.invoke(paramCursor, arrayOfObject);
        if (!d(localField.getName()))
          break label194;
        b.a(paramObject, localField.getName(), localObject1, paramObject.getClass());
        break;
      }
      if ((localField.getType() == Boolean.TYPE) || (localField.getType() == Boolean.class))
        if ("0".equals(String.valueOf(localObject1)))
          localObject2 = Boolean.valueOf(false);
    }
    while (true)
    {
      while (true)
      {
        a((d)paramObject, localField, localObject2);
        break;
        if (!"1".equals(String.valueOf(localObject1)))
          break label456;
        localObject2 = Boolean.valueOf(true);
        continue;
        if ((localField.getType() == Character.TYPE) || (localField.getType() == Character.class))
        {
          localObject2 = Character.valueOf(((String)localObject1).charAt(0));
          continue;
        }
        if (localField.getType() != Date.class)
          break label456;
        long l1 = ((Long)localObject1).longValue();
        if (l1 <= 0L)
        {
          localObject2 = null;
          continue;
        }
        localObject2 = new Date(l1);
        continue;
        org.litepal.b.a.a locala = (org.litepal.b.a.a)localIterator2.next();
        int j = paramCursor.getColumnIndex(e(com.arcsoft.hpay100.a.a.V(locala.b())));
        if (j == -1)
          break label30;
        long l2 = paramCursor.getLong(j);
        try
        {
          d locald = (d)d.find(Class.forName(locala.b()), l2);
          if (locald == null)
            break label30;
          a((d)paramObject, locala.d(), locald);
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          localClassNotFoundException.printStackTrace();
        }
      }
      break label30;
      label456: localObject2 = localObject1;
    }
  }

  protected static void a(d paramd, long paramLong)
  {
    if (paramLong > 0L)
      b.a(paramd, "baseObjId", Long.valueOf(paramLong), d.class);
  }

  protected static void a(d paramd, Collection<org.litepal.b.a.a> paramCollection)
  {
    while (true)
    {
      org.litepal.b.a.a locala;
      try
      {
        Iterator localIterator = paramCollection.iterator();
        if (!localIterator.hasNext())
          return;
        locala = (org.litepal.b.a.a)localIterator.next();
        if (locala.f() == 2)
        {
          new i().e(paramd, locala);
          continue;
        }
      }
      catch (Exception localException)
      {
        throw new DataSupportException(localException.getMessage());
      }
      if (locala.f() == 1)
      {
        new j().e(paramd, locala);
        continue;
      }
      if (locala.f() != 3)
        continue;
      new h().e(paramd, locala);
    }
  }

  private static boolean a(Field paramField)
  {
    return "boolean".equals(paramField.getType().getName());
  }

  private Object[] a(Class<?> paramClass, Constructor<?> paramConstructor)
  {
    Class[] arrayOfClass = paramConstructor.getParameterTypes();
    Object[] arrayOfObject = new Object[arrayOfClass.length];
    int i = 0;
    if (i >= arrayOfClass.length)
      return arrayOfObject;
    Class localClass = arrayOfClass[i];
    String str = localClass.getName();
    Object localObject;
    if (("boolean".equals(str)) || ("java.lang.Boolean".equals(str)))
      localObject = Boolean.valueOf(false);
    while (true)
    {
      arrayOfObject[i] = localObject;
      i++;
      break;
      if (("float".equals(str)) || ("java.lang.Float".equals(str)))
      {
        localObject = Float.valueOf(0.0F);
        continue;
      }
      if (("double".equals(str)) || ("java.lang.Double".equals(str)))
      {
        localObject = Double.valueOf(0.0D);
        continue;
      }
      if (("int".equals(str)) || ("java.lang.Integer".equals(str)))
      {
        localObject = Integer.valueOf(0);
        continue;
      }
      if (("long".equals(str)) || ("java.lang.Long".equals(str)))
      {
        localObject = Long.valueOf(0L);
        continue;
      }
      if (("short".equals(str)) || ("java.lang.Short".equals(str)))
      {
        localObject = Integer.valueOf(0);
        continue;
      }
      if (("char".equals(str)) || ("java.lang.Character".equals(str)))
      {
        localObject = Character.valueOf(' ');
        continue;
      }
      if ("java.lang.String".equals(str))
      {
        localObject = "";
        continue;
      }
      if (paramClass == localClass)
      {
        localObject = null;
        continue;
      }
      localObject = a(localClass);
    }
  }

  private String[] a(String[] paramArrayOfString, List<org.litepal.b.a.a> paramList)
  {
    if (paramArrayOfString != null)
    {
      String[] arrayOfString2;
      int j;
      if ((paramList != null) && (paramList.size() > 0))
      {
        arrayOfString2 = new String[paramArrayOfString.length + paramList.size()];
        System.arraycopy(paramArrayOfString, 0, arrayOfString2, 0, paramArrayOfString.length);
        j = 0;
        if (j < paramList.size())
          break label100;
        paramArrayOfString = arrayOfString2;
      }
      label172: for (int i = 0; ; i++)
      {
        if (i >= paramArrayOfString.length)
        {
          String[] arrayOfString1 = new String[1 + paramArrayOfString.length];
          System.arraycopy(paramArrayOfString, 0, arrayOfString1, 0, paramArrayOfString.length);
          arrayOfString1[paramArrayOfString.length] = com.arcsoft.hpay100.a.a.S("id");
          paramArrayOfString = arrayOfString1;
        }
        label100: String str1;
        do
        {
          return paramArrayOfString;
          String str2 = com.arcsoft.hpay100.a.a.V(((org.litepal.b.a.a)paramList.get(j)).b());
          arrayOfString2[(j + paramArrayOfString.length)] = e(str2);
          j++;
          break;
          str1 = paramArrayOfString[i];
          if (!d(str1))
            break label172;
        }
        while (!"_id".equalsIgnoreCase(str1));
        paramArrayOfString[i] = com.arcsoft.hpay100.a.a.S("id");
        return paramArrayOfString;
      }
    }
    return null;
  }

  private static String b(Class<?> paramClass)
  {
    String str1;
    String str2;
    if (paramClass.isPrimitive())
    {
      str1 = com.arcsoft.hpay100.a.a.T(paramClass.getName());
      str2 = "get" + str1;
      if (!"getBoolean".equals(str2))
        break label57;
      str2 = "getInt";
    }
    label57: 
    do
    {
      return str2;
      str1 = paramClass.getSimpleName();
      break;
      if ("getChar".equals(str2))
        return "getString";
      if ("getDate".equals(str2))
        return "getLong";
    }
    while (!"getInteger".equals(str2));
    return "getInt";
  }

  // ERROR //
  private void b(d paramd)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 358	org/litepal/b/c:d	Ljava/util/List;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 358	org/litepal/b/c:d	Ljava/util/List;
    //   12: invokeinterface 128 1 0
    //   17: astore_2
    //   18: aload_2
    //   19: invokeinterface 82 1 0
    //   24: ifeq -17 -> 7
    //   27: aload_2
    //   28: invokeinterface 95 1 0
    //   33: checkcast 220	org/litepal/b/a/a
    //   36: astore_3
    //   37: aload_3
    //   38: invokevirtual 222	org/litepal/b/a/a:b	()Ljava/lang/String;
    //   41: astore 4
    //   43: aload_3
    //   44: invokevirtual 255	org/litepal/b/a/a:f	()I
    //   47: iconst_3
    //   48: if_icmpne +279 -> 327
    //   51: iconst_1
    //   52: istore 5
    //   54: aload 4
    //   56: invokestatic 361	org/litepal/b/c:c	(Ljava/lang/String;)Ljava/util/List;
    //   59: astore 10
    //   61: iload 5
    //   63: ifeq +270 -> 333
    //   66: aload_1
    //   67: invokevirtual 118	org/litepal/b/d:getTableName	()Ljava/lang/String;
    //   70: astore 11
    //   72: aload 4
    //   74: invokestatic 225	com/arcsoft/hpay100/a/a:V	(Ljava/lang/String;)Ljava/lang/String;
    //   77: astore 12
    //   79: aload 11
    //   81: aload 12
    //   83: invokestatic 122	com/arcsoft/hpay100/a/a:l	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   86: astore 13
    //   88: new 69	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   95: astore 14
    //   97: aload 14
    //   99: ldc_w 363
    //   102: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: aload 12
    //   107: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: ldc_w 365
    //   113: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: aload 13
    //   118: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc_w 367
    //   124: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: new 69	java/lang/StringBuilder
    //   130: dup
    //   131: aload 12
    //   133: invokestatic 191	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   136: invokespecial 339	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: ldc_w 328
    //   142: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc_w 369
    //   154: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload 11
    //   159: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc_w 371
    //   165: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: iconst_2
    //   170: anewarray 188	java/lang/String
    //   173: astore 16
    //   175: aload 16
    //   177: iconst_0
    //   178: aload 14
    //   180: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 91	com/arcsoft/hpay100/a/a:S	(Ljava/lang/String;)Ljava/lang/String;
    //   186: aastore
    //   187: aload 16
    //   189: iconst_1
    //   190: aload_1
    //   191: invokevirtual 374	org/litepal/b/d:getBaseObjId	()J
    //   194: invokestatic 377	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   197: aastore
    //   198: aload 16
    //   200: invokestatic 381	org/litepal/b/d:findBySQL	([Ljava/lang/String;)Landroid/database/Cursor;
    //   203: astore 17
    //   205: aload 17
    //   207: astore 18
    //   209: aload 18
    //   211: invokeinterface 384 1 0
    //   216: ifeq +96 -> 312
    //   219: aload_0
    //   220: aload 4
    //   222: invokestatic 236	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   225: invokespecial 315	org/litepal/b/c:a	(Ljava/lang/Class;)Ljava/lang/Object;
    //   228: checkcast 115	org/litepal/b/d
    //   231: astore 19
    //   233: aload 19
    //   235: aload 18
    //   237: aload 18
    //   239: ldc 145
    //   241: invokeinterface 387 2 0
    //   246: invokeinterface 232 2 0
    //   251: invokestatic 389	org/litepal/b/c:a	(Lorg/litepal/b/d;J)V
    //   254: aload_0
    //   255: aload 19
    //   257: aload 10
    //   259: aconst_null
    //   260: aload 18
    //   262: invokespecial 391	org/litepal/b/c:a	(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V
    //   265: aload_3
    //   266: invokevirtual 255	org/litepal/b/a/a:f	()I
    //   269: iconst_2
    //   270: if_icmpeq +8 -> 278
    //   273: iload 5
    //   275: ifeq +155 -> 430
    //   278: aload_0
    //   279: aload_1
    //   280: aload_3
    //   281: invokevirtual 243	org/litepal/b/a/a:d	()Ljava/lang/reflect/Field;
    //   284: invokevirtual 394	org/litepal/b/c:a	(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    //   287: checkcast 72	java/util/Collection
    //   290: aload 19
    //   292: invokeinterface 397 2 0
    //   297: pop
    //   298: aload 18
    //   300: invokeinterface 400 1 0
    //   305: istore 20
    //   307: iload 20
    //   309: ifne -90 -> 219
    //   312: aload 18
    //   314: ifnull -296 -> 18
    //   317: aload 18
    //   319: invokeinterface 403 1 0
    //   324: goto -306 -> 18
    //   327: iconst_0
    //   328: istore 5
    //   330: goto -276 -> 54
    //   333: aload_3
    //   334: invokevirtual 405	org/litepal/b/a/a:a	()Ljava/lang/String;
    //   337: invokestatic 225	com/arcsoft/hpay100/a/a:V	(Ljava/lang/String;)Ljava/lang/String;
    //   340: invokestatic 228	org/litepal/b/c:e	(Ljava/lang/String;)Ljava/lang/String;
    //   343: astore 22
    //   345: aload 4
    //   347: invokestatic 225	com/arcsoft/hpay100/a/a:V	(Ljava/lang/String;)Ljava/lang/String;
    //   350: astore 23
    //   352: aload_0
    //   353: getfield 407	org/litepal/b/c:a	Landroid/database/sqlite/SQLiteDatabase;
    //   356: astore 24
    //   358: aload 23
    //   360: invokestatic 91	com/arcsoft/hpay100/a/a:S	(Ljava/lang/String;)Ljava/lang/String;
    //   363: astore 25
    //   365: new 69	java/lang/StringBuilder
    //   368: dup
    //   369: aload 22
    //   371: invokestatic 191	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   374: invokespecial 339	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   377: ldc_w 409
    //   380: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   386: astore 26
    //   388: iconst_1
    //   389: anewarray 188	java/lang/String
    //   392: astore 27
    //   394: aload 27
    //   396: iconst_0
    //   397: aload_1
    //   398: invokevirtual 374	org/litepal/b/d:getBaseObjId	()J
    //   401: invokestatic 377	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   404: aastore
    //   405: aload 24
    //   407: aload 25
    //   409: aconst_null
    //   410: aload 26
    //   412: aload 27
    //   414: aconst_null
    //   415: aconst_null
    //   416: aconst_null
    //   417: aconst_null
    //   418: invokevirtual 415	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   421: astore 28
    //   423: aload 28
    //   425: astore 18
    //   427: goto -218 -> 209
    //   430: aload_3
    //   431: invokevirtual 255	org/litepal/b/a/a:f	()I
    //   434: iconst_1
    //   435: if_icmpne -137 -> 298
    //   438: aload_0
    //   439: aload_1
    //   440: aload_3
    //   441: invokevirtual 243	org/litepal/b/a/a:d	()Ljava/lang/reflect/Field;
    //   444: aload 19
    //   446: invokevirtual 201	org/litepal/b/c:a	(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    //   449: goto -151 -> 298
    //   452: astore 6
    //   454: aload 18
    //   456: astore 7
    //   458: new 59	org/litepal/exceptions/DataSupportException
    //   461: dup
    //   462: aload 6
    //   464: invokevirtual 63	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   467: invokespecial 66	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   470: athrow
    //   471: astore 8
    //   473: aload 7
    //   475: astore 9
    //   477: aload 9
    //   479: ifnull +10 -> 489
    //   482: aload 9
    //   484: invokeinterface 403 1 0
    //   489: aload 8
    //   491: athrow
    //   492: astore 8
    //   494: aconst_null
    //   495: astore 9
    //   497: goto -20 -> 477
    //   500: astore 8
    //   502: aload 18
    //   504: astore 9
    //   506: goto -29 -> 477
    //   509: astore 6
    //   511: aconst_null
    //   512: astore 7
    //   514: goto -56 -> 458
    //
    // Exception table:
    //   from	to	target	type
    //   209	219	452	java/lang/Exception
    //   219	273	452	java/lang/Exception
    //   278	298	452	java/lang/Exception
    //   298	307	452	java/lang/Exception
    //   430	449	452	java/lang/Exception
    //   458	471	471	finally
    //   54	61	492	finally
    //   66	205	492	finally
    //   333	423	492	finally
    //   209	219	500	finally
    //   219	273	500	finally
    //   278	298	500	finally
    //   298	307	500	finally
    //   430	449	500	finally
    //   54	61	509	java/lang/Exception
    //   66	205	509	java/lang/Exception
    //   333	423	509	java/lang/Exception
  }

  private static boolean b(d paramd, Field paramField)
  {
    return (paramd != null) && (paramField != null);
  }

  // ERROR //
  protected final <T> T a(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2, Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokestatic 420	com/arcsoft/hpay100/a/a:c	([Ljava/lang/String;)V
    //   4: aload_0
    //   5: getfield 407	org/litepal/b/c:a	Landroid/database/sqlite/SQLiteDatabase;
    //   8: aload_1
    //   9: aload_2
    //   10: aload_0
    //   11: aload_3
    //   12: invokevirtual 423	org/litepal/b/c:a	([Ljava/lang/String;)Ljava/lang/String;
    //   15: aload_0
    //   16: aload_3
    //   17: invokevirtual 426	org/litepal/b/c:b	([Ljava/lang/String;)[Ljava/lang/String;
    //   20: aconst_null
    //   21: aconst_null
    //   22: aconst_null
    //   23: invokevirtual 429	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   26: astore 8
    //   28: aload 8
    //   30: astore 6
    //   32: aload 6
    //   34: invokeinterface 384 1 0
    //   39: istore 9
    //   41: aconst_null
    //   42: astore 10
    //   44: iload 9
    //   46: ifeq +70 -> 116
    //   49: aload 6
    //   51: invokevirtual 156	java/lang/Object:getClass	()Ljava/lang/Class;
    //   54: astore 11
    //   56: aload 4
    //   58: invokestatic 137	org/litepal/b/c:b	(Ljava/lang/Class;)Ljava/lang/String;
    //   61: astore 12
    //   63: iconst_1
    //   64: anewarray 21	java/lang/Class
    //   67: astore 13
    //   69: aload 13
    //   71: iconst_0
    //   72: getstatic 162	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   75: aastore
    //   76: aload 11
    //   78: aload 12
    //   80: aload 13
    //   82: invokevirtual 166	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   85: astore 14
    //   87: iconst_1
    //   88: anewarray 153	java/lang/Object
    //   91: astore 15
    //   93: aload 15
    //   95: iconst_0
    //   96: iconst_0
    //   97: invokestatic 170	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   100: aastore
    //   101: aload 14
    //   103: aload 6
    //   105: aload 15
    //   107: invokevirtual 176	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   110: astore 16
    //   112: aload 16
    //   114: astore 10
    //   116: aload 6
    //   118: ifnull +10 -> 128
    //   121: aload 6
    //   123: invokeinterface 403 1 0
    //   128: aload 10
    //   130: areturn
    //   131: astore 7
    //   133: aconst_null
    //   134: astore 6
    //   136: new 59	org/litepal/exceptions/DataSupportException
    //   139: dup
    //   140: aload 7
    //   142: invokevirtual 63	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   145: invokespecial 66	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   148: athrow
    //   149: astore 5
    //   151: aload 6
    //   153: ifnull +10 -> 163
    //   156: aload 6
    //   158: invokeinterface 403 1 0
    //   163: aload 5
    //   165: athrow
    //   166: astore 5
    //   168: aconst_null
    //   169: astore 6
    //   171: goto -20 -> 151
    //   174: astore 7
    //   176: goto -40 -> 136
    //
    // Exception table:
    //   from	to	target	type
    //   4	28	131	java/lang/Exception
    //   32	41	149	finally
    //   49	112	149	finally
    //   136	149	149	finally
    //   4	28	166	finally
    //   32	41	174	java/lang/Exception
    //   49	112	174	java/lang/Exception
  }

  protected final Object a(d paramd, Field paramField)
  {
    if (b(paramd, paramField))
    {
      String str1 = paramField.getName();
      String str2;
      if (a(paramField))
      {
        if (str1.matches("^is[A-Z]{1}.*$"))
          str1 = str1.substring(2);
        str2 = "is";
        if (!str1.matches("^[a-z]{1}[A-Z]{1}.*"))
          break label93;
      }
      label93: for (String str3 = str2 + str1; ; str3 = str2 + com.arcsoft.hpay100.a.a.T(str1))
      {
        return b.a(paramd, str3, null, paramd.getClass(), null);
        str2 = "get";
        break;
      }
    }
    return null;
  }

  protected final String a(String[] paramArrayOfString)
  {
    new Object[] { paramArrayOfString };
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
      return paramArrayOfString[0];
    return null;
  }

  // ERROR //
  protected final <T> List<T> a(Class<T> paramClass, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4, String paramString5, List<org.litepal.b.a.a> paramList)
  {
    // Byte code:
    //   0: new 452	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 453	java/util/ArrayList:<init>	()V
    //   7: astore 10
    //   9: aload_1
    //   10: invokevirtual 273	java/lang/Class:getName	()Ljava/lang/String;
    //   13: invokestatic 361	org/litepal/b/c:c	(Ljava/lang/String;)Ljava/util/List;
    //   16: astore 15
    //   18: aload_1
    //   19: invokevirtual 346	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   22: invokestatic 91	com/arcsoft/hpay100/a/a:S	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore 16
    //   27: aload_0
    //   28: aconst_null
    //   29: aload 9
    //   31: invokespecial 455	org/litepal/b/c:a	([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    //   34: astore 17
    //   36: aload_0
    //   37: getfield 407	org/litepal/b/c:a	Landroid/database/sqlite/SQLiteDatabase;
    //   40: aload 16
    //   42: aload 17
    //   44: aload_3
    //   45: aload 4
    //   47: aconst_null
    //   48: aconst_null
    //   49: aload 7
    //   51: aload 8
    //   53: invokevirtual 415	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   56: astore 18
    //   58: aload 18
    //   60: astore 12
    //   62: aload 12
    //   64: invokeinterface 384 1 0
    //   69: ifeq +84 -> 153
    //   72: aload_0
    //   73: aload_1
    //   74: invokespecial 315	org/litepal/b/c:a	(Ljava/lang/Class;)Ljava/lang/Object;
    //   77: astore 19
    //   79: aload 19
    //   81: checkcast 115	org/litepal/b/d
    //   84: aload 12
    //   86: aload 12
    //   88: ldc 145
    //   90: invokeinterface 387 2 0
    //   95: invokeinterface 232 2 0
    //   100: invokestatic 389	org/litepal/b/c:a	(Lorg/litepal/b/d;J)V
    //   103: aload_0
    //   104: aload 19
    //   106: aload 15
    //   108: aload 9
    //   110: aload 12
    //   112: invokespecial 391	org/litepal/b/c:a	(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V
    //   115: aload 9
    //   117: ifnull +12 -> 129
    //   120: aload_0
    //   121: aload 19
    //   123: checkcast 115	org/litepal/b/d
    //   126: invokespecial 457	org/litepal/b/c:b	(Lorg/litepal/b/d;)V
    //   129: aload 10
    //   131: aload 19
    //   133: invokeinterface 458 2 0
    //   138: pop
    //   139: aload 12
    //   141: invokeinterface 400 1 0
    //   146: istore 21
    //   148: iload 21
    //   150: ifne -78 -> 72
    //   153: aload 12
    //   155: ifnull +10 -> 165
    //   158: aload 12
    //   160: invokeinterface 403 1 0
    //   165: aload 10
    //   167: areturn
    //   168: astore 13
    //   170: aconst_null
    //   171: astore 14
    //   173: aload 13
    //   175: invokevirtual 57	java/lang/Exception:printStackTrace	()V
    //   178: new 59	org/litepal/exceptions/DataSupportException
    //   181: dup
    //   182: aload 13
    //   184: invokevirtual 63	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   187: invokespecial 66	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   190: athrow
    //   191: astore 11
    //   193: aload 14
    //   195: astore 12
    //   197: aload 12
    //   199: ifnull +10 -> 209
    //   202: aload 12
    //   204: invokeinterface 403 1 0
    //   209: aload 11
    //   211: athrow
    //   212: astore 11
    //   214: aconst_null
    //   215: astore 12
    //   217: goto -20 -> 197
    //   220: astore 11
    //   222: goto -25 -> 197
    //   225: astore 13
    //   227: aload 12
    //   229: astore 14
    //   231: goto -58 -> 173
    //
    // Exception table:
    //   from	to	target	type
    //   9	58	168	java/lang/Exception
    //   173	191	191	finally
    //   9	58	212	finally
    //   62	72	220	finally
    //   72	115	220	finally
    //   120	129	220	finally
    //   129	148	220	finally
    //   62	72	225	java/lang/Exception
    //   72	115	225	java/lang/Exception
    //   120	129	225	java/lang/Exception
    //   129	148	225	java/lang/Exception
  }

  protected final List<org.litepal.b.a.a> a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Collection localCollection = b(paramString);
      label46: Iterator localIterator;
      if (this.c == null)
      {
        this.c = new ArrayList();
        if (this.d != null)
          break label81;
        this.d = new ArrayList();
        localIterator = localCollection.iterator();
      }
      while (true)
      {
        if (!localIterator.hasNext())
        {
          return this.c;
          this.c.clear();
          break;
          label81: this.d.clear();
          break label46;
        }
        org.litepal.b.a.a locala = (org.litepal.b.a.a)localIterator.next();
        if ((locala.f() == 2) || (locala.f() == 1))
        {
          if (locala.c().equals(paramString))
          {
            this.c.add(locala);
            continue;
          }
          this.d.add(locala);
          continue;
        }
        if (locala.f() != 3)
          continue;
        this.d.add(locala);
      }
    }
    return null;
  }

  // ERROR //
  protected final d a(d paramd)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 474	org/litepal/b/c:b	Lorg/litepal/b/d;
    //   4: ifnull +8 -> 12
    //   7: aload_0
    //   8: getfield 474	org/litepal/b/c:b	Lorg/litepal/b/d;
    //   11: areturn
    //   12: aconst_null
    //   13: astore_2
    //   14: aload_1
    //   15: invokevirtual 477	org/litepal/b/d:getClassName	()Ljava/lang/String;
    //   18: astore 7
    //   20: aload 7
    //   22: astore 5
    //   24: aload_0
    //   25: aload 5
    //   27: invokestatic 236	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   30: invokevirtual 479	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   33: checkcast 115	org/litepal/b/d
    //   36: putfield 474	org/litepal/b/c:b	Lorg/litepal/b/d;
    //   39: aload_0
    //   40: getfield 474	org/litepal/b/c:b	Lorg/litepal/b/d;
    //   43: astore 10
    //   45: aload 10
    //   47: areturn
    //   48: astore 6
    //   50: new 481	org/litepal/exceptions/DatabaseGenerateException
    //   53: dup
    //   54: new 69	java/lang/StringBuilder
    //   57: dup
    //   58: ldc_w 483
    //   61: invokespecial 339	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload_2
    //   65: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokespecial 484	org/litepal/exceptions/DatabaseGenerateException:<init>	(Ljava/lang/String;)V
    //   74: athrow
    //   75: astore 4
    //   77: aconst_null
    //   78: astore 5
    //   80: new 59	org/litepal/exceptions/DataSupportException
    //   83: dup
    //   84: new 69	java/lang/StringBuilder
    //   87: dup
    //   88: aload 5
    //   90: invokestatic 191	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   93: invokespecial 339	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   96: ldc_w 486
    //   99: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokespecial 66	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   108: athrow
    //   109: astore_3
    //   110: new 59	org/litepal/exceptions/DataSupportException
    //   113: dup
    //   114: aload_3
    //   115: invokevirtual 63	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   118: invokespecial 66	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   121: athrow
    //   122: astore 9
    //   124: goto -44 -> 80
    //   127: astore 8
    //   129: aload 5
    //   131: astore_2
    //   132: goto -82 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   14	20	48	java/lang/ClassNotFoundException
    //   14	20	75	java/lang/InstantiationException
    //   14	20	109	java/lang/Exception
    //   24	45	109	java/lang/Exception
    //   24	45	122	java/lang/InstantiationException
    //   24	45	127	java/lang/ClassNotFoundException
  }

  protected final void a(d paramd, Field paramField, ContentValues paramContentValues)
  {
    Object localObject1 = a(paramd, paramField);
    if (("java.util.Date".equals(paramField.getType().getName())) && (localObject1 != null))
      localObject1 = Long.valueOf(((Date)localObject1).getTime());
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = com.arcsoft.hpay100.a.a.S(paramField.getName());
    arrayOfObject[1] = localObject1;
    String str1 = paramField.getType().getName();
    int i;
    Object localObject2;
    if ((!str1.equals("char")) && (!str1.endsWith("Character")))
    {
      i = 0;
      if (i == 0)
        break label152;
      arrayOfObject[1] = String.valueOf(localObject1);
      localObject2 = new Class[] { String.class, String.class };
    }
    while (true)
    {
      b.a(paramContentValues, "put", arrayOfObject, paramContentValues.getClass(), localObject2);
      return;
      i = 1;
      break;
      label152: if (paramField.getType().isPrimitive())
      {
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = String.class;
        Class localClass = paramField.getType();
        String str2;
        Object localObject3;
        if ((localClass != null) && (localClass.isPrimitive()))
        {
          str2 = localClass.getName();
          if ("int".equals(str2))
            localObject3 = Integer.class;
        }
        while (true)
        {
          arrayOfClass[1] = localObject3;
          localObject2 = arrayOfClass;
          break;
          if ("short".equals(str2))
          {
            localObject3 = Short.class;
            continue;
          }
          if ("long".equals(str2))
          {
            localObject3 = Long.class;
            continue;
          }
          if ("float".equals(str2))
          {
            localObject3 = Float.class;
            continue;
          }
          if ("double".equals(str2))
          {
            localObject3 = Double.class;
            continue;
          }
          if ("boolean".equals(str2))
          {
            localObject3 = Boolean.class;
            continue;
          }
          if ("char".equals(str2))
          {
            localObject3 = Character.class;
            continue;
          }
          localObject3 = null;
        }
      }
      if ("java.util.Date".equals(paramField.getType().getName()))
      {
        localObject2 = new Class[] { String.class, Long.class };
        continue;
      }
      localObject2 = new Class[2];
      localObject2[0] = String.class;
      localObject2[1] = paramField.getType();
    }
  }

  protected final void a(d paramd, Field paramField, Object paramObject)
  {
    String str;
    if (b(paramd, paramField))
    {
      if ((!a(paramField)) || (!paramField.getName().matches("^is[A-Z]{1}.*$")))
        break label101;
      str = "set" + paramField.getName().substring(2);
    }
    while (true)
    {
      Object[] arrayOfObject = { paramObject };
      Class localClass = paramd.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = paramField.getType();
      b.a(paramd, str, arrayOfObject, localClass, arrayOfClass);
      return;
      label101: if (paramField.getName().matches("^[a-z]{1}[A-Z]{1}.*"))
      {
        str = "set" + paramField.getName();
        continue;
      }
      str = "set" + com.arcsoft.hpay100.a.a.T(paramField.getName());
    }
  }

  protected final void a(d paramd, List<Field> paramList, ContentValues paramContentValues)
  {
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Field localField = (Field)localIterator.next();
      if (d(localField.getName()))
        continue;
      if (m.class.getName().equals(getClass().getName()))
      {
        d locald = a(paramd);
        Object localObject1 = a(paramd, localField);
        Object localObject2 = a(locald, localField);
        boolean bool;
        if ((localObject1 != null) && (localObject2 != null))
          bool = a(paramd, localField).toString().equals(a(locald, localField).toString());
        while (true)
        {
          if (bool)
            break label156;
          a(paramd, localField, paramContentValues);
          break;
          if (localObject1 == localObject2)
          {
            bool = true;
            continue;
          }
          bool = false;
        }
        label156: continue;
      }
      if (!l.class.getName().equals(getClass().getName()))
        continue;
      a(paramd, localField, paramContentValues);
    }
  }

  protected final String[] b(String[] paramArrayOfString)
  {
    new Object[] { paramArrayOfString };
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 1))
    {
      String[] arrayOfString = new String[-1 + paramArrayOfString.length];
      System.arraycopy(paramArrayOfString, 1, arrayOfString, 0, -1 + paramArrayOfString.length);
      return arrayOfString;
    }
    return null;
  }

  protected final d c(d paramd, org.litepal.b.a.a parama)
  {
    return (d)a(paramd, parama.d());
  }

  protected final Collection<d> d(d paramd, org.litepal.b.a.a parama)
  {
    return (Collection)a(paramd, parama.d());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.c
 * JD-Core Version:    0.6.0
 */