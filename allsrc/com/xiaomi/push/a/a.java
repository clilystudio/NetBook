package com.xiaomi.push.a;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.xiaomi.a.a.a.b;

public final class a extends SQLiteOpenHelper
{
  public static final Object a;
  private static int b = 1;
  private static final String[] c;

  static
  {
    a = new Object();
    c = new String[] { "package_name", "TEXT", "message_ts", " LONG DEFAULT 0 ", "bytes", " LONG DEFAULT 0 ", "network_type", " INT DEFAULT -1 ", "rcv", " INT DEFAULT -1 ", "imsi", "TEXT" };
  }

  public a(Context paramContext)
  {
    super(paramContext, "traffic.db", null, b);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    synchronized (a)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder("CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,");
        for (int i = 0; i < 11; i += 2)
        {
          if (i != 0)
            localStringBuilder.append(",");
          localStringBuilder.append(c[i]).append(" ").append(c[(i + 1)]);
        }
        localStringBuilder.append(");");
        paramSQLiteDatabase.execSQL(localStringBuilder.toString());
        return;
      }
      catch (SQLException localSQLException)
      {
        while (true)
          b.a(localSQLException);
      }
    }
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.a.a
 * JD-Core Version:    0.6.0
 */