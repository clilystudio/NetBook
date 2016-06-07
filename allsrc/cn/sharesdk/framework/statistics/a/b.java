package cn.sharesdk.framework.statistics.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class b
{
  private static b c = null;
  private Context a;
  private a b;

  private b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = new a(this.a);
  }

  public static b a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (c == null)
        c = new b(paramContext);
      b localb = c;
      return localb;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public int a(String paramString)
  {
    Cursor localCursor = null;
    SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
    try
    {
      localCursor = localSQLiteDatabase.rawQuery("select count(*) from " + paramString, null);
      boolean bool = localCursor.moveToNext();
      int i = 0;
      if (bool)
      {
        int j = localCursor.getInt(0);
        i = j;
      }
      return i;
    }
    catch (Exception localException)
    {
      cn.sharesdk.framework.utils.d.a().w(localException);
      return 0;
    }
    finally
    {
      localCursor.close();
    }
    throw localObject;
  }

  // ERROR //
  public int a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	cn/sharesdk/framework/statistics/a/b:b	Lcn/sharesdk/framework/statistics/a/a;
    //   4: invokevirtual 41	cn/sharesdk/framework/statistics/a/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 4
    //   9: aload 4
    //   11: aload_1
    //   12: aload_2
    //   13: aload_3
    //   14: invokevirtual 90	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   17: istore 9
    //   19: iload 9
    //   21: istore 7
    //   23: invokestatic 80	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   26: astore 10
    //   28: iconst_2
    //   29: anewarray 4	java/lang/Object
    //   32: astore 11
    //   34: aload 11
    //   36: iconst_0
    //   37: iload 7
    //   39: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   42: aastore
    //   43: aload 11
    //   45: iconst_1
    //   46: aload_1
    //   47: aastore
    //   48: aload 10
    //   50: ldc 98
    //   52: aload 11
    //   54: invokevirtual 102	com/mob/tools/log/d:d	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   57: pop
    //   58: iload 7
    //   60: ireturn
    //   61: astore 5
    //   63: aload 5
    //   65: astore 6
    //   67: iconst_0
    //   68: istore 7
    //   70: invokestatic 80	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   73: aload 6
    //   75: ldc 104
    //   77: iconst_1
    //   78: anewarray 4	java/lang/Object
    //   81: dup
    //   82: iconst_0
    //   83: aload_1
    //   84: aastore
    //   85: invokevirtual 107	com/mob/tools/log/d:w	(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    //   88: pop
    //   89: iload 7
    //   91: ireturn
    //   92: astore 6
    //   94: goto -24 -> 70
    //
    // Exception table:
    //   from	to	target	type
    //   9	19	61	java/lang/Exception
    //   23	58	92	java/lang/Exception
  }

  public long a(String paramString, ContentValues paramContentValues)
  {
    SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
    try
    {
      long l = localSQLiteDatabase.replace(paramString, null, paramContentValues);
      return l;
    }
    catch (Exception localException)
    {
      cn.sharesdk.framework.utils.d.a().w(localException, "when insert database occur error table:%s,", new Object[] { paramString });
    }
    return -1L;
  }

  public Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3)
  {
    SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
    cn.sharesdk.framework.utils.d.a().d("Query table: %s", new Object[] { paramString1 });
    try
    {
      Cursor localCursor = localSQLiteDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString3);
      return localCursor;
    }
    catch (Exception localException)
    {
      cn.sharesdk.framework.utils.d.a().w(localException, "when query database occur error table:%s,", new Object[] { paramString1 });
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.a.b
 * JD-Core Version:    0.6.0
 */