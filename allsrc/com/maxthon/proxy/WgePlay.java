package com.maxthon.proxy;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.maxthon.main.InitActivity;
import java.lang.reflect.Field;
import java.util.List;

public class WgePlay
{
  private static String getTargetClassName(ClassLoader paramClassLoader)
  {
    try
    {
      Class localClass = paramClassLoader.loadClass("com.maxthon.global.MgeConstant");
      Object localObject = localClass.getField("TARGET_WGEPLAY").get(localClass);
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
    return "com.maxthon.mge.WgePlay";
  }

  public static String getTopAppPackageName(Context paramContext)
  {
    return ((ActivityManager.RunningTaskInfo)((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getPackageName();
  }

  // ERROR //
  public static void init(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   3: aload_0
    //   4: invokevirtual 89	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   7: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   10: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   13: ldc 91
    //   15: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   18: invokevirtual 94	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   21: invokevirtual 98	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   24: invokevirtual 102	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   27: astore_3
    //   28: aload_3
    //   29: ifnull +62 -> 91
    //   32: ldc 104
    //   34: new 106	java/lang/StringBuilder
    //   37: dup
    //   38: ldc 108
    //   40: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: invokestatic 117	android/os/Process:myPid	()I
    //   46: invokevirtual 121	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   49: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokestatic 130	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   55: pop
    //   56: aload_3
    //   57: aload_3
    //   58: invokestatic 132	com/maxthon/proxy/WgePlay:getTargetClassName	(Ljava/lang/ClassLoader;)Ljava/lang/String;
    //   61: invokevirtual 20	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   64: ldc 133
    //   66: iconst_1
    //   67: anewarray 24	java/lang/Class
    //   70: dup
    //   71: iconst_0
    //   72: ldc 50
    //   74: aastore
    //   75: invokevirtual 137	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   78: aconst_null
    //   79: iconst_1
    //   80: anewarray 4	java/lang/Object
    //   83: dup
    //   84: iconst_0
    //   85: aload_0
    //   86: aastore
    //   87: invokevirtual 143	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   90: pop
    //   91: return
    //   92: astore_1
    //   93: aload_1
    //   94: invokevirtual 144	com/maxthon/main/RestartException:printStackTrace	()V
    //   97: ldc 146
    //   99: ldc 148
    //   101: invokestatic 130	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   104: pop
    //   105: return
    //   106: astore 4
    //   108: aload 4
    //   110: invokevirtual 42	java/lang/Exception:printStackTrace	()V
    //   113: return
    //
    // Exception table:
    //   from	to	target	type
    //   7	28	92	com/maxthon/main/RestartException
    //   32	91	106	java/lang/Exception
  }

  // ERROR //
  public static void pay(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, String paramString8)
  {
    // Byte code:
    //   0: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   3: aload_0
    //   4: invokevirtual 89	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   7: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   10: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   13: ldc 91
    //   15: invokestatic 87	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   18: invokevirtual 94	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   21: invokevirtual 98	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   24: invokevirtual 102	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   27: astore 12
    //   29: aload 12
    //   31: ifnull +177 -> 208
    //   34: aload 12
    //   36: aload 12
    //   38: invokestatic 132	com/maxthon/proxy/WgePlay:getTargetClassName	(Ljava/lang/ClassLoader;)Ljava/lang/String;
    //   41: invokevirtual 20	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   44: astore 14
    //   46: bipush 10
    //   48: anewarray 24	java/lang/Class
    //   51: astore 15
    //   53: aload 15
    //   55: iconst_0
    //   56: ldc 50
    //   58: aastore
    //   59: aload 15
    //   61: iconst_1
    //   62: ldc 36
    //   64: aastore
    //   65: aload 15
    //   67: iconst_2
    //   68: ldc 36
    //   70: aastore
    //   71: aload 15
    //   73: iconst_3
    //   74: ldc 36
    //   76: aastore
    //   77: aload 15
    //   79: iconst_4
    //   80: ldc 36
    //   82: aastore
    //   83: aload 15
    //   85: iconst_5
    //   86: ldc 36
    //   88: aastore
    //   89: aload 15
    //   91: bipush 6
    //   93: ldc 36
    //   95: aastore
    //   96: aload 15
    //   98: bipush 7
    //   100: ldc 36
    //   102: aastore
    //   103: aload 15
    //   105: bipush 8
    //   107: getstatic 156	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   110: aastore
    //   111: aload 15
    //   113: bipush 9
    //   115: ldc 36
    //   117: aastore
    //   118: aload 14
    //   120: ldc 157
    //   122: aload 15
    //   124: invokevirtual 137	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   127: astore 16
    //   129: bipush 10
    //   131: anewarray 4	java/lang/Object
    //   134: astore 17
    //   136: aload 17
    //   138: iconst_0
    //   139: aload_0
    //   140: aastore
    //   141: aload 17
    //   143: iconst_1
    //   144: aload_1
    //   145: aastore
    //   146: aload 17
    //   148: iconst_2
    //   149: aload_2
    //   150: aastore
    //   151: aload 17
    //   153: iconst_3
    //   154: aload_3
    //   155: aastore
    //   156: aload 17
    //   158: iconst_4
    //   159: aload 4
    //   161: aastore
    //   162: aload 17
    //   164: iconst_5
    //   165: aload 5
    //   167: aastore
    //   168: aload 17
    //   170: bipush 6
    //   172: aload 6
    //   174: aastore
    //   175: aload 17
    //   177: bipush 7
    //   179: aload 7
    //   181: aastore
    //   182: aload 17
    //   184: bipush 8
    //   186: iload 8
    //   188: invokestatic 161	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   191: aastore
    //   192: aload 17
    //   194: bipush 9
    //   196: aload 9
    //   198: aastore
    //   199: aload 16
    //   201: aconst_null
    //   202: aload 17
    //   204: invokevirtual 143	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   207: pop
    //   208: return
    //   209: astore 10
    //   211: aload 10
    //   213: invokevirtual 144	com/maxthon/main/RestartException:printStackTrace	()V
    //   216: ldc 146
    //   218: ldc 148
    //   220: invokestatic 130	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   223: pop
    //   224: ldc 163
    //   226: aload_0
    //   227: invokevirtual 39	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   230: checkcast 163	com/maxthon/main/MgeApplication
    //   233: aload_0
    //   234: invokevirtual 166	com/maxthon/main/MgeApplication:restartApp	(Landroid/content/Context;)V
    //   237: return
    //   238: astore 13
    //   240: aload 13
    //   242: invokevirtual 42	java/lang/Exception:printStackTrace	()V
    //   245: return
    //
    // Exception table:
    //   from	to	target	type
    //   7	29	209	com/maxthon/main/RestartException
    //   34	208	238	java/lang/Exception
  }

  public static void startGameCenter(Context paramContext)
  {
    startGameCenter(paramContext, true);
  }

  public static void startGameCenter(Context paramContext, int paramInt)
  {
    startGameCenter(paramContext, true, paramInt);
  }

  public static void startGameCenter(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext.getApplicationContext(), InitActivity.class);
    localIntent.putExtra("dependence", paramBoolean);
    paramContext.startActivity(localIntent);
  }

  public static void startGameCenter(Context paramContext, boolean paramBoolean, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext.getApplicationContext(), InitActivity.class);
    localIntent.putExtra("dependence", paramBoolean);
    if (paramInt > 0)
      localIntent.addFlags(paramInt);
    paramContext.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.WgePlay
 * JD-Core Version:    0.6.0
 */