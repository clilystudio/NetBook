package org.litepal.d;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.litepal.exceptions.DatabaseGenerateException;

public abstract class f extends org.litepal.a
{
  private Collection<org.litepal.d.a.b> a;
  private Collection<org.litepal.d.a.a> b;

  static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    d(paramSQLiteDatabase, true);
    c(paramSQLiteDatabase, true);
  }

  protected static void a(String[] paramArrayOfString, SQLiteDatabase paramSQLiteDatabase)
  {
    String str = "";
    if (paramArrayOfString != null)
    {
      int i;
      int j;
      do
        try
        {
          i = paramArrayOfString.length;
          j = 0;
          continue;
          str = paramArrayOfString[j];
          paramSQLiteDatabase.execSQL(com.arcsoft.hpay100.a.a.S(str));
          j++;
        }
        catch (SQLException localSQLException)
        {
          throw new DatabaseGenerateException("An exception that indicates there was an error with SQL parsing or execution. " + str);
        }
      while (j < i);
    }
  }

  static void b(SQLiteDatabase paramSQLiteDatabase)
  {
    new e().a(paramSQLiteDatabase, false);
    d(paramSQLiteDatabase, false);
    new h().b(paramSQLiteDatabase, false);
    new h().a(paramSQLiteDatabase, false);
    c(paramSQLiteDatabase, false);
  }

  private static void c(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    new d().b(paramSQLiteDatabase, paramBoolean);
  }

  private static void d(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    new d().a(paramSQLiteDatabase, paramBoolean);
  }

  protected final Collection<org.litepal.d.a.b> a()
  {
    if (this.a == null)
      this.a = new ArrayList();
    int i;
    Iterator localIterator;
    if ((this.a != null) && (this.a.size() == org.litepal.c.a.a().d().size()))
    {
      i = 1;
      if (i == 0)
      {
        this.a.clear();
        localIterator = org.litepal.c.a.a().d().iterator();
      }
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        return this.a;
        i = 0;
        break;
      }
      String str = (String)localIterator.next();
      this.a.add(a(str));
    }
  }

  protected abstract void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean);

  protected final Collection<org.litepal.d.a.a> b()
  {
    if ((this.b == null) || (this.b.isEmpty()))
      this.b = a(org.litepal.c.a.a().d());
    return this.b;
  }

  protected abstract void b(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.f
 * JD-Core Version:    0.6.0
 */