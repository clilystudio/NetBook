package com.alipay.b.a;

import android.content.Context;
import android.support.design.widget.am;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import java.util.HashMap;
import java.util.Map;

public class a
{
  private static final String b = a.class.getName();
  private static boolean c = false;
  private final Context a;

  public a(Context paramContext)
  {
    this.a = paramContext;
  }

  public static String a(Context paramContext)
  {
    String str1 = "";
    try
    {
      str1 = g.b();
      if (!am.a(str1))
        return str1;
      d locald = am.a(paramContext);
      if ((locald != null) && (!am.a(locald.c())))
      {
        String str2 = locald.c();
        return str2;
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return str1;
  }

  private static void a(boolean paramBoolean)
  {
    monitorenter;
    try
    {
      c = paramBoolean;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private static boolean a()
  {
    monitorenter;
    try
    {
      boolean bool = c;
      monitorexit;
      return bool;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private f b(Map<String, String> paramMap)
  {
    while (true)
    {
      try
      {
        Context localContext1 = this.a;
        DeviceDataReportRequest localDeviceDataReportRequest = new DeviceDataReportRequest();
        String str1 = "";
        String str2 = "";
        String str3 = am.a(paramMap, "umid", "");
        d locald1 = am.b(localContext1);
        if (locald1 != null)
        {
          str1 = locald1.c();
          String str4 = locald1.a();
          String str5 = locald1.d();
          str6 = str4;
          str7 = str5;
          d locald2 = am.d();
          if (locald2 == null)
            continue;
          str2 = locald2.a();
          if ((!am.a(str6)) || (!am.a(str2)))
            continue;
          str6 = com.arcsoft.hpay100.a.a.b(localContext1);
          str2 = com.arcsoft.hpay100.a.a.a();
          localDeviceDataReportRequest.os = "android";
          localDeviceDataReportRequest.priApdid = str6;
          localDeviceDataReportRequest.pubApdid = str2;
          localDeviceDataReportRequest.token = str1;
          localDeviceDataReportRequest.umidToken = str3;
          localDeviceDataReportRequest.lastTime = str7;
          localDeviceDataReportRequest.version = "3";
          HashMap localHashMap = new HashMap();
          localHashMap.putAll(com.alipay.b.d.a.a(localContext1, paramMap));
          localDeviceDataReportRequest.dataMap = localHashMap;
          if (localDeviceDataReportRequest.dataMap == null)
            continue;
          Map localMap1 = localDeviceDataReportRequest.dataMap;
          com.alipay.security.mobile.module.b.a.a();
          localMap1.put("AL3", com.alipay.security.mobile.module.b.a.l(localContext1));
          Map localMap2 = localDeviceDataReportRequest.dataMap;
          String str8 = com.arcsoft.hpay100.a.a.f(localContext1);
          String str9 = com.arcsoft.hpay100.a.a.e(localContext1);
          if (am.a(str8))
            break label348;
          if (!am.a(str9))
            continue;
          break label348;
          localMap2.put("AA5", localObject);
          Context localContext2 = this.a;
          return new f(com.arcsoft.hpay100.a.a.h(localContext2).a(localDeviceDataReportRequest));
          com.alipay.security.mobile.module.b.a.a();
          String str10 = com.arcsoft.hpay100.a.a.a(com.alipay.security.mobile.module.b.a.m(localContext1), str9, str8);
          localObject = str10;
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        com.alipay.security.mobile.module.a.a.a(localThrowable);
        return null;
      }
      String str6 = "";
      String str7 = "";
      continue;
      label348: Object localObject = "";
    }
  }

  public static String b(Context paramContext)
  {
    String str = "";
    try
    {
      str = g.a();
      if (!am.a(str))
        return str;
      d locald = am.a(paramContext);
      if ((locald != null) && (!am.a(locald.a())))
        return locald.a();
      str = com.arcsoft.hpay100.a.a.a(paramContext);
      if (am.a(str))
      {
        str = am.d(paramContext);
        boolean bool = am.a(str);
        if (!bool)
          return str;
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return str;
  }

  // ERROR //
  public final String a(Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +6 -> 7
    //   4: ldc 34
    //   6: areturn
    //   7: new 198	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   14: aload_0
    //   15: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   18: invokevirtual 205	android/content/Context:getFilesDir	()Ljava/io/File;
    //   21: invokevirtual 210	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   24: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 216
    //   29: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 219	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: astore 5
    //   37: getstatic 224	android/os/Build:MODEL	Ljava/lang/String;
    //   40: astore 6
    //   42: aload_0
    //   43: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   46: invokevirtual 228	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   49: invokevirtual 232	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   52: getfield 237	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   55: astore 7
    //   57: aload_1
    //   58: ldc 239
    //   60: ldc 34
    //   62: invokestatic 101	android/support/design/widget/am:a	(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   65: astore 8
    //   67: aload_1
    //   68: ldc 241
    //   70: ldc 34
    //   72: invokestatic 101	android/support/design/widget/am:a	(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   75: astore 9
    //   77: ldc 34
    //   79: astore 10
    //   81: aload_0
    //   82: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   85: invokestatic 46	android/support/design/widget/am:a	(Landroid/content/Context;)Lcom/alipay/b/a/d;
    //   88: astore 11
    //   90: aload 11
    //   92: ifnull +10 -> 102
    //   95: aload 11
    //   97: invokevirtual 105	com/alipay/b/a/d:a	()Ljava/lang/String;
    //   100: astore 10
    //   102: new 243	com/alipay/b/c/a
    //   105: dup
    //   106: aload 6
    //   108: aload 7
    //   110: ldc 245
    //   112: ldc 247
    //   114: aload 8
    //   116: aload 9
    //   118: aload 10
    //   120: invokespecial 250	com/alipay/b/c/a:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   123: astore 12
    //   125: invokestatic 256	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   128: invokevirtual 260	java/util/Calendar:getTime	()Ljava/util/Date;
    //   131: astore 13
    //   133: new 262	java/text/SimpleDateFormat
    //   136: dup
    //   137: ldc_w 264
    //   140: invokespecial 267	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   143: aload 13
    //   145: invokevirtual 271	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   148: astore 14
    //   150: aload 5
    //   152: new 198	java/lang/StringBuilder
    //   155: dup
    //   156: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   159: aload 14
    //   161: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w 273
    //   167: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 219	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: aload 12
    //   175: invokevirtual 274	com/alipay/b/c/a:toString	()Ljava/lang/String;
    //   178: invokestatic 277	com/alipay/security/mobile/module/a/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   181: new 279	java/lang/Thread
    //   184: dup
    //   185: new 281	com/alipay/b/a/b
    //   188: dup
    //   189: aload_0
    //   190: invokespecial 284	com/alipay/b/a/b:<init>	(Lcom/alipay/b/a/a;)V
    //   193: invokespecial 287	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   196: invokevirtual 290	java/lang/Thread:start	()V
    //   199: aload_1
    //   200: ldc_w 292
    //   203: ldc 34
    //   205: invokestatic 101	android/support/design/widget/am:a	(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   208: astore 15
    //   210: invokestatic 294	com/alipay/b/d/a:a	()V
    //   213: aload_0
    //   214: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   217: aload_1
    //   218: invokestatic 297	com/alipay/b/d/a:b	(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    //   221: astore 16
    //   223: aload_0
    //   224: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   227: invokestatic 46	android/support/design/widget/am:a	(Landroid/content/Context;)Lcom/alipay/b/a/d;
    //   230: astore 17
    //   232: aload 17
    //   234: ifnull +108 -> 342
    //   237: aload 16
    //   239: aload 17
    //   241: invokevirtual 298	com/alipay/b/a/d:b	()Ljava/lang/String;
    //   244: invokestatic 301	android/support/design/widget/am:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   247: ifne +89 -> 336
    //   250: iconst_1
    //   251: istore 18
    //   253: aload_0
    //   254: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   257: invokestatic 304	com/alipay/b/a/g:a	(Landroid/content/Context;)Z
    //   260: istore 19
    //   262: iload 18
    //   264: ifne +84 -> 348
    //   267: iload 19
    //   269: ifeq +79 -> 348
    //   272: aload 17
    //   274: invokevirtual 50	com/alipay/b/a/d:c	()Ljava/lang/String;
    //   277: invokestatic 43	android/support/design/widget/am:a	(Ljava/lang/String;)Z
    //   280: ifne +68 -> 348
    //   283: aload 17
    //   285: invokevirtual 50	com/alipay/b/a/d:c	()Ljava/lang/String;
    //   288: astore 46
    //   290: aload 46
    //   292: astore 4
    //   294: aload_0
    //   295: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   298: astore 21
    //   300: getstatic 56	com/alipay/b/b/a:b	Lcom/alipay/security/mobile/module/http/UploadFactory$Mode;
    //   303: pop
    //   304: new 306	com/alipay/b/c/b
    //   307: dup
    //   308: aload 5
    //   310: aload 21
    //   312: invokestatic 64	com/arcsoft/hpay100/a/a:h	(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/a;
    //   315: invokespecial 309	com/alipay/b/c/b:<init>	(Ljava/lang/String;Lcom/alipay/security/mobile/module/http/a;)V
    //   318: aload_0
    //   319: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   322: invokevirtual 311	com/alipay/b/c/b:a	(Landroid/content/Context;)V
    //   325: aload 4
    //   327: areturn
    //   328: astore_3
    //   329: aload_3
    //   330: invokestatic 92	com/alipay/security/mobile/module/a/a:a	(Ljava/lang/Throwable;)V
    //   333: aload 4
    //   335: areturn
    //   336: iconst_0
    //   337: istore 18
    //   339: goto -86 -> 253
    //   342: iconst_1
    //   343: istore 18
    //   345: goto -92 -> 253
    //   348: aload_0
    //   349: aload_1
    //   350: invokespecial 313	com/alipay/b/a/a:b	(Ljava/util/Map;)Lcom/alipay/b/a/f;
    //   353: astore 20
    //   355: aload 20
    //   357: ifnull +316 -> 673
    //   360: aload 20
    //   362: invokevirtual 314	com/alipay/b/a/f:a	()Z
    //   365: ifeq +308 -> 673
    //   368: aload_0
    //   369: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   372: astore 23
    //   374: aload 20
    //   376: invokevirtual 316	com/alipay/b/a/f:f	()Z
    //   379: istore 24
    //   381: aload 23
    //   383: ldc_w 318
    //   386: iconst_0
    //   387: invokevirtual 322	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   390: invokeinterface 328 1 0
    //   395: astore 41
    //   397: aload 41
    //   399: ifnull +40 -> 439
    //   402: iload 24
    //   404: ifeq +233 -> 637
    //   407: invokestatic 331	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
    //   410: ldc_w 333
    //   413: invokestatic 336	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   416: astore 42
    //   418: aload 41
    //   420: ldc_w 338
    //   423: aload 42
    //   425: invokeinterface 344 3 0
    //   430: pop
    //   431: aload 41
    //   433: invokeinterface 347 1 0
    //   438: pop
    //   439: aload_0
    //   440: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   443: invokestatic 172	com/arcsoft/hpay100/a/a:f	(Landroid/content/Context;)Ljava/lang/String;
    //   446: astore 26
    //   448: aload 20
    //   450: invokevirtual 350	com/alipay/b/a/f:g	()Ljava/lang/String;
    //   453: invokestatic 43	android/support/design/widget/am:a	(Ljava/lang/String;)Z
    //   456: ifne +54 -> 510
    //   459: aload 26
    //   461: aload 20
    //   463: invokevirtual 350	com/alipay/b/a/f:g	()Ljava/lang/String;
    //   466: invokestatic 301	android/support/design/widget/am:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   469: ifne +41 -> 510
    //   472: aload 20
    //   474: invokevirtual 351	com/alipay/b/a/f:c	()Ljava/lang/String;
    //   477: astore 38
    //   479: invokestatic 352	com/alipay/b/a/a:a	()Z
    //   482: ifne +28 -> 510
    //   485: iconst_1
    //   486: invokestatic 80	com/alipay/b/a/a:a	(Z)V
    //   489: new 354	com/alipay/b/a/c
    //   492: dup
    //   493: aload_0
    //   494: aload 15
    //   496: aload 38
    //   498: ldc 34
    //   500: invokespecial 356	com/alipay/b/a/c:<init>	(Lcom/alipay/b/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   503: invokevirtual 290	java/lang/Thread:start	()V
    //   506: iconst_0
    //   507: invokestatic 80	com/alipay/b/a/a:a	(Z)V
    //   510: aload_0
    //   511: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   514: aload_1
    //   515: invokestatic 297	com/alipay/b/d/a:b	(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    //   518: astore 27
    //   520: aload 20
    //   522: ifnull +101 -> 623
    //   525: new 48	com/alipay/b/a/d
    //   528: dup
    //   529: aload 20
    //   531: aload 27
    //   533: invokespecial 359	com/alipay/b/a/d:<init>	(Lcom/alipay/b/a/f;Ljava/lang/String;)V
    //   536: astore 28
    //   538: aload_0
    //   539: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   542: aload 28
    //   544: invokestatic 362	android/support/design/widget/am:a	(Landroid/content/Context;Lcom/alipay/b/a/d;)V
    //   547: aload 28
    //   549: invokestatic 365	com/alipay/b/a/g:a	(Lcom/alipay/b/a/d;)V
    //   552: aload 28
    //   554: invokestatic 366	com/arcsoft/hpay100/a/a:a	(Lcom/alipay/b/a/d;)V
    //   557: aload_0
    //   558: getfield 28	com/alipay/b/a/a:a	Landroid/content/Context;
    //   561: astore 29
    //   563: invokestatic 372	java/lang/System:currentTimeMillis	()J
    //   566: lstore 30
    //   568: aload 29
    //   570: ldc_w 318
    //   573: iconst_0
    //   574: invokevirtual 322	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   577: invokeinterface 328 1 0
    //   582: astore 34
    //   584: aload 34
    //   586: ifnull +37 -> 623
    //   589: lload 30
    //   591: invokestatic 378	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   594: astore 35
    //   596: aload 34
    //   598: ldc_w 380
    //   601: invokestatic 331	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
    //   604: aload 35
    //   606: invokestatic 336	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   609: invokeinterface 344 3 0
    //   614: pop
    //   615: aload 34
    //   617: invokeinterface 347 1 0
    //   622: pop
    //   623: aload 20
    //   625: invokevirtual 351	com/alipay/b/a/f:c	()Ljava/lang/String;
    //   628: astore 33
    //   630: aload 33
    //   632: astore 4
    //   634: goto -340 -> 294
    //   637: invokestatic 331	com/alipay/security/mobile/module/a/a/b:a	()Ljava/lang/String;
    //   640: ldc_w 382
    //   643: invokestatic 336	com/alipay/security/mobile/module/a/a/b:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   646: astore 45
    //   648: aload 45
    //   650: astore 42
    //   652: goto -234 -> 418
    //   655: astore 40
    //   657: iconst_0
    //   658: invokestatic 80	com/alipay/b/a/a:a	(Z)V
    //   661: goto -151 -> 510
    //   664: astore 39
    //   666: iconst_0
    //   667: invokestatic 80	com/alipay/b/a/a:a	(Z)V
    //   670: aload 39
    //   672: athrow
    //   673: aload 20
    //   675: ifnull +53 -> 728
    //   678: new 198	java/lang/StringBuilder
    //   681: dup
    //   682: ldc_w 384
    //   685: invokespecial 385	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   688: aload 20
    //   690: invokevirtual 387	com/alipay/b/a/f:e	()Ljava/lang/String;
    //   693: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: invokevirtual 219	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   699: invokestatic 389	com/alipay/security/mobile/module/a/a:a	(Ljava/lang/String;)V
    //   702: aload 17
    //   704: ifnull +33 -> 737
    //   707: aload 17
    //   709: invokevirtual 50	com/alipay/b/a/d:c	()Ljava/lang/String;
    //   712: invokestatic 43	android/support/design/widget/am:a	(Ljava/lang/String;)Z
    //   715: ifne +22 -> 737
    //   718: aload 17
    //   720: invokevirtual 50	com/alipay/b/a/d:c	()Ljava/lang/String;
    //   723: astore 4
    //   725: goto -431 -> 294
    //   728: ldc_w 391
    //   731: invokestatic 389	com/alipay/security/mobile/module/a/a:a	(Ljava/lang/String;)V
    //   734: goto -32 -> 702
    //   737: ldc 34
    //   739: astore 4
    //   741: goto -447 -> 294
    //   744: astore 32
    //   746: goto -123 -> 623
    //   749: astore 25
    //   751: goto -312 -> 439
    //   754: astore_2
    //   755: aload_2
    //   756: astore_3
    //   757: ldc 34
    //   759: astore 4
    //   761: goto -432 -> 329
    //
    // Exception table:
    //   from	to	target	type
    //   294	325	328	java/lang/Throwable
    //   489	506	655	java/lang/Throwable
    //   489	506	664	finally
    //   568	584	744	java/lang/Throwable
    //   589	623	744	java/lang/Throwable
    //   381	397	749	java/lang/Throwable
    //   407	418	749	java/lang/Throwable
    //   418	439	749	java/lang/Throwable
    //   637	648	749	java/lang/Throwable
    //   7	77	754	java/lang/Throwable
    //   81	90	754	java/lang/Throwable
    //   95	102	754	java/lang/Throwable
    //   102	232	754	java/lang/Throwable
    //   237	250	754	java/lang/Throwable
    //   253	262	754	java/lang/Throwable
    //   272	290	754	java/lang/Throwable
    //   348	355	754	java/lang/Throwable
    //   360	381	754	java/lang/Throwable
    //   439	489	754	java/lang/Throwable
    //   506	510	754	java/lang/Throwable
    //   510	520	754	java/lang/Throwable
    //   525	568	754	java/lang/Throwable
    //   623	630	754	java/lang/Throwable
    //   657	661	754	java/lang/Throwable
    //   666	673	754	java/lang/Throwable
    //   678	702	754	java/lang/Throwable
    //   707	725	754	java/lang/Throwable
    //   728	734	754	java/lang/Throwable
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.a
 * JD-Core Version:    0.6.0
 */