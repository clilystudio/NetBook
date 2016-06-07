package org.litepal.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import org.litepal.LitePalApplication;

final class g extends SQLiteOpenHelper
{
  private g(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, null, paramInt);
  }

  g(String paramString, int paramInt)
  {
    this(LitePalApplication.a(), paramString, null, paramInt);
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    f.a(paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    f.b(paramSQLiteDatabase);
    SharedPreferences.Editor localEditor = LitePalApplication.a().getSharedPreferences("litepal_prefs", 0).edit();
    localEditor.putInt("litepal_version", paramInt2);
    localEditor.commit();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.g
 * JD-Core Version:    0.6.0
 */