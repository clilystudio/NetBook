package com.activeandroid;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.activeandroid.util.Log;

public final class ActiveAndroid
{
  public static void beginTransaction()
  {
    Cache.openDatabase().beginTransaction();
  }

  public static void clearCache()
  {
    Cache.clear();
  }

  public static void dispose()
  {
    Cache.dispose();
  }

  public static void endTransaction()
  {
    Cache.openDatabase().endTransaction();
  }

  public static void execSQL(String paramString)
  {
    Cache.openDatabase().execSQL(paramString);
  }

  public static void execSQL(String paramString, Object[] paramArrayOfObject)
  {
    Cache.openDatabase().execSQL(paramString, paramArrayOfObject);
  }

  public static SQLiteDatabase getDatabase()
  {
    return Cache.openDatabase();
  }

  public static boolean inTransaction()
  {
    return Cache.openDatabase().inTransaction();
  }

  public static void initialize(Context paramContext)
  {
    initialize(new Configuration.Builder(paramContext).create());
  }

  public static void initialize(Configuration paramConfiguration)
  {
    initialize(paramConfiguration, false);
  }

  public static void initialize(Configuration paramConfiguration, boolean paramBoolean)
  {
    setLoggingEnabled(paramBoolean);
    Cache.initialize(paramConfiguration);
  }

  public static void setLoggingEnabled(boolean paramBoolean)
  {
    Log.setEnabled(paramBoolean);
  }

  public static void setTransactionSuccessful()
  {
    Cache.openDatabase().setTransactionSuccessful();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.ActiveAndroid
 * JD-Core Version:    0.6.0
 */