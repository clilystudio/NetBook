package com.mob.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public final class b extends SQLiteOpenHelper
{
  public b(Context paramContext)
  {
    super(paramContext.getApplicationContext(), "ThrowalbeLog.db", null, 1);
  }

  public final void close()
  {
    monitorenter;
    try
    {
      super.close();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(" create table  table_exception(_id integer primary key autoincrement,exception_level integer not null, exception_msg text not null,exception_time timestamp not null, exception_md5 text not null, exception_counts integer DEFAULT 1, exception_sending bit);");
  }

  public final void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.a.a.b
 * JD-Core Version:    0.6.0
 */