package com.activeandroid.content;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.SparseArray;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.Cache;
import com.activeandroid.Configuration;
import com.activeandroid.Configuration.Builder;
import com.activeandroid.Model;
import com.activeandroid.TableInfo;
import java.util.ArrayList;
import java.util.List;

public class ContentProvider extends android.content.ContentProvider
{
  private static final SparseArray<Class<? extends Model>> TYPE_CODES;
  private static final UriMatcher URI_MATCHER = new UriMatcher(-1);
  private static String sAuthority;
  private static SparseArray<String> sMimeTypeCache;

  static
  {
    TYPE_CODES = new SparseArray();
    sMimeTypeCache = new SparseArray();
  }

  public static Uri createUri(Class<? extends Model> paramClass, Long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("content://");
    localStringBuilder.append(sAuthority);
    localStringBuilder.append("/");
    localStringBuilder.append(Cache.getTableName(paramClass).toLowerCase());
    if (paramLong != null)
    {
      localStringBuilder.append("/");
      localStringBuilder.append(paramLong.toString());
    }
    return Uri.parse(localStringBuilder.toString());
  }

  private Class<? extends Model> getModelType(Uri paramUri)
  {
    int i = URI_MATCHER.match(paramUri);
    if (i != -1)
      return (Class)TYPE_CODES.get(i);
    return null;
  }

  private void notifyChange(Uri paramUri)
  {
    getContext().getContentResolver().notifyChange(paramUri, null);
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    Class localClass = getModelType(paramUri);
    int i = Cache.openDatabase().delete(Cache.getTableName(localClass), paramString, paramArrayOfString);
    notifyChange(paramUri);
    return i;
  }

  protected String getAuthority()
  {
    return getContext().getPackageName();
  }

  protected Configuration getConfiguration()
  {
    return new Configuration.Builder(getContext()).create();
  }

  public String getType(Uri paramUri)
  {
    int i = URI_MATCHER.match(paramUri);
    String str1 = (String)sMimeTypeCache.get(i);
    if (str1 != null)
      return str1;
    Class localClass = getModelType(paramUri);
    int j;
    StringBuilder localStringBuilder;
    if (i % 2 == 0)
    {
      j = 1;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("vnd");
      localStringBuilder.append(".");
      localStringBuilder.append(sAuthority);
      localStringBuilder.append(".");
      if (j == 0)
        break label176;
    }
    label176: for (String str2 = "item"; ; str2 = "dir")
    {
      localStringBuilder.append(str2);
      localStringBuilder.append("/");
      localStringBuilder.append("vnd");
      localStringBuilder.append(".");
      localStringBuilder.append(sAuthority);
      localStringBuilder.append(".");
      localStringBuilder.append(Cache.getTableName(localClass));
      sMimeTypeCache.append(i, localStringBuilder.toString());
      return localStringBuilder.toString();
      j = 0;
      break;
    }
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    Class localClass = getModelType(paramUri);
    Long localLong = Long.valueOf(Cache.openDatabase().insert(Cache.getTableName(localClass), null, paramContentValues));
    Uri localUri = null;
    if (localLong != null)
    {
      boolean bool = localLong.longValue() < 0L;
      localUri = null;
      if (bool)
      {
        localUri = createUri(localClass, localLong);
        notifyChange(localUri);
      }
    }
    return localUri;
  }

  public boolean onCreate()
  {
    ActiveAndroid.initialize(getConfiguration());
    sAuthority = getAuthority();
    ArrayList localArrayList = new ArrayList(Cache.getTableInfos());
    int i = localArrayList.size();
    for (int j = 0; j < i; j++)
    {
      TableInfo localTableInfo = (TableInfo)localArrayList.get(j);
      int k = 1 + (j << 1);
      int m = 2 + (j << 1);
      URI_MATCHER.addURI(sAuthority, localTableInfo.getTableName().toLowerCase(), k);
      TYPE_CODES.put(k, localTableInfo.getType());
      URI_MATCHER.addURI(sAuthority, localTableInfo.getTableName().toLowerCase() + "/#", m);
      TYPE_CODES.put(m, localTableInfo.getType());
    }
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    Class localClass = getModelType(paramUri);
    Cursor localCursor = Cache.openDatabase().query(Cache.getTableName(localClass), paramArrayOfString1, paramString1, paramArrayOfString2, null, null, paramString2);
    localCursor.setNotificationUri(getContext().getContentResolver(), paramUri);
    return localCursor;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    Class localClass = getModelType(paramUri);
    int i = Cache.openDatabase().update(Cache.getTableName(localClass), paramContentValues, paramString, paramArrayOfString);
    notifyChange(paramUri);
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.content.ContentProvider
 * JD-Core Version:    0.6.0
 */