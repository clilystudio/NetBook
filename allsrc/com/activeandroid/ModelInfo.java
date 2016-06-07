package com.activeandroid;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.activeandroid.serializer.TypeSerializer;
import com.activeandroid.util.Log;
import com.activeandroid.util.ReflectionUtils;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class ModelInfo
{
  private Map<Class<? extends Model>, TableInfo> mTableInfos = new HashMap();
  private Map<Class<?>, TypeSerializer> mTypeSerializers = new ModelInfo.1(this);

  public ModelInfo(Configuration paramConfiguration)
  {
    if (!loadModelFromMetaData(paramConfiguration));
    try
    {
      scanForModel(paramConfiguration.getContext());
      Log.i("ModelInfo loaded.");
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        Log.e("Couldn't open source path.", localIOException);
    }
  }

  private boolean loadModelFromMetaData(Configuration paramConfiguration)
  {
    if (!paramConfiguration.isValid())
      return false;
    List localList1 = paramConfiguration.getModelClasses();
    if (localList1 != null)
    {
      Iterator localIterator2 = localList1.iterator();
      while (localIterator2.hasNext())
      {
        Class localClass2 = (Class)localIterator2.next();
        this.mTableInfos.put(localClass2, new TableInfo(localClass2));
      }
    }
    List localList2 = paramConfiguration.getTypeSerializers();
    if (localList2 != null)
    {
      Iterator localIterator1 = localList2.iterator();
      while (localIterator1.hasNext())
      {
        Class localClass1 = (Class)localIterator1.next();
        try
        {
          TypeSerializer localTypeSerializer = (TypeSerializer)localClass1.newInstance();
          this.mTypeSerializers.put(localTypeSerializer.getDeserializedType(), localTypeSerializer);
        }
        catch (InstantiationException localInstantiationException)
        {
          Log.e("Couldn't instantiate TypeSerializer.", localInstantiationException);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          Log.e("IllegalAccessException", localIllegalAccessException);
        }
      }
    }
    return true;
  }

  private void scanForModel(Context paramContext)
  {
    String str1 = paramContext.getPackageName();
    String str2 = paramContext.getApplicationInfo().sourceDir;
    ArrayList localArrayList = new ArrayList();
    Enumeration localEnumeration2;
    if ((str2 != null) && (!new File(str2).isDirectory()))
      localEnumeration2 = new DexFile(str2).entries();
    while (localEnumeration2.hasMoreElements())
    {
      localArrayList.add(localEnumeration2.nextElement());
      continue;
      Enumeration localEnumeration1 = Thread.currentThread().getContextClassLoader().getResources("");
      while (localEnumeration1.hasMoreElements())
      {
        String str3 = ((URL)localEnumeration1.nextElement()).getFile();
        if ((!str3.contains("bin")) && (!str3.contains("classes")))
          continue;
        localArrayList.add(str3);
      }
    }
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
      scanForModelClasses(new File((String)localIterator.next()), str1, paramContext.getClassLoader());
  }

  private void scanForModelClasses(File paramFile, String paramString, ClassLoader paramClassLoader)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      for (int k = 0; k < j; k++)
        scanForModelClasses(arrayOfFile[k], paramString, paramClassLoader);
    }
    String str1 = paramFile.getName();
    String str3;
    int i;
    if (!paramFile.getPath().equals(str1))
    {
      String str2 = paramFile.getPath();
      if (str2.endsWith(".class"))
      {
        str3 = str2.substring(0, -6 + str2.length()).replace(System.getProperty("file.separator"), ".");
        i = str3.lastIndexOf(paramString);
        if (i >= 0)
          break label119;
      }
    }
    while (true)
    {
      return;
      label119: str1 = str3.substring(i);
      try
      {
        localClass = Class.forName(str1, false, paramClassLoader);
        if (ReflectionUtils.isModel(localClass))
        {
          this.mTableInfos.put(localClass, new TableInfo(localClass));
          return;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Class localClass;
        Log.e("Couldn't create class.", localClassNotFoundException);
        return;
        if (!ReflectionUtils.isTypeSerializer(localClass))
          continue;
        TypeSerializer localTypeSerializer = (TypeSerializer)localClass.newInstance();
        this.mTypeSerializers.put(localTypeSerializer.getDeserializedType(), localTypeSerializer);
        return;
      }
      catch (InstantiationException localInstantiationException)
      {
        Log.e("Couldn't instantiate TypeSerializer.", localInstantiationException);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.e("IllegalAccessException", localIllegalAccessException);
        return;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError)
      {
        Log.e("IllegalAccessException", localNoClassDefFoundError);
      }
    }
  }

  public final TableInfo getTableInfo(Class<? extends Model> paramClass)
  {
    return (TableInfo)this.mTableInfos.get(paramClass);
  }

  public final Collection<TableInfo> getTableInfos()
  {
    return this.mTableInfos.values();
  }

  public final TypeSerializer getTypeSerializer(Class<?> paramClass)
  {
    return (TypeSerializer)this.mTypeSerializers.get(paramClass);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.ModelInfo
 * JD-Core Version:    0.6.0
 */