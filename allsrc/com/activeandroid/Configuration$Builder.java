package com.activeandroid;

import android.content.Context;
import com.activeandroid.serializer.TypeSerializer;
import com.activeandroid.util.Log;
import com.activeandroid.util.ReflectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Configuration$Builder
{
  private static final String AA_DB_NAME = "AA_DB_NAME";
  private static final String AA_DB_VERSION = "AA_DB_VERSION";
  private static final String AA_MODELS = "AA_MODELS";
  private static final String AA_SERIALIZERS = "AA_SERIALIZERS";
  private static final String AA_SQL_PARSER = "AA_SQL_PARSER";
  private static final int DEFAULT_CACHE_SIZE = 1024;
  private static final String DEFAULT_DB_NAME = "Application.db";
  private static final String DEFAULT_SQL_PARSER = "legacy";
  private Integer mCacheSize;
  private Context mContext;
  private String mDatabaseName;
  private Integer mDatabaseVersion;
  private List<Class<? extends Model>> mModelClasses;
  private String mSqlParser;
  private List<Class<? extends TypeSerializer>> mTypeSerializers;

  public Configuration$Builder(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mCacheSize = Integer.valueOf(1024);
  }

  private String getMetaDataDatabaseNameOrDefault()
  {
    String str = (String)ReflectionUtils.getMetaData(this.mContext, "AA_DB_NAME");
    if (str == null)
      str = "Application.db";
    return str;
  }

  private int getMetaDataDatabaseVersionOrDefault()
  {
    Integer localInteger = (Integer)ReflectionUtils.getMetaData(this.mContext, "AA_DB_VERSION");
    if ((localInteger == null) || (localInteger.intValue() == 0))
      localInteger = Integer.valueOf(1);
    return localInteger.intValue();
  }

  private String getMetaDataSqlParserOrDefault()
  {
    String str = (String)ReflectionUtils.getMetaData(this.mContext, "AA_SQL_PARSER");
    if (str == null)
      str = "legacy";
    return str;
  }

  private List<Class<? extends Model>> loadModelList(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    ClassLoader localClassLoader = this.mContext.getClass().getClassLoader();
    int i = paramArrayOfString.length;
    int j = 0;
    while (true)
      if (j < i)
      {
        String str = paramArrayOfString[j];
        try
        {
          Class localClass = Class.forName(str.trim(), false, localClassLoader);
          if (ReflectionUtils.isModel(localClass))
            localArrayList.add(localClass);
          j++;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          while (true)
            Log.e("Couldn't create class.", localClassNotFoundException);
        }
      }
    return localArrayList;
  }

  private List<Class<? extends TypeSerializer>> loadSerializerList(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    ClassLoader localClassLoader = this.mContext.getClass().getClassLoader();
    int i = paramArrayOfString.length;
    int j = 0;
    while (true)
      if (j < i)
      {
        String str = paramArrayOfString[j];
        try
        {
          Class localClass = Class.forName(str.trim(), false, localClassLoader);
          if (ReflectionUtils.isTypeSerializer(localClass))
            localArrayList.add(localClass);
          j++;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          while (true)
            Log.e("Couldn't create class.", localClassNotFoundException);
        }
      }
    return localArrayList;
  }

  public Builder addModelClass(Class<? extends Model> paramClass)
  {
    if (this.mModelClasses == null)
      this.mModelClasses = new ArrayList();
    this.mModelClasses.add(paramClass);
    return this;
  }

  public Builder addModelClasses(Class<? extends Model>[] paramArrayOfClass)
  {
    if (this.mModelClasses == null)
      this.mModelClasses = new ArrayList();
    this.mModelClasses.addAll(Arrays.asList(paramArrayOfClass));
    return this;
  }

  public Builder addTypeSerializer(Class<? extends TypeSerializer> paramClass)
  {
    if (this.mTypeSerializers == null)
      this.mTypeSerializers = new ArrayList();
    this.mTypeSerializers.add(paramClass);
    return this;
  }

  public Builder addTypeSerializers(Class<? extends TypeSerializer>[] paramArrayOfClass)
  {
    if (this.mTypeSerializers == null)
      this.mTypeSerializers = new ArrayList();
    this.mTypeSerializers.addAll(Arrays.asList(paramArrayOfClass));
    return this;
  }

  public Configuration create()
  {
    Configuration localConfiguration = new Configuration(this.mContext, null);
    Configuration.access$102(localConfiguration, this.mCacheSize.intValue());
    if (this.mDatabaseName != null)
    {
      Configuration.access$202(localConfiguration, this.mDatabaseName);
      if (this.mDatabaseVersion == null)
        break label122;
      Configuration.access$302(localConfiguration, this.mDatabaseVersion.intValue());
      label60: if (this.mSqlParser == null)
        break label134;
      Configuration.access$402(localConfiguration, this.mSqlParser);
      label76: if (this.mModelClasses == null)
        break label146;
      Configuration.access$502(localConfiguration, this.mModelClasses);
      label92: if (this.mTypeSerializers == null)
        break label184;
      Configuration.access$602(localConfiguration, this.mTypeSerializers);
    }
    label122: String str2;
    label134: label146: label184: 
    do
    {
      return localConfiguration;
      Configuration.access$202(localConfiguration, getMetaDataDatabaseNameOrDefault());
      break;
      Configuration.access$302(localConfiguration, getMetaDataDatabaseVersionOrDefault());
      break label60;
      Configuration.access$402(localConfiguration, getMetaDataSqlParserOrDefault());
      break label76;
      String str1 = (String)ReflectionUtils.getMetaData(this.mContext, "AA_MODELS");
      if (str1 == null)
        break label92;
      Configuration.access$502(localConfiguration, loadModelList(str1.split(",")));
      break label92;
      str2 = (String)ReflectionUtils.getMetaData(this.mContext, "AA_SERIALIZERS");
    }
    while (str2 == null);
    Configuration.access$602(localConfiguration, loadSerializerList(str2.split(",")));
    return localConfiguration;
  }

  public Builder setCacheSize(int paramInt)
  {
    this.mCacheSize = Integer.valueOf(paramInt);
    return this;
  }

  public Builder setDatabaseName(String paramString)
  {
    this.mDatabaseName = paramString;
    return this;
  }

  public Builder setDatabaseVersion(int paramInt)
  {
    this.mDatabaseVersion = Integer.valueOf(paramInt);
    return this;
  }

  public Builder setModelClasses(Class<? extends Model>[] paramArrayOfClass)
  {
    this.mModelClasses = Arrays.asList(paramArrayOfClass);
    return this;
  }

  public Builder setSqlParser(String paramString)
  {
    this.mSqlParser = paramString;
    return this;
  }

  public Builder setTypeSerializers(Class<? extends TypeSerializer>[] paramArrayOfClass)
  {
    this.mTypeSerializers = Arrays.asList(paramArrayOfClass);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.Configuration.Builder
 * JD-Core Version:    0.6.0
 */