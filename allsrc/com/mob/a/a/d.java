package com.mob.a.a;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import com.mob.tools.a.i;
import com.mob.tools.a.l;
import com.mob.tools.a.p;
import com.mob.tools.b.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.zip.GZIPOutputStream;

public final class d extends com.mob.tools.f
{
  private static d a;
  private static String b = "http://api.exc.mob.com:80";
  private HashMap<String, Integer> c;
  private Context d;
  private com.mob.tools.b.a e;
  private l f;
  private e g;
  private File h;
  private c i;

  private d(Context paramContext)
  {
    super("MOB_LOGGER");
    this.d = paramContext.getApplicationContext();
    this.f = new l();
    this.e = com.mob.tools.b.a.a(paramContext);
    this.g = e.a(paramContext);
    this.c = new HashMap();
    this.i = new c();
    this.h = new File(paramContext.getFilesDir(), ".lock");
    if (!this.h.exists());
    try
    {
      this.h.createNewFile();
      com.mob.tools.log.d.setContext(paramContext);
      startThread();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.mob.tools.e.a().w(localException);
    }
  }

  public static d a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new d(paramContext);
      d locald = a;
      return locald;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static String a(String paramString)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramString.getBytes());
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    byte[] arrayOfByte1 = new byte[1024];
    while (true)
    {
      int j = localByteArrayInputStream.read(arrayOfByte1, 0, 1024);
      if (j == -1)
        break;
      localGZIPOutputStream.write(arrayOfByte1, 0, j);
    }
    localGZIPOutputStream.flush();
    localGZIPOutputStream.close();
    byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localByteArrayInputStream.close();
    return Base64.encodeToString(arrayOfByte2, 2);
  }

  private void a(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    try
    {
      if (!this.g.b())
        return;
      if ("none".equals(this.e.i()))
        throw new IllegalStateException("network is disconnected!");
    }
    catch (Throwable localThrowable)
    {
      com.mob.tools.e.a().w(localThrowable);
      return;
    }
    ArrayList localArrayList = com.arcsoft.hpay100.a.a.a(this.d, paramArrayOfString);
    for (int j = 0; j < localArrayList.size(); j++)
    {
      f localf = (f)localArrayList.get(j);
      HashMap localHashMap = new HashMap();
      localHashMap.put("key", paramString2);
      localHashMap.put("plat", Integer.valueOf(1));
      localHashMap.put("sdk", paramString1);
      localHashMap.put("sdkver", Integer.valueOf(paramInt));
      localHashMap.put("appname", this.e.l());
      localHashMap.put("apppkg", this.e.k());
      localHashMap.put("appver", String.valueOf(this.e.m()));
      localHashMap.put("deviceid", this.e.j());
      localHashMap.put("model", Build.MODEL);
      localHashMap.put("mac", this.e.c());
      localHashMap.put("udid", this.e.d());
      localHashMap.put("sysver", String.valueOf(Build.VERSION.SDK_INT));
      localHashMap.put("networktype", this.e.i());
      localHashMap.put("errmsg", localf.a);
      if (!b(a(new com.mob.tools.b.e().a(localHashMap))))
        continue;
      com.arcsoft.hpay100.a.a.a(this.d, localf.b);
    }
  }

  // ERROR //
  private void b(int paramInt, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 190	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 289	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: new 291	com/mob/tools/a/i
    //   14: dup
    //   15: ldc 202
    //   17: aload_3
    //   18: invokespecial 294	com/mob/tools/a/i:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   21: invokevirtual 297	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   24: pop
    //   25: aload 4
    //   27: new 291	com/mob/tools/a/i
    //   30: dup
    //   31: ldc 216
    //   33: aload_2
    //   34: invokespecial 294	com/mob/tools/a/i:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   37: invokevirtual 297	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   40: pop
    //   41: aload 4
    //   43: new 291	com/mob/tools/a/i
    //   46: dup
    //   47: ldc 225
    //   49: aload_0
    //   50: getfield 59	com/mob/a/a/d:e	Lcom/mob/tools/b/a;
    //   53: invokevirtual 228	com/mob/tools/b/a:k	()Ljava/lang/String;
    //   56: invokespecial 294	com/mob/tools/a/i:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   59: invokevirtual 297	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   62: pop
    //   63: aload 4
    //   65: new 291	com/mob/tools/a/i
    //   68: dup
    //   69: ldc 230
    //   71: aload_0
    //   72: getfield 59	com/mob/a/a/d:e	Lcom/mob/tools/b/a;
    //   75: invokevirtual 233	com/mob/tools/b/a:m	()I
    //   78: invokestatic 236	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   81: invokespecial 294	com/mob/tools/a/i:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   84: invokevirtual 297	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   87: pop
    //   88: aload 4
    //   90: new 291	com/mob/tools/a/i
    //   93: dup
    //   94: ldc 218
    //   96: iload_1
    //   97: invokestatic 236	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   100: invokespecial 294	com/mob/tools/a/i:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   103: invokevirtual 297	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   106: pop
    //   107: aload 4
    //   109: new 291	com/mob/tools/a/i
    //   112: dup
    //   113: ldc 208
    //   115: ldc_w 299
    //   118: invokespecial 294	com/mob/tools/a/i:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   121: invokevirtual 297	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   124: pop
    //   125: new 301	com/mob/tools/a/p
    //   128: dup
    //   129: invokespecial 302	com/mob/tools/a/p:<init>	()V
    //   132: astore 11
    //   134: aload 11
    //   136: sipush 10000
    //   139: putfield 304	com/mob/tools/a/p:a	I
    //   142: aload 11
    //   144: sipush 10000
    //   147: putfield 306	com/mob/tools/a/p:b	I
    //   150: aload_0
    //   151: getfield 52	com/mob/a/a/d:f	Lcom/mob/tools/a/l;
    //   154: new 308	java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial 309	java/lang/StringBuilder:<init>	()V
    //   161: getstatic 29	com/mob/a/a/d:b	Ljava/lang/String;
    //   164: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: ldc_w 315
    //   170: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 318	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: aload 4
    //   178: aconst_null
    //   179: aconst_null
    //   180: aload 11
    //   182: invokevirtual 322	com/mob/tools/a/l:httpPost	(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;
    //   185: astore 14
    //   187: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   190: ldc_w 324
    //   193: iconst_1
    //   194: anewarray 326	java/lang/Object
    //   197: dup
    //   198: iconst_0
    //   199: aload 14
    //   201: aastore
    //   202: invokevirtual 329	com/mob/tools/log/d:i	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   205: pop
    //   206: new 273	com/mob/tools/b/e
    //   209: dup
    //   210: invokespecial 274	com/mob/tools/b/e:<init>	()V
    //   213: aload 14
    //   215: invokevirtual 332	com/mob/tools/b/e:a	(Ljava/lang/String;)Ljava/util/HashMap;
    //   218: astore 16
    //   220: ldc_w 334
    //   223: aload 16
    //   225: ldc_w 336
    //   228: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   231: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   234: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   237: ifeq +18 -> 255
    //   240: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   243: ldc_w 344
    //   246: iconst_0
    //   247: anewarray 326	java/lang/Object
    //   250: invokevirtual 329	com/mob/tools/log/d:i	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   253: pop
    //   254: return
    //   255: aload 16
    //   257: ldc_w 346
    //   260: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   263: astore 17
    //   265: aload 17
    //   267: ifnull +419 -> 686
    //   270: aload 17
    //   272: instanceof 68
    //   275: ifeq +411 -> 686
    //   278: aload 17
    //   280: checkcast 68	java/util/HashMap
    //   283: astore 18
    //   285: aload 18
    //   287: ldc_w 348
    //   290: invokevirtual 351	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   293: istore 19
    //   295: iload 19
    //   297: ifeq +36 -> 333
    //   300: aload 18
    //   302: ldc_w 348
    //   305: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   308: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   311: invokestatic 355	com/arcsoft/hpay100/a/a:o	(Ljava/lang/String;)J
    //   314: lstore 33
    //   316: invokestatic 361	java/lang/System:currentTimeMillis	()J
    //   319: lload 33
    //   321: lsub
    //   322: lstore 35
    //   324: aload_0
    //   325: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   328: lload 35
    //   330: invokevirtual 364	com/mob/a/a/e:a	(J)V
    //   333: ldc_w 299
    //   336: aload 18
    //   338: ldc_w 366
    //   341: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   344: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   347: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   350: ifeq +325 -> 675
    //   353: aload_0
    //   354: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   357: iconst_1
    //   358: invokevirtual 369	com/mob/a/a/e:a	(Z)V
    //   361: aload 18
    //   363: ldc_w 371
    //   366: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   369: astore 20
    //   371: aload 20
    //   373: ifnull +102 -> 475
    //   376: aload 20
    //   378: instanceof 68
    //   381: ifeq +94 -> 475
    //   384: aload 20
    //   386: checkcast 68	java/util/HashMap
    //   389: astore 27
    //   391: aload 27
    //   393: ldc_w 373
    //   396: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   399: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   402: astore 28
    //   404: aload 27
    //   406: ldc_w 375
    //   409: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   412: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   415: astore 29
    //   417: aload 27
    //   419: ldc_w 377
    //   422: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   425: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   428: astore 30
    //   430: aload_0
    //   431: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   434: ldc_w 299
    //   437: aload 28
    //   439: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   442: invokevirtual 379	com/mob/a/a/e:b	(Z)V
    //   445: aload_0
    //   446: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   449: ldc_w 299
    //   452: aload 29
    //   454: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   457: invokevirtual 381	com/mob/a/a/e:c	(Z)V
    //   460: aload_0
    //   461: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   464: ldc_w 299
    //   467: aload 30
    //   469: invokevirtual 178	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   472: invokevirtual 383	com/mob/a/a/e:d	(Z)V
    //   475: aload 18
    //   477: ldc_w 385
    //   480: invokevirtual 351	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   483: ifeq +88 -> 571
    //   486: aload 18
    //   488: ldc_w 387
    //   491: invokevirtual 351	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   494: ifeq +77 -> 571
    //   497: aload 18
    //   499: ldc_w 385
    //   502: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   505: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   508: astore 25
    //   510: aload 18
    //   512: ldc_w 387
    //   515: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   518: invokestatic 342	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   521: astore 26
    //   523: aload 25
    //   525: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   528: ifne +43 -> 571
    //   531: aload 26
    //   533: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   536: ifne +35 -> 571
    //   539: new 308	java/lang/StringBuilder
    //   542: dup
    //   543: ldc_w 395
    //   546: invokespecial 396	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   549: aload 25
    //   551: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: ldc_w 398
    //   557: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: aload 26
    //   562: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   565: invokevirtual 318	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   568: putstatic 29	com/mob/a/a/d:b	Ljava/lang/String;
    //   571: aload 18
    //   573: ldc_w 400
    //   576: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   579: astore 21
    //   581: aload 21
    //   583: ifnull +103 -> 686
    //   586: aload 21
    //   588: instanceof 190
    //   591: ifeq +95 -> 686
    //   594: aload 21
    //   596: checkcast 190	java/util/ArrayList
    //   599: astore 22
    //   601: aload 22
    //   603: invokevirtual 194	java/util/ArrayList:size	()I
    //   606: ifle +80 -> 686
    //   609: new 68	java/util/HashMap
    //   612: dup
    //   613: invokespecial 69	java/util/HashMap:<init>	()V
    //   616: astore 23
    //   618: aload 23
    //   620: ldc_w 402
    //   623: aload 22
    //   625: invokevirtual 206	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   628: pop
    //   629: aload_0
    //   630: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   633: new 273	com/mob/tools/b/e
    //   636: dup
    //   637: invokespecial 274	com/mob/tools/b/e:<init>	()V
    //   640: aload 23
    //   642: invokevirtual 277	com/mob/tools/b/e:a	(Ljava/util/HashMap;)Ljava/lang/String;
    //   645: invokevirtual 404	com/mob/a/a/e:a	(Ljava/lang/String;)V
    //   648: return
    //   649: astore 12
    //   651: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   654: aload 12
    //   656: invokevirtual 113	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   659: pop
    //   660: return
    //   661: astore 31
    //   663: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   666: aload 31
    //   668: invokevirtual 113	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   671: pop
    //   672: goto -339 -> 333
    //   675: aload_0
    //   676: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   679: iconst_0
    //   680: invokevirtual 369	com/mob/a/a/e:a	(Z)V
    //   683: goto -322 -> 361
    //   686: return
    //
    // Exception table:
    //   from	to	target	type
    //   125	254	649	java/lang/Throwable
    //   255	265	649	java/lang/Throwable
    //   270	295	649	java/lang/Throwable
    //   333	361	649	java/lang/Throwable
    //   361	371	649	java/lang/Throwable
    //   376	475	649	java/lang/Throwable
    //   475	571	649	java/lang/Throwable
    //   571	581	649	java/lang/Throwable
    //   586	648	649	java/lang/Throwable
    //   663	672	649	java/lang/Throwable
    //   675	683	649	java/lang/Throwable
    //   300	333	661	java/lang/Throwable
  }

  private boolean b(String paramString)
  {
    try
    {
      if ("none".equals(this.e.i()))
        throw new IllegalStateException("network is disconnected!");
    }
    catch (Throwable localThrowable)
    {
      com.mob.tools.e.a().w(localThrowable);
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new i("m", paramString));
    p localp = new p();
    localp.a = 10000;
    localp.b = 10000;
    this.f.httpPost(b + "/errlog", localArrayList, null, null, localp);
    return true;
  }

  public final Context a()
  {
    return this.d;
  }

  public final void a(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3)
  {
    Message localMessage = new Message();
    localMessage.what = 101;
    localMessage.arg1 = paramInt1;
    localMessage.arg2 = paramInt2;
    localMessage.obj = new Object[] { paramString1, paramString2, paramString3 };
    this.handler.sendMessage(localMessage);
  }

  public final void a(int paramInt, String paramString1, String paramString2)
  {
    Message localMessage = new Message();
    localMessage.what = 100;
    localMessage.arg1 = paramInt;
    localMessage.obj = new Object[] { paramString1, paramString2 };
    this.handler.sendMessage(localMessage);
  }

  public final void b(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3)
  {
    a(paramInt1, paramInt2, paramString1, paramString2, paramString3);
    try
    {
      this.handler.wait();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  // ERROR //
  protected final void onMessage(Message paramMessage)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 414	android/os/Message:what	I
    //   4: tableswitch	default:+24 -> 28, 100:+25->29, 101:+92->96
    //   29: aload_1
    //   30: getfield 417	android/os/Message:arg1	I
    //   33: istore 28
    //   35: aload_1
    //   36: getfield 424	android/os/Message:obj	Ljava/lang/Object;
    //   39: checkcast 443	[Ljava/lang/Object;
    //   42: astore 29
    //   44: aload 29
    //   46: iconst_0
    //   47: aaload
    //   48: checkcast 123	java/lang/String
    //   51: astore 30
    //   53: aload 29
    //   55: iconst_1
    //   56: aaload
    //   57: checkcast 123	java/lang/String
    //   60: astore 31
    //   62: aload_0
    //   63: iload 28
    //   65: aload 30
    //   67: aload 31
    //   69: invokespecial 445	com/mob/a/a/d:b	(ILjava/lang/String;Ljava/lang/String;)V
    //   72: aload_0
    //   73: iload 28
    //   75: aload 30
    //   77: aload 31
    //   79: aconst_null
    //   80: invokespecial 447	com/mob/a/a/d:a	(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   83: return
    //   84: astore 26
    //   86: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   89: aload 26
    //   91: invokevirtual 113	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   94: pop
    //   95: return
    //   96: aload_1
    //   97: getfield 417	android/os/Message:arg1	I
    //   100: istore 4
    //   102: aload_1
    //   103: getfield 424	android/os/Message:obj	Ljava/lang/Object;
    //   106: checkcast 443	[Ljava/lang/Object;
    //   109: astore 5
    //   111: aload 5
    //   113: iconst_0
    //   114: aaload
    //   115: checkcast 123	java/lang/String
    //   118: astore 6
    //   120: aload 5
    //   122: iconst_1
    //   123: aaload
    //   124: checkcast 123	java/lang/String
    //   127: astore 7
    //   129: aload 5
    //   131: iconst_2
    //   132: aaload
    //   133: checkcast 123	java/lang/String
    //   136: astore 8
    //   138: aload_1
    //   139: getfield 420	android/os/Message:arg2	I
    //   142: ifne +107 -> 249
    //   145: iconst_2
    //   146: istore 9
    //   148: aload_0
    //   149: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   152: invokevirtual 449	com/mob/a/a/e:f	()Ljava/lang/String;
    //   155: astore 10
    //   157: aload 10
    //   159: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   162: ifne +101 -> 263
    //   165: new 273	com/mob/tools/b/e
    //   168: dup
    //   169: invokespecial 274	com/mob/tools/b/e:<init>	()V
    //   172: aload 10
    //   174: invokevirtual 332	com/mob/tools/b/e:a	(Ljava/lang/String;)Ljava/util/HashMap;
    //   177: ldc_w 402
    //   180: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   183: checkcast 190	java/util/ArrayList
    //   186: astore 23
    //   188: aload 23
    //   190: ifnull +73 -> 263
    //   193: aload 23
    //   195: invokevirtual 194	java/util/ArrayList:size	()I
    //   198: ifle +65 -> 263
    //   201: aload 23
    //   203: invokevirtual 453	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   206: astore 24
    //   208: aload 24
    //   210: invokeinterface 458 1 0
    //   215: ifeq +48 -> 263
    //   218: aload 24
    //   220: invokeinterface 462 1 0
    //   225: checkcast 123	java/lang/String
    //   228: astore 25
    //   230: aload 25
    //   232: invokestatic 393	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   235: ifne -27 -> 208
    //   238: aload 8
    //   240: aload 25
    //   242: invokevirtual 465	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   245: ifeq -37 -> 208
    //   248: return
    //   249: aload_1
    //   250: getfield 420	android/os/Message:arg2	I
    //   253: iconst_2
    //   254: if_icmpne +299 -> 553
    //   257: iconst_1
    //   258: istore 9
    //   260: goto -112 -> 148
    //   263: aload 8
    //   265: invokestatic 467	com/arcsoft/hpay100/a/a:h	(Ljava/lang/String;)Ljava/lang/String;
    //   268: astore 11
    //   270: aload_0
    //   271: getfield 76	com/mob/a/a/d:i	Lcom/mob/tools/b/c;
    //   274: aload_0
    //   275: getfield 89	com/mob/a/a/d:h	Ljava/io/File;
    //   278: invokevirtual 470	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   281: invokevirtual 471	com/mob/tools/b/c:a	(Ljava/lang/String;)V
    //   284: aload_0
    //   285: getfield 76	com/mob/a/a/d:i	Lcom/mob/tools/b/c;
    //   288: iconst_0
    //   289: invokevirtual 474	com/mob/tools/b/c:a	(Z)Z
    //   292: ifeq +32 -> 324
    //   295: invokestatic 361	java/lang/System:currentTimeMillis	()J
    //   298: aload_0
    //   299: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   302: invokevirtual 476	com/mob/a/a/e:a	()J
    //   305: lsub
    //   306: lstore 19
    //   308: aload_0
    //   309: getfield 46	com/mob/a/a/d:d	Landroid/content/Context;
    //   312: lload 19
    //   314: aload 8
    //   316: iload 9
    //   318: aload 11
    //   320: invokestatic 479	com/arcsoft/hpay100/a/a:a	(Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;)J
    //   323: pop2
    //   324: aload_0
    //   325: getfield 76	com/mob/a/a/d:i	Lcom/mob/tools/b/c;
    //   328: invokevirtual 481	com/mob/tools/b/c:a	()V
    //   331: aload_0
    //   332: getfield 71	com/mob/a/a/d:c	Ljava/util/HashMap;
    //   335: aload 11
    //   337: invokevirtual 484	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   340: pop
    //   341: iconst_3
    //   342: iload 9
    //   344: if_icmpne +125 -> 469
    //   347: aload_0
    //   348: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   351: invokevirtual 486	com/mob/a/a/e:e	()Z
    //   354: ifeq +115 -> 469
    //   357: aload_0
    //   358: iload 4
    //   360: aload 6
    //   362: aload 7
    //   364: iconst_1
    //   365: anewarray 123	java/lang/String
    //   368: dup
    //   369: iconst_0
    //   370: ldc_w 488
    //   373: aastore
    //   374: invokespecial 447	com/mob/a/a/d:a	(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   377: return
    //   378: astore_2
    //   379: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   382: aload_2
    //   383: invokevirtual 113	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   386: pop
    //   387: return
    //   388: astore 12
    //   390: aload_0
    //   391: getfield 71	com/mob/a/a/d:c	Ljava/util/HashMap;
    //   394: aload 11
    //   396: invokevirtual 351	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   399: ifeq +160 -> 559
    //   402: aload_0
    //   403: getfield 71	com/mob/a/a/d:c	Ljava/util/HashMap;
    //   406: aload 11
    //   408: invokevirtual 339	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   411: checkcast 210	java/lang/Integer
    //   414: invokevirtual 491	java/lang/Integer:intValue	()I
    //   417: istore 13
    //   419: iload 13
    //   421: iconst_1
    //   422: iadd
    //   423: istore 14
    //   425: aload_0
    //   426: getfield 71	com/mob/a/a/d:c	Ljava/util/HashMap;
    //   429: aload 11
    //   431: iload 14
    //   433: invokestatic 214	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   436: invokevirtual 206	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   439: pop
    //   440: iload 14
    //   442: iconst_3
    //   443: if_icmpge +16 -> 459
    //   446: aload_0
    //   447: getfield 428	com/mob/a/a/d:handler	Landroid/os/Handler;
    //   450: aload_1
    //   451: ldc2_w 492
    //   454: invokevirtual 497	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   457: pop
    //   458: return
    //   459: invokestatic 109	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   462: aload 12
    //   464: invokevirtual 113	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   467: pop
    //   468: return
    //   469: iconst_1
    //   470: iload 9
    //   472: if_icmpne +44 -> 516
    //   475: aload_0
    //   476: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   479: invokevirtual 499	com/mob/a/a/e:c	()Z
    //   482: ifeq +34 -> 516
    //   485: aload_0
    //   486: iload 4
    //   488: aload 6
    //   490: aload 7
    //   492: iconst_1
    //   493: anewarray 123	java/lang/String
    //   496: dup
    //   497: iconst_0
    //   498: ldc_w 299
    //   501: aastore
    //   502: invokespecial 447	com/mob/a/a/d:a	(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   505: invokestatic 504	android/os/Process:myPid	()I
    //   508: invokestatic 508	android/os/Process:killProcess	(I)V
    //   511: iconst_0
    //   512: invokestatic 511	java/lang/System:exit	(I)V
    //   515: return
    //   516: iconst_2
    //   517: iload 9
    //   519: if_icmpne -491 -> 28
    //   522: aload_0
    //   523: getfield 66	com/mob/a/a/d:g	Lcom/mob/a/a/e;
    //   526: invokevirtual 513	com/mob/a/a/e:d	()Z
    //   529: ifeq -501 -> 28
    //   532: aload_0
    //   533: iload 4
    //   535: aload 6
    //   537: aload 7
    //   539: iconst_1
    //   540: anewarray 123	java/lang/String
    //   543: dup
    //   544: iconst_0
    //   545: ldc_w 515
    //   548: aastore
    //   549: invokespecial 447	com/mob/a/a/d:a	(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    //   552: return
    //   553: iconst_1
    //   554: istore 9
    //   556: goto -408 -> 148
    //   559: iconst_0
    //   560: istore 13
    //   562: goto -143 -> 419
    //
    // Exception table:
    //   from	to	target	type
    //   29	83	84	java/lang/Throwable
    //   96	145	378	java/lang/Throwable
    //   148	188	378	java/lang/Throwable
    //   193	208	378	java/lang/Throwable
    //   208	248	378	java/lang/Throwable
    //   249	257	378	java/lang/Throwable
    //   263	270	378	java/lang/Throwable
    //   331	341	378	java/lang/Throwable
    //   347	377	378	java/lang/Throwable
    //   390	419	378	java/lang/Throwable
    //   425	440	378	java/lang/Throwable
    //   446	458	378	java/lang/Throwable
    //   459	468	378	java/lang/Throwable
    //   475	515	378	java/lang/Throwable
    //   522	552	378	java/lang/Throwable
    //   270	324	388	java/lang/Throwable
    //   324	331	388	java/lang/Throwable
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.a.a.d
 * JD-Core Version:    0.6.0
 */