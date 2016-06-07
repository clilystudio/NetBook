package org.litepal.b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.arcsoft.hpay100.a.a;
import java.util.List;

class m extends c
{
  m(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a = paramSQLiteDatabase;
  }

  // ERROR //
  private void a(d paramd, ContentValues paramContentValues)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 21	org/litepal/b/m:a	(Lorg/litepal/b/d;)Lorg/litepal/b/d;
    //   7: astore 6
    //   9: aload 6
    //   11: invokevirtual 27	java/lang/Object:getClass	()Ljava/lang/Class;
    //   14: astore 7
    //   16: aload_1
    //   17: invokevirtual 33	org/litepal/b/d:getFieldsToSetToDefault	()Ljava/util/List;
    //   20: invokeinterface 39 1 0
    //   25: astore 8
    //   27: aconst_null
    //   28: astore 9
    //   30: aload 8
    //   32: invokeinterface 45 1 0
    //   37: ifne +4 -> 41
    //   40: return
    //   41: aload 8
    //   43: invokeinterface 49 1 0
    //   48: checkcast 51	java/lang/String
    //   51: astore_3
    //   52: aload_3
    //   53: invokestatic 55	org/litepal/b/m:d	(Ljava/lang/String;)Z
    //   56: istore 11
    //   58: iload 11
    //   60: ifne -30 -> 30
    //   63: aload_0
    //   64: aload 6
    //   66: aload 7
    //   68: aload_3
    //   69: invokevirtual 61	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   72: aload_2
    //   73: invokevirtual 64	org/litepal/b/m:a	(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    //   76: aload_3
    //   77: astore 9
    //   79: goto -49 -> 30
    //   82: astore 5
    //   84: new 66	org/litepal/exceptions/DataSupportException
    //   87: dup
    //   88: aload_1
    //   89: invokevirtual 70	org/litepal/b/d:getClassName	()Ljava/lang/String;
    //   92: aload_3
    //   93: invokestatic 74	org/litepal/exceptions/DataSupportException:noSuchFieldExceptioin	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   96: invokespecial 77	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   99: athrow
    //   100: astore 4
    //   102: new 66	org/litepal/exceptions/DataSupportException
    //   105: dup
    //   106: aload 4
    //   108: invokevirtual 80	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   111: invokespecial 77	org/litepal/exceptions/DataSupportException:<init>	(Ljava/lang/String;)V
    //   114: athrow
    //   115: astore 10
    //   117: aload 9
    //   119: astore_3
    //   120: goto -36 -> 84
    //
    // Exception table:
    //   from	to	target	type
    //   2	27	82	java/lang/NoSuchFieldException
    //   63	76	82	java/lang/NoSuchFieldException
    //   2	27	100	java/lang/Exception
    //   30	40	100	java/lang/Exception
    //   41	58	100	java/lang/Exception
    //   63	76	100	java/lang/Exception
    //   30	40	115	java/lang/NoSuchFieldException
    //   41	58	115	java/lang/NoSuchFieldException
  }

  private int b(String paramString, ContentValues paramContentValues, String[] paramArrayOfString)
  {
    a.c(paramArrayOfString);
    if (paramContentValues.size() > 0)
      return this.a.update(paramString, paramContentValues, a(paramArrayOfString), b(paramArrayOfString));
    return 0;
  }

  final int a(Class<?> paramClass, long paramLong, ContentValues paramContentValues)
  {
    if (paramContentValues.size() > 0)
      return this.a.update(a.S(paramClass.getSimpleName()), paramContentValues, "id = " + paramLong, null);
    return 0;
  }

  final int a(String paramString, ContentValues paramContentValues, String[] paramArrayOfString)
  {
    return b(paramString, paramContentValues, paramArrayOfString);
  }

  final int a(d paramd, String[] paramArrayOfString)
  {
    List localList = c(paramd.getClassName());
    ContentValues localContentValues = new ContentValues();
    a(paramd, localList, localContentValues);
    a(paramd, localContentValues);
    return b(paramd.getTableName(), localContentValues, paramArrayOfString);
  }

  final int b(d paramd, long paramLong)
  {
    List localList = c(paramd.getClassName());
    ContentValues localContentValues = new ContentValues();
    a(paramd, localList, localContentValues);
    a(paramd, localContentValues);
    if (localContentValues.size() > 0)
      return this.a.update(paramd.getTableName(), localContentValues, "id = " + paramLong, null);
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.m
 * JD-Core Version:    0.6.0
 */