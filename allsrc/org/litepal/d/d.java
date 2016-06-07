package org.litepal.d;

import android.database.sqlite.SQLiteDatabase;
import java.util.Collection;
import java.util.Iterator;
import org.litepal.d.a.b;

class d extends a
{
  protected final String a(b paramb)
  {
    return a(paramb.a(), paramb.c(), true);
  }

  protected void a(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    Iterator localIterator = a().iterator();
    if (!localIterator.hasNext())
      return;
    b localb = (b)localIterator.next();
    String[] arrayOfString;
    if (paramBoolean)
    {
      arrayOfString = new String[2];
      arrayOfString[0] = f(localb.a());
      arrayOfString[1] = a(localb);
    }
    while (true)
    {
      a(arrayOfString, paramSQLiteDatabase);
      a(localb.a(), 0, paramSQLiteDatabase);
      break;
      if (com.arcsoft.hpay100.a.a.b(localb.a(), paramSQLiteDatabase))
      {
        arrayOfString = null;
        continue;
      }
      arrayOfString = new String[1];
      arrayOfString[0] = a(localb);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.d
 * JD-Core Version:    0.6.0
 */