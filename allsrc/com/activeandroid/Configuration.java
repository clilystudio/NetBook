package com.activeandroid;

import android.content.Context;
import com.activeandroid.serializer.TypeSerializer;
import java.util.List;

public class Configuration
{
  public static final String SQL_PARSER_DELIMITED = "delimited";
  public static final String SQL_PARSER_LEGACY = "legacy";
  private int mCacheSize;
  private Context mContext;
  private String mDatabaseName;
  private int mDatabaseVersion;
  private List<Class<? extends Model>> mModelClasses;
  private String mSqlParser;
  private List<Class<? extends TypeSerializer>> mTypeSerializers;

  private Configuration(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public int getCacheSize()
  {
    return this.mCacheSize;
  }

  public Context getContext()
  {
    return this.mContext;
  }

  public String getDatabaseName()
  {
    return this.mDatabaseName;
  }

  public int getDatabaseVersion()
  {
    return this.mDatabaseVersion;
  }

  public List<Class<? extends Model>> getModelClasses()
  {
    return this.mModelClasses;
  }

  public String getSqlParser()
  {
    return this.mSqlParser;
  }

  public List<Class<? extends TypeSerializer>> getTypeSerializers()
  {
    return this.mTypeSerializers;
  }

  public boolean isValid()
  {
    return (this.mModelClasses != null) && (this.mModelClasses.size() > 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.Configuration
 * JD-Core Version:    0.6.0
 */