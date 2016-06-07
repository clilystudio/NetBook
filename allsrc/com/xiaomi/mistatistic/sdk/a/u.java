package com.xiaomi.mistatistic.sdk.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class u extends SQLiteOpenHelper
{
  private static Object a = new Object();

  public u(Context paramContext)
  {
    super(paramContext, "mistat.db", null, 1);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    synchronized (a)
    {
      paramSQLiteDatabase.execSQL(String.format("create table %s(_id integer primary key autoincrement, category text, ts integer, key text, value text, type text, extra text)", new Object[] { "mistat_event" }));
      return;
    }
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.u
 * JD-Core Version:    0.6.0
 */