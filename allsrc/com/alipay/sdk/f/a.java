package com.alipay.sdk.f;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;

public final class a extends SQLiteOpenHelper
{
  private WeakReference<Context> a;

  public a(Context paramContext)
  {
    super(paramContext, "msp.db", null, 1);
    this.a = new WeakReference(paramContext);
  }

  private static void a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    try
    {
      paramSQLiteDatabase.delete("tb_tid", "name=?", new String[] { paramString });
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = com.arcsoft.hpay100.a.a.a(1, paramString3, com.alipay.sdk.util.a.c((Context)this.a.get()));
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = str;
    arrayOfObject[1] = paramString4;
    arrayOfObject[2] = d(paramString1, paramString2);
    paramSQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", arrayOfObject);
  }

  // ERROR //
  private static boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: iconst_1
    //   3: anewarray 30	java/lang/String
    //   6: astore 7
    //   8: aload 7
    //   10: iconst_0
    //   11: aload_1
    //   12: aload_2
    //   13: invokestatic 60	com/alipay/sdk/f/a:d	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   16: aastore
    //   17: aload_0
    //   18: ldc 69
    //   20: aload 7
    //   22: invokevirtual 73	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore_3
    //   26: aload_3
    //   27: invokeinterface 79 1 0
    //   32: ifeq +85 -> 117
    //   35: aload_3
    //   36: iconst_0
    //   37: invokeinterface 83 2 0
    //   42: istore 9
    //   44: iload 9
    //   46: istore 8
    //   48: aload_3
    //   49: ifnull +61 -> 110
    //   52: aload_3
    //   53: invokeinterface 87 1 0
    //   58: iload 8
    //   60: istore 6
    //   62: iload 6
    //   64: ifle +38 -> 102
    //   67: iconst_1
    //   68: ireturn
    //   69: astore 5
    //   71: aload_3
    //   72: ifnull +32 -> 104
    //   75: aload_3
    //   76: invokeinterface 87 1 0
    //   81: iconst_0
    //   82: istore 6
    //   84: goto -22 -> 62
    //   87: astore 4
    //   89: aload_3
    //   90: ifnull +9 -> 99
    //   93: aload_3
    //   94: invokeinterface 87 1 0
    //   99: aload 4
    //   101: athrow
    //   102: iconst_0
    //   103: ireturn
    //   104: iconst_0
    //   105: istore 6
    //   107: goto -45 -> 62
    //   110: iload 8
    //   112: istore 6
    //   114: goto -52 -> 62
    //   117: iconst_0
    //   118: istore 8
    //   120: goto -72 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   2	44	69	java/lang/Exception
    //   2	44	87	finally
  }

  private static String d(String paramString1, String paramString2)
  {
    return paramString1 + paramString2;
  }

  // ERROR //
  public final void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokevirtual 104	com/alipay/sdk/f/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_3
    //   7: aload_0
    //   8: aload_3
    //   9: aload_1
    //   10: aload_2
    //   11: ldc 106
    //   13: ldc 106
    //   15: invokespecial 108	com/alipay/sdk/f/a:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   18: aload_3
    //   19: aload_1
    //   20: aload_2
    //   21: invokestatic 60	com/alipay/sdk/f/a:d	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: invokestatic 110	com/alipay/sdk/f/a:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   27: aload_3
    //   28: ifnull +14 -> 42
    //   31: aload_3
    //   32: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   35: ifeq +7 -> 42
    //   38: aload_3
    //   39: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   42: return
    //   43: astore 5
    //   45: aload_3
    //   46: ifnull -4 -> 42
    //   49: aload_3
    //   50: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   53: ifeq -11 -> 42
    //   56: aload_3
    //   57: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   60: return
    //   61: astore 4
    //   63: aload_3
    //   64: ifnull +14 -> 78
    //   67: aload_3
    //   68: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   71: ifeq +7 -> 78
    //   74: aload_3
    //   75: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   78: aload 4
    //   80: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	27	43	java/lang/Exception
    //   2	27	61	finally
  }

  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    SQLiteDatabase localSQLiteDatabase = null;
    try
    {
      localSQLiteDatabase = getWritableDatabase();
      if (a(localSQLiteDatabase, paramString1, paramString2))
        a(localSQLiteDatabase, paramString1, paramString2, paramString3, paramString4);
      while (true)
      {
        return;
        String str = com.arcsoft.hpay100.a.a.a(1, paramString3, com.alipay.sdk.util.a.c((Context)this.a.get()));
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = d(paramString1, paramString2);
        arrayOfObject[1] = str;
        arrayOfObject[2] = paramString4;
        localSQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", arrayOfObject);
        localCursor = localSQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (localCursor.getCount() > 14)
          break;
        localCursor.close();
      }
    }
    catch (Exception localException)
    {
      Cursor localCursor;
      return;
      int i = -14 + localCursor.getCount();
      String[] arrayOfString = new String[i];
      if (localCursor.moveToFirst())
      {
        int j = 0;
        do
        {
          arrayOfString[j] = localCursor.getString(0);
          j++;
        }
        while ((localCursor.moveToNext()) && (i > j));
      }
      localCursor.close();
      for (int k = 0; k < i; k++)
      {
        if (TextUtils.isEmpty(arrayOfString[k]))
          continue;
        a(localSQLiteDatabase, arrayOfString[k]);
      }
    }
    finally
    {
      if ((localSQLiteDatabase != null) && (localSQLiteDatabase.isOpen()))
        localSQLiteDatabase.close();
    }
    throw localObject;
  }

  // ERROR //
  public final String b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 142	com/alipay/sdk/f/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: astore 9
    //   6: aload 9
    //   8: astore 4
    //   10: iconst_1
    //   11: anewarray 30	java/lang/String
    //   14: astore 12
    //   16: aload 12
    //   18: iconst_0
    //   19: aload_1
    //   20: aload_2
    //   21: invokestatic 60	com/alipay/sdk/f/a:d	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: aastore
    //   25: aload 4
    //   27: ldc 144
    //   29: aload 12
    //   31: invokevirtual 73	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   34: astore 13
    //   36: aload 13
    //   38: astore 6
    //   40: aload 6
    //   42: invokeinterface 79 1 0
    //   47: istore 15
    //   49: aconst_null
    //   50: astore 16
    //   52: iload 15
    //   54: ifeq +17 -> 71
    //   57: aload 6
    //   59: iconst_0
    //   60: invokeinterface 129 2 0
    //   65: astore 17
    //   67: aload 17
    //   69: astore 16
    //   71: aload 6
    //   73: ifnull +10 -> 83
    //   76: aload 6
    //   78: invokeinterface 87 1 0
    //   83: aload 4
    //   85: ifnull +175 -> 260
    //   88: aload 4
    //   90: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   93: ifeq +167 -> 260
    //   96: aload 4
    //   98: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   101: aload 16
    //   103: astore 8
    //   105: aload 8
    //   107: invokestatic 138	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   110: ifne +24 -> 134
    //   113: iconst_2
    //   114: aload 8
    //   116: aload_0
    //   117: getfield 21	com/alipay/sdk/f/a:a	Ljava/lang/ref/WeakReference;
    //   120: invokevirtual 41	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   123: checkcast 43	android/content/Context
    //   126: invokestatic 49	com/alipay/sdk/util/a:c	(Landroid/content/Context;)Ljava/lang/String;
    //   129: invokestatic 54	com/arcsoft/hpay100/a/a:a	(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   132: astore 8
    //   134: aload 8
    //   136: areturn
    //   137: astore 7
    //   139: aconst_null
    //   140: astore 6
    //   142: aconst_null
    //   143: astore 4
    //   145: aload 6
    //   147: ifnull +10 -> 157
    //   150: aload 6
    //   152: invokeinterface 87 1 0
    //   157: aload 4
    //   159: ifnull +95 -> 254
    //   162: aload 4
    //   164: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   167: ifeq +87 -> 254
    //   170: aload 4
    //   172: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   175: aconst_null
    //   176: astore 8
    //   178: goto -73 -> 105
    //   181: astore_3
    //   182: aconst_null
    //   183: astore 4
    //   185: aload_3
    //   186: astore 5
    //   188: aconst_null
    //   189: astore 6
    //   191: aload 6
    //   193: ifnull +10 -> 203
    //   196: aload 6
    //   198: invokeinterface 87 1 0
    //   203: aload 4
    //   205: ifnull +16 -> 221
    //   208: aload 4
    //   210: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   213: ifeq +8 -> 221
    //   216: aload 4
    //   218: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   221: aload 5
    //   223: athrow
    //   224: astore 11
    //   226: aload 11
    //   228: astore 5
    //   230: aconst_null
    //   231: astore 6
    //   233: goto -42 -> 191
    //   236: astore 5
    //   238: goto -47 -> 191
    //   241: astore 10
    //   243: aconst_null
    //   244: astore 6
    //   246: goto -101 -> 145
    //   249: astore 14
    //   251: goto -106 -> 145
    //   254: aconst_null
    //   255: astore 8
    //   257: goto -152 -> 105
    //   260: aload 16
    //   262: astore 8
    //   264: goto -159 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	137	java/lang/Exception
    //   0	6	181	finally
    //   10	36	224	finally
    //   40	49	236	finally
    //   57	67	236	finally
    //   10	36	241	java/lang/Exception
    //   40	49	249	java/lang/Exception
    //   57	67	249	java/lang/Exception
  }

  // ERROR //
  public final String c(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 142	com/alipay/sdk/f/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: astore 10
    //   6: aload 10
    //   8: astore 4
    //   10: iconst_1
    //   11: anewarray 30	java/lang/String
    //   14: astore 13
    //   16: aload 13
    //   18: iconst_0
    //   19: aload_1
    //   20: aload_2
    //   21: invokestatic 60	com/alipay/sdk/f/a:d	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: aastore
    //   25: aload 4
    //   27: ldc 146
    //   29: aload 13
    //   31: invokevirtual 73	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   34: astore 14
    //   36: aload 14
    //   38: astore 6
    //   40: aload 6
    //   42: invokeinterface 79 1 0
    //   47: istore 16
    //   49: aconst_null
    //   50: astore 8
    //   52: iload 16
    //   54: ifeq +17 -> 71
    //   57: aload 6
    //   59: iconst_0
    //   60: invokeinterface 129 2 0
    //   65: astore 17
    //   67: aload 17
    //   69: astore 8
    //   71: aload 6
    //   73: ifnull +10 -> 83
    //   76: aload 6
    //   78: invokeinterface 87 1 0
    //   83: aload 4
    //   85: ifnull +16 -> 101
    //   88: aload 4
    //   90: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   93: ifeq +8 -> 101
    //   96: aload 4
    //   98: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   101: aload 8
    //   103: areturn
    //   104: astore 7
    //   106: aconst_null
    //   107: astore 6
    //   109: aconst_null
    //   110: astore 4
    //   112: aload 6
    //   114: ifnull +10 -> 124
    //   117: aload 6
    //   119: invokeinterface 87 1 0
    //   124: aconst_null
    //   125: astore 8
    //   127: aload 4
    //   129: ifnull -28 -> 101
    //   132: aload 4
    //   134: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   137: istore 9
    //   139: aconst_null
    //   140: astore 8
    //   142: iload 9
    //   144: ifeq -43 -> 101
    //   147: aload 4
    //   149: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   152: aconst_null
    //   153: areturn
    //   154: astore_3
    //   155: aconst_null
    //   156: astore 4
    //   158: aload_3
    //   159: astore 5
    //   161: aconst_null
    //   162: astore 6
    //   164: aload 6
    //   166: ifnull +10 -> 176
    //   169: aload 6
    //   171: invokeinterface 87 1 0
    //   176: aload 4
    //   178: ifnull +16 -> 194
    //   181: aload 4
    //   183: invokevirtual 113	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   186: ifeq +8 -> 194
    //   189: aload 4
    //   191: invokevirtual 114	android/database/sqlite/SQLiteDatabase:close	()V
    //   194: aload 5
    //   196: athrow
    //   197: astore 12
    //   199: aload 12
    //   201: astore 5
    //   203: aconst_null
    //   204: astore 6
    //   206: goto -42 -> 164
    //   209: astore 5
    //   211: goto -47 -> 164
    //   214: astore 11
    //   216: aconst_null
    //   217: astore 6
    //   219: goto -107 -> 112
    //   222: astore 15
    //   224: goto -112 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	104	java/lang/Exception
    //   0	6	154	finally
    //   10	36	197	finally
    //   40	49	209	finally
    //   57	67	209	finally
    //   10	36	214	java/lang/Exception
    //   40	49	222	java/lang/Exception
    //   57	67	222	java/lang/Exception
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("drop table if exists tb_tid");
    paramSQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.f.a
 * JD-Core Version:    0.6.0
 */