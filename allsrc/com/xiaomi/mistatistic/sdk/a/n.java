package com.xiaomi.mistatistic.sdk.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.b.i;

public final class n
{
  private static u a;

  public static i a(Cursor paramCursor)
  {
    new i();
    long l = paramCursor.getLong(2);
    String str1 = paramCursor.getString(4);
    String str2 = paramCursor.getString(5);
    String str3 = paramCursor.getString(1);
    String str4 = paramCursor.getString(3);
    String str5 = paramCursor.getString(6);
    i locali = new i();
    locali.a = str3;
    locali.c = str4;
    locali.e = str1;
    locali.b = l;
    locali.d = str2;
    locali.f = str5;
    return locali;
  }

  // ERROR //
  public static i a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 48	com/xiaomi/mistatistic/sdk/a/n:a	Lcom/xiaomi/mistatistic/sdk/a/u;
    //   5: invokevirtual 54	com/xiaomi/mistatistic/sdk/a/u:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   8: ldc 56
    //   10: aconst_null
    //   11: ldc 58
    //   13: iconst_2
    //   14: anewarray 60	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: aload_0
    //   20: aastore
    //   21: dup
    //   22: iconst_1
    //   23: aload_1
    //   24: aastore
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: invokevirtual 66	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore 6
    //   33: aload 6
    //   35: ifnull +89 -> 124
    //   38: aload 6
    //   40: invokeinterface 70 1 0
    //   45: ifeq +79 -> 124
    //   48: aload 6
    //   50: invokestatic 72	com/xiaomi/mistatistic/sdk/a/n:a	(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/b/i;
    //   53: astore 9
    //   55: aload 9
    //   57: astore 7
    //   59: aload 6
    //   61: ifnull +10 -> 71
    //   64: aload 6
    //   66: invokeinterface 75 1 0
    //   71: aload 7
    //   73: areturn
    //   74: astore 4
    //   76: aconst_null
    //   77: astore 5
    //   79: aload 5
    //   81: ifnull +41 -> 122
    //   84: aload 5
    //   86: invokeinterface 75 1 0
    //   91: aconst_null
    //   92: areturn
    //   93: astore_3
    //   94: aload_2
    //   95: ifnull +9 -> 104
    //   98: aload_2
    //   99: invokeinterface 75 1 0
    //   104: aload_3
    //   105: athrow
    //   106: astore_3
    //   107: aload 6
    //   109: astore_2
    //   110: goto -16 -> 94
    //   113: astore 8
    //   115: aload 6
    //   117: astore 5
    //   119: goto -40 -> 79
    //   122: aconst_null
    //   123: areturn
    //   124: aconst_null
    //   125: astore 7
    //   127: goto -68 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   2	33	74	android/database/sqlite/SQLiteException
    //   2	33	93	finally
    //   38	55	106	finally
    //   38	55	113	android/database/sqlite/SQLiteException
  }

  public static void a()
  {
    a = new u(r.b());
  }

  public static void a(long paramLong)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = a.getWritableDatabase();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      localSQLiteDatabase.delete("mistat_event", "ts<=?", arrayOfString);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
    }
  }

  public static void a(i parami)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("category", parami.a);
    String str1;
    if (TextUtils.isEmpty(parami.c))
      str1 = "";
    while (true)
    {
      localContentValues.put("key", str1);
      localContentValues.put("ts", Long.valueOf(parami.b));
      String str2;
      label64: String str3;
      label85: String str4;
      if (TextUtils.isEmpty(parami.d))
      {
        str2 = "";
        localContentValues.put("type", str2);
        if (!TextUtils.isEmpty(parami.e))
          break label147;
        str3 = "";
        localContentValues.put("value", str3);
        if (!TextUtils.isEmpty(parami.f))
          break label156;
        str4 = "";
        localContentValues.put("extra", str4);
      }
      try
      {
        a.getWritableDatabase().insert("mistat_event", "", localContentValues);
        return;
        str1 = parami.c;
        continue;
        str2 = parami.d;
        break label64;
        label147: str3 = parami.e;
        break label85;
        label156: str4 = parami.f;
      }
      catch (SQLiteException localSQLiteException)
      {
        new t();
        t.a("Error to insert data into DB, key=" + parami.c, localSQLiteException);
      }
    }
  }

  public static void a(String paramString1, String paramString2, String paramString3)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("value", paramString3);
    try
    {
      a.getWritableDatabase().update("mistat_event", localContentValues, "category=? AND key=?", new String[] { paramString2, paramString1 });
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      new t();
      t.a("Error to update data from DB, key=" + paramString1, localSQLiteException);
    }
  }

  public static Cursor b()
  {
    try
    {
      Cursor localCursor = a.getReadableDatabase().query("mistat_event", null, null, null, null, null, "ts DESC");
      return localCursor;
    }
    catch (SQLiteException localSQLiteException)
    {
      new t();
      t.a("Error while reading data from DB", localSQLiteException);
    }
    return null;
  }

  public static void c()
  {
    long l = System.currentTimeMillis() - 259200000L;
    try
    {
      SQLiteDatabase localSQLiteDatabase = a.getWritableDatabase();
      String[] arrayOfString = new String[2];
      arrayOfString[0] = String.valueOf(l);
      arrayOfString[1] = "mistat_basic";
      localSQLiteDatabase.delete("mistat_event", "ts<=? and category <> ?", arrayOfString);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
    }
  }

  // ERROR //
  public static int d()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: getstatic 48	com/xiaomi/mistatistic/sdk/a/n:a	Lcom/xiaomi/mistatistic/sdk/a/u;
    //   5: invokevirtual 54	com/xiaomi/mistatistic/sdk/a/u:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   8: ldc 56
    //   10: iconst_1
    //   11: anewarray 60	java/lang/String
    //   14: dup
    //   15: iconst_0
    //   16: ldc 185
    //   18: aastore
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: aconst_null
    //   23: aconst_null
    //   24: invokevirtual 66	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   27: astore 4
    //   29: aload 4
    //   31: ifnull +38 -> 69
    //   34: aload 4
    //   36: invokeinterface 70 1 0
    //   41: ifeq +28 -> 69
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 189 2 0
    //   52: istore 6
    //   54: aload 4
    //   56: ifnull +10 -> 66
    //   59: aload 4
    //   61: invokeinterface 75 1 0
    //   66: iload 6
    //   68: ireturn
    //   69: aload 4
    //   71: ifnull +10 -> 81
    //   74: aload 4
    //   76: invokeinterface 75 1 0
    //   81: iconst_0
    //   82: ireturn
    //   83: astore_2
    //   84: aconst_null
    //   85: astore_3
    //   86: aload_3
    //   87: ifnull -6 -> 81
    //   90: aload_3
    //   91: invokeinterface 75 1 0
    //   96: goto -15 -> 81
    //   99: astore_1
    //   100: aload_0
    //   101: ifnull +9 -> 110
    //   104: aload_0
    //   105: invokeinterface 75 1 0
    //   110: aload_1
    //   111: athrow
    //   112: astore_1
    //   113: aload 4
    //   115: astore_0
    //   116: goto -16 -> 100
    //   119: astore 5
    //   121: aload 4
    //   123: astore_3
    //   124: goto -38 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   2	29	83	android/database/sqlite/SQLiteException
    //   2	29	99	finally
    //   34	54	112	finally
    //   34	54	119	android/database/sqlite/SQLiteException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.n
 * JD-Core Version:    0.6.0
 */