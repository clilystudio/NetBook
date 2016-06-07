package org.litepal.d;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class e extends b
{
  private Collection<org.litepal.d.a.b> b;

  // ERROR //
  private List<String> c()
  {
    // Byte code:
    //   0: new 17	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 18	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 22	org/litepal/d/e:a	Landroid/database/sqlite/SQLiteDatabase;
    //   12: ldc 24
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 30	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore 5
    //   25: aload 5
    //   27: astore_3
    //   28: aload_3
    //   29: invokeinterface 36 1 0
    //   34: ifeq +104 -> 138
    //   37: aload_3
    //   38: aload_3
    //   39: ldc 38
    //   41: invokeinterface 42 2 0
    //   46: invokeinterface 46 2 0
    //   51: astore 6
    //   53: aload_3
    //   54: aload_3
    //   55: ldc 48
    //   57: invokeinterface 42 2 0
    //   62: invokeinterface 52 2 0
    //   67: istore 7
    //   69: aload_0
    //   70: invokespecial 55	org/litepal/d/e:d	()Ljava/util/List;
    //   73: aload 6
    //   75: invokestatic 60	com/arcsoft/hpay100/a/a:a	(Ljava/util/Collection;Ljava/lang/String;)Z
    //   78: ifne +72 -> 150
    //   81: iload 7
    //   83: ifne +67 -> 150
    //   86: iconst_1
    //   87: istore 8
    //   89: iload 8
    //   91: ifeq +34 -> 125
    //   94: ldc 62
    //   96: new 64	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 66
    //   102: invokespecial 69	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload 6
    //   107: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 82	org/litepal/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: aload_1
    //   117: aload 6
    //   119: invokeinterface 88 2 0
    //   124: pop
    //   125: aload_3
    //   126: invokeinterface 91 1 0
    //   131: istore 10
    //   133: iload 10
    //   135: ifne -98 -> 37
    //   138: aload_3
    //   139: ifnull +9 -> 148
    //   142: aload_3
    //   143: invokeinterface 94 1 0
    //   148: aload_1
    //   149: areturn
    //   150: iconst_0
    //   151: istore 8
    //   153: goto -64 -> 89
    //   156: astore 4
    //   158: aconst_null
    //   159: astore_3
    //   160: aload 4
    //   162: invokevirtual 97	java/lang/Exception:printStackTrace	()V
    //   165: aload_3
    //   166: ifnull -18 -> 148
    //   169: aload_3
    //   170: invokeinterface 94 1 0
    //   175: aload_1
    //   176: areturn
    //   177: astore_2
    //   178: aconst_null
    //   179: astore_3
    //   180: aload_3
    //   181: ifnull +9 -> 190
    //   184: aload_3
    //   185: invokeinterface 94 1 0
    //   190: aload_2
    //   191: athrow
    //   192: astore_2
    //   193: goto -13 -> 180
    //   196: astore 4
    //   198: goto -38 -> 160
    //
    // Exception table:
    //   from	to	target	type
    //   8	25	156	java/lang/Exception
    //   8	25	177	finally
    //   28	37	192	finally
    //   37	81	192	finally
    //   94	125	192	finally
    //   125	133	192	finally
    //   160	165	192	finally
    //   28	37	196	java/lang/Exception
    //   37	81	196	java/lang/Exception
    //   94	125	196	java/lang/Exception
    //   125	133	196	java/lang/Exception
  }

  private List<String> d()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.b.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      localArrayList.add(((org.litepal.d.a.b)localIterator.next()).a());
    }
  }

  protected final void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    this.b = a();
    this.a = paramSQLiteDatabase;
    List localList = c();
    a(localList, this.a);
    b(localList);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.e
 * JD-Core Version:    0.6.0
 */