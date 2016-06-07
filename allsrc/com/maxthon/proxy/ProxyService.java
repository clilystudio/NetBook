package com.maxthon.proxy;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.lang.reflect.Method;

public abstract class ProxyService extends Service
{
  protected ClassLoader mClassLoader;
  protected Class mClazz;
  protected Object mObj;

  public abstract String getTargetClassName();

  public IBinder onBind(Intent paramIntent)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("onBind", new Class[] { Intent.class }).invoke(this.mObj, new Object[] { paramIntent });
      if (localObject != null)
      {
        IBinder localIBinder = (IBinder)IBinder.class.cast(localObject);
        return localIBinder;
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  // ERROR //
  public void onCreate()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	android/app/Service:onCreate	()V
    //   4: invokestatic 61	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   7: aload_0
    //   8: invokevirtual 65	com/maxthon/proxy/ProxyService:getApplicationContext	()Landroid/content/Context;
    //   11: invokevirtual 69	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   14: aload_0
    //   15: invokestatic 61	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   18: invokestatic 61	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   21: ldc 71
    //   23: invokestatic 61	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   26: invokevirtual 74	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   29: invokevirtual 78	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   32: invokevirtual 82	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   35: putfield 84	com/maxthon/proxy/ProxyService:mClassLoader	Ljava/lang/ClassLoader;
    //   38: aload_0
    //   39: getfield 84	com/maxthon/proxy/ProxyService:mClassLoader	Ljava/lang/ClassLoader;
    //   42: ifnull +63 -> 105
    //   45: aload_0
    //   46: aload_0
    //   47: getfield 84	com/maxthon/proxy/ProxyService:mClassLoader	Ljava/lang/ClassLoader;
    //   50: aload_0
    //   51: invokevirtual 86	com/maxthon/proxy/ProxyService:getTargetClassName	()Ljava/lang/String;
    //   54: invokevirtual 92	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   57: putfield 22	com/maxthon/proxy/ProxyService:mClazz	Ljava/lang/Class;
    //   60: aload_0
    //   61: aload_0
    //   62: getfield 22	com/maxthon/proxy/ProxyService:mClazz	Ljava/lang/Class;
    //   65: invokevirtual 96	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   68: putfield 33	com/maxthon/proxy/ProxyService:mObj	Ljava/lang/Object;
    //   71: aload_0
    //   72: getfield 22	com/maxthon/proxy/ProxyService:mClazz	Ljava/lang/Class;
    //   75: ldc 98
    //   77: iconst_1
    //   78: anewarray 25	java/lang/Class
    //   81: dup
    //   82: iconst_0
    //   83: ldc 100
    //   85: aastore
    //   86: invokevirtual 31	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   89: aload_0
    //   90: getfield 33	com/maxthon/proxy/ProxyService:mObj	Ljava/lang/Object;
    //   93: iconst_1
    //   94: anewarray 35	java/lang/Object
    //   97: dup
    //   98: iconst_0
    //   99: aload_0
    //   100: aastore
    //   101: invokevirtual 41	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   104: pop
    //   105: aload_0
    //   106: getfield 22	com/maxthon/proxy/ProxyService:mClazz	Ljava/lang/Class;
    //   109: ifnull +35 -> 144
    //   112: aload_0
    //   113: getfield 33	com/maxthon/proxy/ProxyService:mObj	Ljava/lang/Object;
    //   116: ifnull +28 -> 144
    //   119: aload_0
    //   120: getfield 22	com/maxthon/proxy/ProxyService:mClazz	Ljava/lang/Class;
    //   123: ldc 101
    //   125: iconst_0
    //   126: anewarray 25	java/lang/Class
    //   129: invokevirtual 31	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   132: aload_0
    //   133: getfield 33	com/maxthon/proxy/ProxyService:mObj	Ljava/lang/Object;
    //   136: iconst_0
    //   137: anewarray 35	java/lang/Object
    //   140: invokevirtual 41	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   143: pop
    //   144: return
    //   145: astore_1
    //   146: aload_1
    //   147: invokevirtual 102	com/maxthon/main/RestartException:printStackTrace	()V
    //   150: ldc 104
    //   152: ldc 106
    //   154: invokestatic 112	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: ldc 114
    //   160: aload_0
    //   161: invokevirtual 118	com/maxthon/proxy/ProxyService:getApplication	()Landroid/app/Application;
    //   164: invokevirtual 47	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   167: checkcast 114	com/maxthon/main/MgeApplication
    //   170: aload_0
    //   171: invokevirtual 121	com/maxthon/main/MgeApplication:restartApp	(Landroid/content/Context;)V
    //   174: return
    //   175: astore_3
    //   176: aload_3
    //   177: invokevirtual 50	java/lang/Exception:printStackTrace	()V
    //   180: goto -75 -> 105
    //   183: astore 4
    //   185: aload 4
    //   187: invokevirtual 50	java/lang/Exception:printStackTrace	()V
    //   190: return
    //
    // Exception table:
    //   from	to	target	type
    //   14	38	145	com/maxthon/main/RestartException
    //   38	105	175	java/lang/Exception
    //   105	144	183	java/lang/Exception
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      this.mClazz.getMethod("onDestroy", new Class[0]).invoke(this.mObj, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onRebind(Intent paramIntent)
  {
    try
    {
      this.mClazz.getMethod("onRebind", new Class[] { Intent.class }).invoke(this.mObj, new Object[] { paramIntent });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    try
    {
      Class localClass = this.mClazz;
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Intent.class;
      arrayOfClass[1] = Integer.TYPE;
      Method localMethod = localClass.getMethod("onStart", arrayOfClass);
      Object localObject = this.mObj;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramIntent;
      arrayOfObject[1] = Integer.valueOf(paramInt);
      localMethod.invoke(localObject, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public boolean onSuperUnBind(Intent paramIntent)
  {
    return super.onUnbind(paramIntent);
  }

  public boolean onUnbind(Intent paramIntent)
  {
    try
    {
      Object localObject = this.mClazz.getMethod("onUnbind", new Class[] { Intent.class }).invoke(this.mObj, new Object[] { paramIntent });
      if (localObject != null)
        return ((Boolean)Boolean.class.cast(localObject)).booleanValue();
      boolean bool = super.onUnbind(paramIntent);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return super.onUnbind(paramIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.ProxyService
 * JD-Core Version:    0.6.0
 */