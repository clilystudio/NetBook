package com.xiaomi.mistatistic.sdk;

import android.content.Context;
import com.xiaomi.mistatistic.sdk.a.r;
import java.io.File;

public final class d
  implements Thread.UncaughtExceptionHandler
{
  private static boolean a = false;
  private static int b = 1;
  private final Thread.UncaughtExceptionHandler c;

  // ERROR //
  public static java.util.ArrayList a()
  {
    // Byte code:
    //   0: new 25	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 28	java/util/ArrayList:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   13: invokevirtual 39	android/content/Context:getFilesDir	()Ljava/io/File;
    //   16: astore 10
    //   18: aload 10
    //   20: ifnull +186 -> 206
    //   23: new 41	java/io/File
    //   26: dup
    //   27: aload 10
    //   29: ldc 43
    //   31: invokespecial 46	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   34: astore 11
    //   36: aload 11
    //   38: invokevirtual 50	java/io/File:isFile	()Z
    //   41: ifeq +165 -> 206
    //   44: new 52	java/io/ObjectInputStream
    //   47: dup
    //   48: new 54	java/io/FileInputStream
    //   51: dup
    //   52: aload 11
    //   54: invokespecial 57	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   57: invokespecial 60	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   60: astore 5
    //   62: aload 5
    //   64: invokevirtual 64	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   67: checkcast 25	java/util/ArrayList
    //   70: astore 12
    //   72: aload 5
    //   74: astore 13
    //   76: aload 13
    //   78: ifnull +118 -> 196
    //   81: aload 13
    //   83: invokevirtual 67	java/io/ObjectInputStream:close	()V
    //   86: aload 12
    //   88: astore 8
    //   90: iconst_0
    //   91: istore 7
    //   93: iload 7
    //   95: ifeq +6 -> 101
    //   98: invokestatic 69	com/xiaomi/mistatistic/sdk/d:b	()V
    //   101: aload 8
    //   103: areturn
    //   104: astore 14
    //   106: aload 12
    //   108: astore 8
    //   110: iconst_0
    //   111: istore 7
    //   113: goto -20 -> 93
    //   116: astore 4
    //   118: aconst_null
    //   119: astore 5
    //   121: new 71	com/xiaomi/mistatistic/sdk/a/t
    //   124: dup
    //   125: invokespecial 72	com/xiaomi/mistatistic/sdk/a/t:<init>	()V
    //   128: pop
    //   129: ldc 74
    //   131: aload 4
    //   133: invokestatic 77	com/xiaomi/mistatistic/sdk/a/t:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   136: iconst_1
    //   137: istore 7
    //   139: aload 5
    //   141: ifnull +49 -> 190
    //   144: aload 5
    //   146: invokevirtual 67	java/io/ObjectInputStream:close	()V
    //   149: aload_0
    //   150: astore 8
    //   152: goto -59 -> 93
    //   155: astore 9
    //   157: aload_0
    //   158: astore 8
    //   160: goto -67 -> 93
    //   163: astore_2
    //   164: aload_1
    //   165: ifnull +7 -> 172
    //   168: aload_1
    //   169: invokevirtual 67	java/io/ObjectInputStream:close	()V
    //   172: aload_2
    //   173: athrow
    //   174: astore_3
    //   175: goto -3 -> 172
    //   178: astore_2
    //   179: aload 5
    //   181: astore_1
    //   182: goto -18 -> 164
    //   185: astore 4
    //   187: goto -66 -> 121
    //   190: aload_0
    //   191: astore 8
    //   193: goto -100 -> 93
    //   196: aload 12
    //   198: astore 8
    //   200: iconst_0
    //   201: istore 7
    //   203: goto -110 -> 93
    //   206: aload_0
    //   207: astore 12
    //   209: aconst_null
    //   210: astore 13
    //   212: goto -136 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   81	86	104	java/io/IOException
    //   10	18	116	java/lang/Exception
    //   23	62	116	java/lang/Exception
    //   144	149	155	java/io/IOException
    //   10	18	163	finally
    //   23	62	163	finally
    //   168	172	174	java/io/IOException
    //   62	72	178	finally
    //   121	136	178	finally
    //   62	72	185	java/lang/Exception
  }

  public static void a(Throwable paramThrowable)
  {
  }

  public static void b()
  {
    new File(r.b().getFilesDir(), ".exception").delete();
  }

  public static int c()
  {
    return b;
  }

  // ERROR //
  public final void uncaughtException(java.lang.Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: getstatic 89	android/os/Build$VERSION:SDK_INT	I
    //   5: bipush 9
    //   7: if_icmplt +16 -> 23
    //   10: new 91	android/os/StrictMode$ThreadPolicy$Builder
    //   13: dup
    //   14: invokespecial 92	android/os/StrictMode$ThreadPolicy$Builder:<init>	()V
    //   17: invokevirtual 96	android/os/StrictMode$ThreadPolicy$Builder:build	()Landroid/os/StrictMode$ThreadPolicy;
    //   20: invokestatic 102	android/os/StrictMode:setThreadPolicy	(Landroid/os/StrictMode$ThreadPolicy;)V
    //   23: invokestatic 107	com/xiaomi/mistatistic/sdk/b:d	()Z
    //   26: ifeq +141 -> 167
    //   29: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   32: ldc 109
    //   34: lconst_0
    //   35: invokestatic 115	com/arcsoft/hpay100/a/a:e	(Landroid/content/Context;Ljava/lang/String;J)J
    //   38: lstore 14
    //   40: invokestatic 121	java/lang/System:currentTimeMillis	()J
    //   43: lload 14
    //   45: lsub
    //   46: ldc2_w 122
    //   49: lcmp
    //   50: ifle +48 -> 98
    //   53: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   56: ldc 125
    //   58: iload_3
    //   59: invokestatic 128	com/arcsoft/hpay100/a/a:d	(Landroid/content/Context;Ljava/lang/String;I)V
    //   62: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   65: ldc 109
    //   67: invokestatic 121	java/lang/System:currentTimeMillis	()J
    //   70: invokestatic 132	com/arcsoft/hpay100/a/a:f	(Landroid/content/Context;Ljava/lang/String;J)V
    //   73: iconst_0
    //   74: istore_3
    //   75: iload_3
    //   76: ifne +75 -> 151
    //   79: aload_0
    //   80: getfield 134	com/xiaomi/mistatistic/sdk/d:c	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   83: ifnull +14 -> 97
    //   86: aload_0
    //   87: getfield 134	com/xiaomi/mistatistic/sdk/d:c	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   90: aload_1
    //   91: aload_2
    //   92: invokeinterface 136 3 0
    //   97: return
    //   98: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   101: ldc 125
    //   103: iconst_0
    //   104: invokestatic 139	com/arcsoft/hpay100/a/a:c	(Landroid/content/Context;Ljava/lang/String;I)I
    //   107: istore 16
    //   109: iload 16
    //   111: ifne +14 -> 125
    //   114: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   117: ldc 109
    //   119: invokestatic 121	java/lang/System:currentTimeMillis	()J
    //   122: invokestatic 132	com/arcsoft/hpay100/a/a:f	(Landroid/content/Context;Ljava/lang/String;J)V
    //   125: iload 16
    //   127: iconst_1
    //   128: iadd
    //   129: istore 17
    //   131: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   134: ldc 125
    //   136: iload 17
    //   138: invokestatic 128	com/arcsoft/hpay100/a/a:d	(Landroid/content/Context;Ljava/lang/String;I)V
    //   141: iload 17
    //   143: bipush 10
    //   145: if_icmple -72 -> 73
    //   148: goto -73 -> 75
    //   151: new 71	com/xiaomi/mistatistic/sdk/a/t
    //   154: dup
    //   155: invokespecial 72	com/xiaomi/mistatistic/sdk/a/t:<init>	()V
    //   158: pop
    //   159: ldc 141
    //   161: invokestatic 144	com/xiaomi/mistatistic/sdk/a/t:a	(Ljava/lang/String;)V
    //   164: goto -85 -> 79
    //   167: invokestatic 146	com/xiaomi/mistatistic/sdk/d:a	()Ljava/util/ArrayList;
    //   170: astore 4
    //   172: aload 4
    //   174: aload_2
    //   175: invokevirtual 150	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   178: pop
    //   179: aload 4
    //   181: invokevirtual 153	java/util/ArrayList:size	()I
    //   184: iconst_5
    //   185: if_icmple +10 -> 195
    //   188: aload 4
    //   190: iconst_0
    //   191: invokevirtual 157	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   194: pop
    //   195: new 159	java/io/ObjectOutputStream
    //   198: dup
    //   199: invokestatic 33	com/xiaomi/mistatistic/sdk/a/r:b	()Landroid/content/Context;
    //   202: ldc 43
    //   204: iconst_0
    //   205: invokevirtual 163	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   208: invokespecial 166	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   211: astore 6
    //   213: aload 6
    //   215: aload 4
    //   217: invokevirtual 170	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   220: aload 6
    //   222: invokevirtual 171	java/io/ObjectOutputStream:close	()V
    //   225: goto -146 -> 79
    //   228: astore 12
    //   230: goto -151 -> 79
    //   233: astore 7
    //   235: aconst_null
    //   236: astore 6
    //   238: new 71	com/xiaomi/mistatistic/sdk/a/t
    //   241: dup
    //   242: invokespecial 72	com/xiaomi/mistatistic/sdk/a/t:<init>	()V
    //   245: pop
    //   246: ldc 74
    //   248: aload 7
    //   250: invokestatic 77	com/xiaomi/mistatistic/sdk/a/t:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   253: aload 6
    //   255: ifnull -176 -> 79
    //   258: aload 6
    //   260: invokevirtual 171	java/io/ObjectOutputStream:close	()V
    //   263: goto -184 -> 79
    //   266: astore 11
    //   268: goto -189 -> 79
    //   271: astore 9
    //   273: aconst_null
    //   274: astore 6
    //   276: aload 6
    //   278: ifnull +8 -> 286
    //   281: aload 6
    //   283: invokevirtual 171	java/io/ObjectOutputStream:close	()V
    //   286: aload 9
    //   288: athrow
    //   289: astore 10
    //   291: goto -5 -> 286
    //   294: astore 9
    //   296: goto -20 -> 276
    //   299: astore 7
    //   301: goto -63 -> 238
    //
    // Exception table:
    //   from	to	target	type
    //   220	225	228	java/io/IOException
    //   195	213	233	java/io/IOException
    //   258	263	266	java/io/IOException
    //   195	213	271	finally
    //   281	286	289	java/io/IOException
    //   213	220	294	finally
    //   238	253	294	finally
    //   213	220	299	java/io/IOException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.d
 * JD-Core Version:    0.6.0
 */