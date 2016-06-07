package com.activeandroid;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.activeandroid.util.Log;
import com.activeandroid.util.SQLiteUtils;
import com.ushaqi.zhuishushenqi.db.b;
import com.ushaqi.zhuishushenqi.db.c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class DatabaseHelper extends SQLiteOpenHelper
{
  public static final String MIGRATION_PATH = "migrations";
  private final String mSqlParser;

  public DatabaseHelper(Configuration paramConfiguration)
  {
    super(paramConfiguration.getContext(), paramConfiguration.getDatabaseName(), null, paramConfiguration.getDatabaseVersion());
    copyAttachedDatabase(paramConfiguration.getContext(), paramConfiguration.getDatabaseName());
    this.mSqlParser = paramConfiguration.getSqlParser();
  }

  private void executeCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.beginTransaction();
    try
    {
      Iterator localIterator = Cache.getTableInfos().iterator();
      while (localIterator.hasNext())
        paramSQLiteDatabase.execSQL(SQLiteUtils.createTableDefinition((TableInfo)localIterator.next()));
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
    paramSQLiteDatabase.setTransactionSuccessful();
    paramSQLiteDatabase.endTransaction();
  }

  private void executeCreateIndex(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.beginTransaction();
    try
    {
      Iterator localIterator = Cache.getTableInfos().iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = SQLiteUtils.createIndexDefinition((TableInfo)localIterator.next());
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
          paramSQLiteDatabase.execSQL(arrayOfString[j]);
      }
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
    throw localObject;
  }

  private void executeMigrations2(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    List localList = b.a();
    paramSQLiteDatabase.beginTransaction();
    try
    {
      Iterator localIterator = localList.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          c localc = (c)localIterator.next();
          int i = localc.a();
          if ((i <= paramInt1) || (i > paramInt2))
            continue;
          String[] arrayOfString = localc.b();
          if (arrayOfString == null)
            return;
          int j = arrayOfString.length;
          int k = 0;
          while (k < j)
          {
            String str = arrayOfString[k];
            try
            {
              paramSQLiteDatabase.execSQL(str);
              k++;
            }
            catch (SQLException localSQLException)
            {
              while (true)
                localSQLException.printStackTrace();
            }
          }
        }
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
    paramSQLiteDatabase.setTransactionSuccessful();
    paramSQLiteDatabase.endTransaction();
  }

  private void executePragmas(SQLiteDatabase paramSQLiteDatabase)
  {
    if (SQLiteUtils.FOREIGN_KEYS_SUPPORTED)
    {
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
      Log.i("Foreign Keys supported. Enabling foreign key features.");
    }
  }

  public final void copyAttachedDatabase(Context paramContext, String paramString)
  {
    File localFile = paramContext.getDatabasePath(paramString);
    if (localFile.exists())
      return;
    localFile.getParentFile().mkdirs();
    InputStream localInputStream;
    FileOutputStream localFileOutputStream;
    try
    {
      localInputStream = paramContext.getAssets().open(paramString);
      localFileOutputStream = new FileOutputStream(localFile);
      byte[] arrayOfByte = new byte[8192];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte, 0, 8192);
        if (i <= 0)
          break;
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      Log.e("Failed to open file", localIOException);
      return;
    }
    localFileOutputStream.flush();
    localFileOutputStream.close();
    localInputStream.close();
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    executePragmas(paramSQLiteDatabase);
    executeCreate(paramSQLiteDatabase);
    executeCreateIndex(paramSQLiteDatabase);
  }

  public final void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    executePragmas(paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    executePragmas(paramSQLiteDatabase);
    executeCreate(paramSQLiteDatabase);
    executeMigrations2(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.DatabaseHelper
 * JD-Core Version:    0.6.0
 */