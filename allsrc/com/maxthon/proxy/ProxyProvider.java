package com.maxthon.proxy;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import com.maxthon.dex.DexUtils;
import com.maxthon.main.MgeProperties;
import java.lang.reflect.Method;

public abstract class ProxyProvider extends ContentProvider
{
  private boolean isInitSuccess = false;
  public ClassLoader mClassLoader;
  private Class mClazz;
  private Object mObject;

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("delete", new Class[] { Uri.class, String.class, [Ljava.lang.String.class }).invoke(this.mObject, new Object[] { paramUri, paramString, paramArrayOfString });
      if ((localObject instanceof Integer))
      {
        int i = ((Integer)localObject).intValue();
        return i;
      }
      return 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public abstract String getTargetClassName();

  public String getType(Uri paramUri)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("getType", new Class[] { Uri.class }).invoke(this.mObject, new Object[] { paramUri });
      if ((localObject instanceof String))
      {
        String str = (String)localObject;
        return str;
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("insert", new Class[] { Uri.class, ContentValues.class }).invoke(this.mObject, new Object[] { paramUri, paramContentValues });
      if ((localObject instanceof Uri))
      {
        Uri localUri = (Uri)localObject;
        return localUri;
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public boolean onCreate()
  {
    if (MgeProperties.getMgeSharedPreferences(getContext()).getBoolean(MgeProperties.KEY_HAS_SDK, false))
      try
      {
        DexUtils.getInstance().init(getContext());
        this.mClassLoader = DexUtils.getInstance().getDexClassLoader(DexUtils.getInstance().getJarFile("plugin_main", DexUtils.getInstance().getJversion()));
        this.mClazz = this.mClassLoader.loadClass(getTargetClassName());
        this.mObject = this.mClazz.newInstance();
        Object localObject = this.mClazz.getMethod("onCreate", new Class[0]).invoke(this.mObject, new Object[0]);
        if ((localObject instanceof Boolean))
        {
          this.isInitSuccess = true;
          boolean bool = ((Boolean)localObject).booleanValue();
          return bool;
        }
        return false;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
    return false;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("query", new Class[] { Uri.class, [Ljava.lang.String.class, String.class, [Ljava.lang.String.class, String.class }).invoke(this.mObject, new Object[] { paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2 });
      if ((localObject instanceof Cursor))
      {
        Cursor localCursor = (Cursor)localObject;
        return localCursor;
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("update", new Class[] { Uri.class, ContentValues.class, String.class, [Ljava.lang.String.class }).invoke(this.mObject, new Object[] { paramUri, paramContentValues, paramString, paramArrayOfString });
      if ((localObject instanceof Integer))
      {
        int i = ((Integer)localObject).intValue();
        return i;
      }
      return 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.ProxyProvider
 * JD-Core Version:    0.6.0
 */