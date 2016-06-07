package com.clilystudio.netbook.api;

public class f
{
  private static f b = null;
  private String a = null;
  private String c = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 SogouMSE,SogouMobileBrowser/3.6.2";
  private String d = "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53";
  private String e = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.7.500 U3/0.8.0 Mobile Safari/534.30";

  public static f a()
  {
    if (b == null)
      b = new f();
    return b;
  }

  private static String a(String paramString)
  {
    if (paramString == null)
    {
      paramString = "not-found";
      return paramString;
    }
    switch (paramString.length())
    {
    case 0:
    default:
      return Character.toUpperCase(paramString.charAt(0)) + paramString.substring(1);
    case 1:
    }
    return paramString.toUpperCase();
  }

  public final String a(int paramInt)
  {
    switch (paramInt)
    {
    case 4:
    case 5:
    default:
      return null;
    case 6:
      return "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/6.0 MQQBrowser/4.3 Mobile/11D257 Safari/7534.48.3";
    case 7:
      return this.c;
    case 8:
      return this.d;
    case 3:
    }
    return this.e;
  }

  // ERROR //
  public final String b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 20	com/ushaqi/zhuishushenqi/api/f:a	Ljava/lang/String;
    //   4: ifnonnull +344 -> 348
    //   7: ldc 2
    //   9: monitorenter
    //   10: invokestatic 84	com/ushaqi/zhuishushenqi/MyApplication:a	()Lcom/ushaqi/zhuishushenqi/MyApplication;
    //   13: astore_2
    //   14: aload_2
    //   15: invokevirtual 90	android/app/Application:getPackageManager	()Landroid/content/pm/PackageManager;
    //   18: aload_2
    //   19: invokevirtual 93	android/app/Application:getPackageName	()Ljava/lang/String;
    //   22: iconst_0
    //   23: invokevirtual 99	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   26: astore 20
    //   28: aload 20
    //   30: astore 4
    //   32: aload 4
    //   34: ifnull +352 -> 386
    //   37: aload 4
    //   39: getfield 104	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   42: astore 5
    //   44: aload_2
    //   45: ldc 106
    //   47: invokevirtual 110	android/app/Application:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   50: checkcast 112	android/telephony/TelephonyManager
    //   53: astore 6
    //   55: aload 6
    //   57: invokevirtual 115	android/telephony/TelephonyManager:getSimOperatorName	()Ljava/lang/String;
    //   60: astore 19
    //   62: aload 19
    //   64: astore 8
    //   66: bipush 8
    //   68: anewarray 4	java/lang/Object
    //   71: astore 9
    //   73: aload 9
    //   75: iconst_0
    //   76: ldc 117
    //   78: aastore
    //   79: aload 9
    //   81: iconst_1
    //   82: aload 5
    //   84: aastore
    //   85: aload 9
    //   87: iconst_2
    //   88: getstatic 122	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   91: aastore
    //   92: aload 9
    //   94: iconst_3
    //   95: getstatic 127	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   98: invokestatic 129	com/ushaqi/zhuishushenqi/api/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   101: aastore
    //   102: aload 9
    //   104: iconst_4
    //   105: getstatic 132	android/os/Build:DEVICE	Ljava/lang/String;
    //   108: invokestatic 129	com/ushaqi/zhuishushenqi/api/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   111: aastore
    //   112: aload 9
    //   114: iconst_5
    //   115: getstatic 135	android/os/Build:BRAND	Ljava/lang/String;
    //   118: invokestatic 129	com/ushaqi/zhuishushenqi/api/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   121: aastore
    //   122: aload 9
    //   124: bipush 6
    //   126: getstatic 138	android/os/Build:MODEL	Ljava/lang/String;
    //   129: invokestatic 129	com/ushaqi/zhuishushenqi/api/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   132: aastore
    //   133: aload 9
    //   135: bipush 7
    //   137: aload 8
    //   139: invokestatic 129	com/ushaqi/zhuishushenqi/api/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   142: aastore
    //   143: aload_0
    //   144: ldc 140
    //   146: aload 9
    //   148: invokestatic 144	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   151: putfield 20	com/ushaqi/zhuishushenqi/api/f:a	Ljava/lang/String;
    //   154: new 146	java/util/ArrayList
    //   157: dup
    //   158: invokespecial 147	java/util/ArrayList:<init>	()V
    //   161: astore 10
    //   163: new 45	java/lang/StringBuilder
    //   166: dup
    //   167: ldc 149
    //   169: invokespecial 152	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   172: astore 11
    //   174: iconst_1
    //   175: aload_2
    //   176: invokevirtual 156	android/app/Application:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   179: getfield 162	android/content/pm/ApplicationInfo:flags	I
    //   182: iand
    //   183: iconst_1
    //   184: if_icmpne +185 -> 369
    //   187: iconst_1
    //   188: istore 12
    //   190: aload 10
    //   192: aload 11
    //   194: iload 12
    //   196: invokevirtual 165	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   199: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokevirtual 169	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   205: pop
    //   206: aload 10
    //   208: new 45	java/lang/StringBuilder
    //   211: dup
    //   212: ldc 171
    //   214: invokespecial 152	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   217: invokestatic 177	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   220: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: invokevirtual 169	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   229: pop
    //   230: aload_2
    //   231: invokevirtual 184	android/app/Application:getClassLoader	()Ljava/lang/ClassLoader;
    //   234: ldc 186
    //   236: invokevirtual 192	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   239: astore 16
    //   241: aload 16
    //   243: ldc 194
    //   245: iconst_1
    //   246: anewarray 196	java/lang/Class
    //   249: dup
    //   250: iconst_0
    //   251: ldc 39
    //   253: aastore
    //   254: invokevirtual 200	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   257: astore 17
    //   259: aload 10
    //   261: new 45	java/lang/StringBuilder
    //   264: dup
    //   265: ldc 202
    //   267: invokespecial 152	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   270: aload 17
    //   272: aload 16
    //   274: iconst_1
    //   275: anewarray 4	java/lang/Object
    //   278: dup
    //   279: iconst_0
    //   280: ldc 204
    //   282: aastore
    //   283: invokevirtual 210	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   286: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   289: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   292: invokevirtual 169	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   295: pop
    //   296: aload 10
    //   298: invokevirtual 213	java/util/ArrayList:size	()I
    //   301: ifle +44 -> 345
    //   304: aload_0
    //   305: new 45	java/lang/StringBuilder
    //   308: dup
    //   309: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   312: aload_0
    //   313: getfield 20	com/ushaqi/zhuishushenqi/api/f:a	Ljava/lang/String;
    //   316: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: ldc 215
    //   321: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: ldc 217
    //   326: aload 10
    //   328: invokestatic 223	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   331: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: ldc 225
    //   336: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: putfield 20	com/ushaqi/zhuishushenqi/api/f:a	Ljava/lang/String;
    //   345: ldc 2
    //   347: monitorexit
    //   348: aload_0
    //   349: getfield 20	com/ushaqi/zhuishushenqi/api/f:a	Ljava/lang/String;
    //   352: areturn
    //   353: astore_3
    //   354: aconst_null
    //   355: astore 4
    //   357: goto -325 -> 32
    //   360: astore 7
    //   362: ldc 37
    //   364: astore 8
    //   366: goto -300 -> 66
    //   369: iconst_0
    //   370: istore 12
    //   372: goto -182 -> 190
    //   375: astore_1
    //   376: ldc 2
    //   378: monitorexit
    //   379: aload_1
    //   380: athrow
    //   381: astore 15
    //   383: goto -87 -> 296
    //   386: ldc 37
    //   388: astore 5
    //   390: goto -346 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   14	28	353	android/content/pm/PackageManager$NameNotFoundException
    //   55	62	360	java/lang/Exception
    //   10	14	375	finally
    //   14	28	375	finally
    //   37	44	375	finally
    //   44	55	375	finally
    //   55	62	375	finally
    //   66	187	375	finally
    //   190	230	375	finally
    //   230	296	375	finally
    //   296	345	375	finally
    //   345	348	375	finally
    //   376	379	375	finally
    //   230	296	381	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.api.f
 * JD-Core Version:    0.6.0
 */