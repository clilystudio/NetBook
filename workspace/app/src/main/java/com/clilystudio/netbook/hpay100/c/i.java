package com.clilystudio.netbook.hpay100.c;

import android.content.Context;

final class i
  implements Runnable
{
  i(Context paramContext)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: new 20	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 21	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: invokestatic 27	com/arcsoft/hpay100/c/h:c	()[Ljava/lang/String;
    //   11: invokestatic 30	com/arcsoft/hpay100/c/h:a	([Ljava/lang/String;)Ljava/util/List;
    //   14: astore_3
    //   15: aload_0
    //   16: getfield 12	com/arcsoft/hpay100/c/i:a	Landroid/content/Context;
    //   19: ldc 32
    //   21: invokevirtual 38	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   24: checkcast 40	android/app/ActivityManager
    //   27: invokevirtual 44	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   30: astore 4
    //   32: aload_0
    //   33: getfield 12	com/arcsoft/hpay100/c/i:a	Landroid/content/Context;
    //   36: invokevirtual 48	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   39: astore 5
    //   41: aload 4
    //   43: invokeinterface 54 1 0
    //   48: astore 6
    //   50: aload 6
    //   52: invokeinterface 60 1 0
    //   57: ifne +17 -> 74
    //   60: aload_1
    //   61: invokeinterface 64 1 0
    //   66: ifne +186 -> 252
    //   69: iconst_0
    //   70: invokestatic 67	com/arcsoft/hpay100/c/h:a	(I)V
    //   73: return
    //   74: aload 6
    //   76: invokeinterface 71 1 0
    //   81: checkcast 73	android/app/ActivityManager$RunningAppProcessInfo
    //   84: astore 7
    //   86: aload_3
    //   87: invokeinterface 54 1 0
    //   92: astore 8
    //   94: aload 8
    //   96: invokeinterface 60 1 0
    //   101: ifeq -51 -> 50
    //   104: aload 8
    //   106: invokeinterface 71 1 0
    //   111: checkcast 75	java/lang/String
    //   114: astore 9
    //   116: aload 7
    //   118: getfield 79	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   121: aload 9
    //   123: invokevirtual 83	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   126: ifeq -32 -> 94
    //   129: new 85	com/arcsoft/hpay100/config/a
    //   132: dup
    //   133: invokespecial 86	com/arcsoft/hpay100/config/a:<init>	()V
    //   136: astore 10
    //   138: aload 7
    //   140: getfield 79	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   143: pop
    //   144: aload 7
    //   146: getfield 90	android/app/ActivityManager$RunningAppProcessInfo:pkgList	[Ljava/lang/String;
    //   149: ifnull +66 -> 215
    //   152: aload 7
    //   154: getfield 90	android/app/ActivityManager$RunningAppProcessInfo:pkgList	[Ljava/lang/String;
    //   157: iconst_0
    //   158: aaload
    //   159: astore 13
    //   161: aload 13
    //   163: ifnull +52 -> 215
    //   166: aload 5
    //   168: aload 7
    //   170: getfield 90	android/app/ActivityManager$RunningAppProcessInfo:pkgList	[Ljava/lang/String;
    //   173: iconst_0
    //   174: aaload
    //   175: iconst_0
    //   176: invokevirtual 96	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   179: astore 15
    //   181: iconst_1
    //   182: aload 15
    //   184: getfield 102	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   187: getfield 108	android/content/pm/ApplicationInfo:flags	I
    //   190: iand
    //   191: ifne +18 -> 209
    //   194: sipush 128
    //   197: aload 15
    //   199: getfield 102	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   202: getfield 108	android/content/pm/ApplicationInfo:flags	I
    //   205: iand
    //   206: ifeq +27 -> 233
    //   209: aload 10
    //   211: iconst_1
    //   212: putfield 110	com/arcsoft/hpay100/config/a:a	I
    //   215: aload_1
    //   216: aload 10
    //   218: invokeinterface 113 2 0
    //   223: pop
    //   224: goto -130 -> 94
    //   227: astore_2
    //   228: aload_2
    //   229: invokevirtual 116	java/lang/Exception:printStackTrace	()V
    //   232: return
    //   233: aload 10
    //   235: iconst_0
    //   236: putfield 110	com/arcsoft/hpay100/config/a:a	I
    //   239: goto -24 -> 215
    //   242: astore 14
    //   244: aload 14
    //   246: invokevirtual 116	java/lang/Exception:printStackTrace	()V
    //   249: goto -34 -> 215
    //   252: iconst_2
    //   253: invokestatic 67	com/arcsoft/hpay100/c/h:a	(I)V
    //   256: aload_1
    //   257: invokeinterface 54 1 0
    //   262: astore 16
    //   264: aload 16
    //   266: invokeinterface 60 1 0
    //   271: ifeq +24 -> 295
    //   274: aload 16
    //   276: invokeinterface 71 1 0
    //   281: checkcast 85	com/arcsoft/hpay100/config/a
    //   284: getfield 110	com/arcsoft/hpay100/config/a:a	I
    //   287: iconst_1
    //   288: if_icmpne -24 -> 264
    //   291: iconst_1
    //   292: invokestatic 67	com/arcsoft/hpay100/c/h:a	(I)V
    //   295: return
    //
    // Exception table:
    //   from	to	target	type
    //   8	50	227	java/lang/Exception
    //   50	73	227	java/lang/Exception
    //   74	94	227	java/lang/Exception
    //   94	161	227	java/lang/Exception
    //   215	224	227	java/lang/Exception
    //   244	249	227	java/lang/Exception
    //   252	264	227	java/lang/Exception
    //   264	295	227	java/lang/Exception
    //   166	209	242	java/lang/Exception
    //   209	215	242	java/lang/Exception
    //   233	239	242	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.c.i
 * JD-Core Version:    0.6.0
 */