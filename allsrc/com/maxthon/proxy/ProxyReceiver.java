package com.maxthon.proxy;

import android.content.BroadcastReceiver;

public abstract class ProxyReceiver extends BroadcastReceiver
{
  protected ClassLoader mClassLoader;
  protected Class mClazz;
  protected Object mObj;

  public abstract String getTargetClassName();

  // ERROR //
  public void onReceive(android.content.Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: invokestatic 28	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   3: aload_1
    //   4: invokevirtual 32	com/maxthon/dex/DexUtils:init	(Landroid/content/Context;)V
    //   7: aload_0
    //   8: invokestatic 28	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   11: invokestatic 28	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   14: ldc 34
    //   16: invokestatic 28	com/maxthon/dex/DexUtils:getInstance	()Lcom/maxthon/dex/DexUtils;
    //   19: invokevirtual 37	com/maxthon/dex/DexUtils:getJversion	()Ljava/lang/String;
    //   22: invokevirtual 41	com/maxthon/dex/DexUtils:getJarFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   25: invokevirtual 45	com/maxthon/dex/DexUtils:getDexClassLoader	(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    //   28: putfield 47	com/maxthon/proxy/ProxyReceiver:mClassLoader	Ljava/lang/ClassLoader;
    //   31: aload_0
    //   32: getfield 47	com/maxthon/proxy/ProxyReceiver:mClassLoader	Ljava/lang/ClassLoader;
    //   35: ifnull +63 -> 98
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 47	com/maxthon/proxy/ProxyReceiver:mClassLoader	Ljava/lang/ClassLoader;
    //   43: aload_0
    //   44: invokevirtual 49	com/maxthon/proxy/ProxyReceiver:getTargetClassName	()Ljava/lang/String;
    //   47: invokevirtual 55	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   50: putfield 57	com/maxthon/proxy/ProxyReceiver:mClazz	Ljava/lang/Class;
    //   53: aload_0
    //   54: aload_0
    //   55: getfield 57	com/maxthon/proxy/ProxyReceiver:mClazz	Ljava/lang/Class;
    //   58: invokevirtual 63	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   61: putfield 65	com/maxthon/proxy/ProxyReceiver:mObj	Ljava/lang/Object;
    //   64: aload_0
    //   65: getfield 57	com/maxthon/proxy/ProxyReceiver:mClazz	Ljava/lang/Class;
    //   68: ldc 67
    //   70: iconst_1
    //   71: anewarray 59	java/lang/Class
    //   74: dup
    //   75: iconst_0
    //   76: ldc 2
    //   78: aastore
    //   79: invokevirtual 71	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   82: aload_0
    //   83: getfield 65	com/maxthon/proxy/ProxyReceiver:mObj	Ljava/lang/Object;
    //   86: iconst_1
    //   87: anewarray 73	java/lang/Object
    //   90: dup
    //   91: iconst_0
    //   92: aload_0
    //   93: aastore
    //   94: invokevirtual 79	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   97: pop
    //   98: aload_0
    //   99: getfield 57	com/maxthon/proxy/ProxyReceiver:mClazz	Ljava/lang/Class;
    //   102: ifnull +53 -> 155
    //   105: aload_0
    //   106: getfield 65	com/maxthon/proxy/ProxyReceiver:mObj	Ljava/lang/Object;
    //   109: ifnull +46 -> 155
    //   112: aload_0
    //   113: getfield 57	com/maxthon/proxy/ProxyReceiver:mClazz	Ljava/lang/Class;
    //   116: ldc 80
    //   118: iconst_2
    //   119: anewarray 59	java/lang/Class
    //   122: dup
    //   123: iconst_0
    //   124: ldc 82
    //   126: aastore
    //   127: dup
    //   128: iconst_1
    //   129: ldc 84
    //   131: aastore
    //   132: invokevirtual 71	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   135: aload_0
    //   136: getfield 65	com/maxthon/proxy/ProxyReceiver:mObj	Ljava/lang/Object;
    //   139: iconst_2
    //   140: anewarray 73	java/lang/Object
    //   143: dup
    //   144: iconst_0
    //   145: aload_1
    //   146: aastore
    //   147: dup
    //   148: iconst_1
    //   149: aload_2
    //   150: aastore
    //   151: invokevirtual 79	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   154: pop
    //   155: return
    //   156: astore_3
    //   157: aload_3
    //   158: invokevirtual 87	com/maxthon/main/RestartException:printStackTrace	()V
    //   161: ldc 89
    //   163: ldc 91
    //   165: invokestatic 97	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   168: pop
    //   169: ldc 99
    //   171: aload_1
    //   172: invokevirtual 103	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   175: invokevirtual 107	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   178: checkcast 99	com/maxthon/main/MgeApplication
    //   181: aload_1
    //   182: invokevirtual 110	com/maxthon/main/MgeApplication:restartApp	(Landroid/content/Context;)V
    //   185: return
    //   186: astore 5
    //   188: aload 5
    //   190: invokevirtual 111	java/lang/Exception:printStackTrace	()V
    //   193: goto -95 -> 98
    //   196: astore 6
    //   198: aload 6
    //   200: invokevirtual 111	java/lang/Exception:printStackTrace	()V
    //   203: return
    //
    // Exception table:
    //   from	to	target	type
    //   7	31	156	com/maxthon/main/RestartException
    //   31	98	186	java/lang/Exception
    //   98	155	196	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.proxy.ProxyReceiver
 * JD-Core Version:    0.6.0
 */