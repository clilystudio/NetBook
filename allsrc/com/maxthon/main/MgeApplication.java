package com.maxthon.main;

import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.os.Process;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class MgeApplication extends Application
  implements Thread.UncaughtExceptionHandler
{
  private static Application instance;
  private ClassLoader mClassLoader;
  private Class mClazz;
  private Object mObject;

  // ERROR //
  protected void attachBaseContext(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 26	android/app/Application:attachBaseContext	(Landroid/content/Context;)V
    //   5: aload_0
    //   6: putstatic 28	com/maxthon/main/MgeApplication:instance	Landroid/app/Application;
    //   9: aload_0
    //   10: invokestatic 34	java/lang/Thread:setDefaultUncaughtExceptionHandler	(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    //   13: invokestatic 40	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   16: aload_0
    //   17: invokevirtual 43	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   20: aload_0
    //   21: invokestatic 40	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   24: invokestatic 40	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   27: ldc 45
    //   29: invokestatic 40	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   32: invokevirtual 49	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   35: invokevirtual 53	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   38: invokevirtual 57	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   41: putfield 59	com/maxthon/main/MgeApplication:mClassLoader	Ljava/lang/ClassLoader;
    //   44: aload_0
    //   45: getfield 59	com/maxthon/main/MgeApplication:mClassLoader	Ljava/lang/ClassLoader;
    //   48: ifnull +97 -> 145
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 59	com/maxthon/main/MgeApplication:mClassLoader	Ljava/lang/ClassLoader;
    //   56: aload_0
    //   57: invokevirtual 62	com/maxthon/main/MgeApplication:getTargetClassName	()Ljava/lang/String;
    //   60: invokevirtual 68	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   63: putfield 70	com/maxthon/main/MgeApplication:mClazz	Ljava/lang/Class;
    //   66: aload_0
    //   67: aload_0
    //   68: getfield 70	com/maxthon/main/MgeApplication:mClazz	Ljava/lang/Class;
    //   71: invokevirtual 76	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   74: putfield 78	com/maxthon/main/MgeApplication:mObject	Ljava/lang/Object;
    //   77: aload_0
    //   78: getfield 70	com/maxthon/main/MgeApplication:mClazz	Ljava/lang/Class;
    //   81: ldc 80
    //   83: iconst_1
    //   84: anewarray 72	java/lang/Class
    //   87: dup
    //   88: iconst_0
    //   89: ldc 82
    //   91: aastore
    //   92: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   95: aload_0
    //   96: getfield 78	com/maxthon/main/MgeApplication:mObject	Ljava/lang/Object;
    //   99: iconst_1
    //   100: anewarray 88	java/lang/Object
    //   103: dup
    //   104: iconst_0
    //   105: aload_0
    //   106: aastore
    //   107: invokevirtual 94	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   110: pop
    //   111: aload_0
    //   112: getfield 70	com/maxthon/main/MgeApplication:mClazz	Ljava/lang/Class;
    //   115: ldc 95
    //   117: iconst_1
    //   118: anewarray 72	java/lang/Class
    //   121: dup
    //   122: iconst_0
    //   123: ldc 82
    //   125: aastore
    //   126: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   129: aload_0
    //   130: getfield 78	com/maxthon/main/MgeApplication:mObject	Ljava/lang/Object;
    //   133: iconst_1
    //   134: anewarray 88	java/lang/Object
    //   137: dup
    //   138: iconst_0
    //   139: aload_1
    //   140: aastore
    //   141: invokevirtual 94	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   144: pop
    //   145: return
    //   146: astore_2
    //   147: aload_2
    //   148: invokevirtual 98	com/maxthon/main/RestartException:printStackTrace	()V
    //   151: ldc 100
    //   153: ldc 102
    //   155: invokestatic 108	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   158: pop
    //   159: ldc 2
    //   161: aload_0
    //   162: invokevirtual 112	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   165: checkcast 2	com/maxthon/main/MgeApplication
    //   168: aload_0
    //   169: invokevirtual 115	com/maxthon/main/MgeApplication:restartApp	(Landroid/content/Context;)V
    //   172: return
    //   173: astore 4
    //   175: aload 4
    //   177: invokevirtual 116	java/lang/Exception:printStackTrace	()V
    //   180: return
    //
    // Exception table:
    //   from	to	target	type
    //   20	44	146	com/maxthon/main/RestartException
    //   44	145	173	java/lang/Exception
  }

  public String getTargetClassName()
  {
    try
    {
      Class localClass = this.mClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_MGEAPPLICATION").get(localClass);
      if ((localObject instanceof String))
      {
        String str = (String)String.class.cast(localObject);
        return str;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "com.maxthon.mge.MgeApplication";
  }

  public void onCreate()
  {
    super.onCreate();
    try
    {
      if (this.mClassLoader != null)
        this.mClazz.getMethod("onCreate", new Class[0]).invoke(this.mObject, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void restartApp(Context paramContext)
  {
    if (!MgeProperties.getMgeSharedPreferences(this).getBoolean(MgeProperties.KEY_HAS_SDK, false));
    long l1;
    long l2;
    do
    {
      return;
      l1 = MgeProperties.getMgeSharedPreferences(paramContext).getLong(MgeProperties.KEY_LAST_RESTARTUP_TIME, 0L);
      l2 = System.currentTimeMillis();
      Log.i("test_restart", "restartApp : " + l1 + "; curTime : " + l2);
    }
    while (l2 - l1 <= 300000L);
    SharedPreferences.Editor localEditor = MgeProperties.getMgeSharedPreferences(paramContext).edit();
    localEditor.putLong(MgeProperties.KEY_LAST_RESTARTUP_TIME, l2);
    localEditor.commit();
    if (paramContext != null)
    {
      try
      {
        PackageManager localPackageManager = paramContext.getPackageManager();
        if (localPackageManager == null)
          break label213;
        Intent localIntent = localPackageManager.getLaunchIntentForPackage(paramContext.getPackageName());
        if (localIntent != null)
        {
          localIntent.addFlags(67108864);
          PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 223344, localIntent, 268435456);
          ((AlarmManager)paramContext.getSystemService("alarm")).set(1, 100L + System.currentTimeMillis(), localPendingIntent);
          Process.killProcess(Process.myPid());
          return;
        }
      }
      catch (Exception localException)
      {
        Log.i("test_dex", "Was not able to restart application");
        return;
      }
      Log.i("test_dex", "Was not able to restart application, mStartActivity null");
      return;
      label213: Log.i("test_dex", "Was not able to restart application, PM null");
      return;
    }
    Log.i("test_dex", "Was not able to restart application, Context null");
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    Log.i("test_restart", "message : " + paramThrowable.getMessage());
    restartApp(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.MgeApplication
 * JD-Core Version:    0.6.0
 */