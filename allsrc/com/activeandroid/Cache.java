package com.activeandroid;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.util.LruCache;
import com.activeandroid.serializer.TypeSerializer;
import java.io.PrintStream;
import java.util.Collection;

public final class Cache
{
  public static final int DEFAULT_CACHE_SIZE = 1024;
  private static Context sContext;
  private static DatabaseHelper sDatabaseHelper;
  private static LruCache<String, Model> sEntities;
  private static boolean sIsInitialized = false;
  private static ModelInfo sModelInfo;

  public static void addEntity(Model paramModel)
  {
    monitorenter;
    try
    {
      sEntities.put(getIdentifier(paramModel), paramModel);
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

  public static void clear()
  {
    monitorenter;
    try
    {
      sEntities.evictAll();
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

  public static void closeDatabase()
  {
    monitorenter;
    try
    {
      sDatabaseHelper.close();
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

  public static void dispose()
  {
    monitorenter;
    try
    {
      closeDatabase();
      sEntities = null;
      sModelInfo = null;
      sDatabaseHelper = null;
      sIsInitialized = false;
      System.out.println("ActiveAndroid disposed. Call initialize to use library.");
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

  public static Context getContext()
  {
    return sContext;
  }

  public static Model getEntity(Class<? extends Model> paramClass, long paramLong)
  {
    monitorenter;
    try
    {
      Model localModel = (Model)sEntities.get(getIdentifier(paramClass, Long.valueOf(paramLong)));
      monitorexit;
      return localModel;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static String getIdentifier(Model paramModel)
  {
    return getIdentifier(paramModel.getClass(), paramModel.getId());
  }

  public static String getIdentifier(Class<? extends Model> paramClass, Long paramLong)
  {
    return getTableName(paramClass) + "@" + paramLong;
  }

  public static TypeSerializer getParserForType(Class<?> paramClass)
  {
    monitorenter;
    try
    {
      TypeSerializer localTypeSerializer = sModelInfo.getTypeSerializer(paramClass);
      monitorexit;
      return localTypeSerializer;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static TableInfo getTableInfo(Class<? extends Model> paramClass)
  {
    monitorenter;
    try
    {
      TableInfo localTableInfo = sModelInfo.getTableInfo(paramClass);
      monitorexit;
      return localTableInfo;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static Collection<TableInfo> getTableInfos()
  {
    monitorenter;
    try
    {
      Collection localCollection = sModelInfo.getTableInfos();
      monitorexit;
      return localCollection;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static String getTableName(Class<? extends Model> paramClass)
  {
    monitorenter;
    try
    {
      String str = sModelInfo.getTableInfo(paramClass).getTableName();
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void initialize(Configuration paramConfiguration)
  {
    monitorenter;
    try
    {
      boolean bool = sIsInitialized;
      if (bool);
      while (true)
      {
        return;
        sContext = paramConfiguration.getContext();
        sModelInfo = new ModelInfo(paramConfiguration);
        sDatabaseHelper = new DatabaseHelper(paramConfiguration);
        sEntities = new LruCache(paramConfiguration.getCacheSize());
        openDatabase();
        sIsInitialized = true;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static boolean isInitialized()
  {
    return sIsInitialized;
  }

  public static SQLiteDatabase openDatabase()
  {
    monitorenter;
    try
    {
      SQLiteDatabase localSQLiteDatabase = sDatabaseHelper.getWritableDatabase();
      monitorexit;
      return localSQLiteDatabase;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static void removeEntity(Model paramModel)
  {
    monitorenter;
    try
    {
      sEntities.remove(getIdentifier(paramModel));
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.Cache
 * JD-Core Version:    0.6.0
 */