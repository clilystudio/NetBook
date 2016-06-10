package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.util.SparseArray;
import java.io.File;
import java.util.Map;
import u.a.b;
import u.a.g;

final class f extends Thread
{
  private Context a;
  private boolean b;
  private File c;
  private int d = 0;
  private long e = -1L;
  private long f = -1L;
  private int g = -1;
  private int h;
  private e i;
  private k j;

  public f(DownloadingService paramDownloadingService, Context paramContext, k paramk, int paramInt1, int paramInt2, e parame)
  {
    while (true)
    {
      try
      {
        this.a = paramContext;
        this.j = paramk;
        this.d = paramInt2;
        if (DownloadingService.b().indexOfKey(paramInt1) < 0)
          continue;
        long[] arrayOfLong = ((s)DownloadingService.b().get(paramInt1)).e;
        if ((arrayOfLong == null) || (arrayOfLong.length <= 1))
          continue;
        this.e = arrayOfLong[0];
        this.f = arrayOfLong[1];
        this.i = parame;
        this.h = paramInt1;
        boolean[] arrayOfBoolean = new boolean[1];
        this.c = w.a("/apk", paramContext, arrayOfBoolean);
        this.b = arrayOfBoolean[0];
        if (this.b)
        {
          l = 104857600L;
          w.a(this.c, l, 259200000L);
          if (this.j.e == null)
            continue;
          Object localObject = this.j.e + ".apk.tmp";
          if (!this.j.a.equalsIgnoreCase("delta_update"))
            continue;
          localObject = ((String)localObject).replace(".apk", ".patch");
          this.c = new File(this.c, (String)localObject);
          return;
          String str = g.a(this.j.c) + ".apk.tmp";
          localObject = str;
          continue;
        }
      }
      catch (Exception localException)
      {
        b.c(DownloadingService.a(), localException.getMessage(), localException);
        this.i.b(this.h);
        return;
      }
      long l = 10485760L;
    }
  }

  private void a(Exception paramException)
  {
    b.b(DownloadingService.a(), "can not install. " + paramException.getMessage());
    if (this.i != null)
      this.i.b(this.h);
    DownloadingService.a(this.k).a(this.j, this.e, this.f, this.d);
  }

  // ERROR //
  private void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   4: invokevirtual 186	java/io/File:getName	()Ljava/lang/String;
    //   7: astore_2
    //   8: new 188	java/io/FileOutputStream
    //   11: dup
    //   12: aload_0
    //   13: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   16: iconst_1
    //   17: invokespecial 191	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   20: astore_3
    //   21: aload_0
    //   22: getfield 81	com/umeng/update/net/f:b	Z
    //   25: ifne +2787 -> 2812
    //   28: aload_0
    //   29: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   32: invokevirtual 194	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   35: iconst_3
    //   36: invokestatic 197	com/umeng/update/net/w:b	(Ljava/lang/String;I)Z
    //   39: ifne +2773 -> 2812
    //   42: aload_3
    //   43: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   46: aload_0
    //   47: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   50: aload_2
    //   51: ldc 201
    //   53: invokevirtual 207	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   56: astore 99
    //   58: aload_0
    //   59: aload_0
    //   60: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   63: aload_2
    //   64: invokevirtual 211	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   67: putfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   70: aload 99
    //   72: astore 9
    //   74: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   77: astore 41
    //   79: iconst_2
    //   80: anewarray 213	java/lang/Object
    //   83: astore 42
    //   85: aload 42
    //   87: iconst_0
    //   88: aload_0
    //   89: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   92: getfield 137	com/umeng/update/net/k:c	Ljava/lang/String;
    //   95: aastore
    //   96: aload 42
    //   98: iconst_1
    //   99: aload_0
    //   100: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   103: invokevirtual 194	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   106: aastore
    //   107: aload 41
    //   109: ldc 215
    //   111: aload 42
    //   113: invokestatic 219	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   116: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: new 223	java/net/URL
    //   122: dup
    //   123: aload_0
    //   124: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   127: getfield 137	com/umeng/update/net/k:c	Ljava/lang/String;
    //   130: invokespecial 224	java/net/URL:<init>	(Ljava/lang/String;)V
    //   133: astore 43
    //   135: aload_0
    //   136: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   139: astore 44
    //   141: aload 43
    //   143: invokevirtual 228	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   146: checkcast 230	java/net/HttpURLConnection
    //   149: astore 45
    //   151: aload 45
    //   153: ldc 232
    //   155: invokevirtual 235	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   158: aload 45
    //   160: ldc 237
    //   162: ldc 239
    //   164: invokevirtual 242	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   167: aload 45
    //   169: ldc 244
    //   171: ldc 246
    //   173: invokevirtual 249	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: aload 45
    //   178: sipush 5000
    //   181: invokevirtual 252	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   184: aload 45
    //   186: sipush 10000
    //   189: invokevirtual 255	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   192: aload 44
    //   194: invokevirtual 259	java/io/File:exists	()Z
    //   197: ifeq +111 -> 308
    //   200: aload 44
    //   202: invokevirtual 263	java/io/File:length	()J
    //   205: lconst_0
    //   206: lcmp
    //   207: ifle +101 -> 308
    //   210: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   213: astore 96
    //   215: new 95	java/lang/StringBuilder
    //   218: dup
    //   219: aload_0
    //   220: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   223: getfield 265	com/umeng/update/net/k:b	Ljava/lang/String;
    //   226: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   229: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   232: ldc_w 267
    //   235: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: astore 97
    //   243: iconst_1
    //   244: anewarray 213	java/lang/Object
    //   247: astore 98
    //   249: aload 98
    //   251: iconst_0
    //   252: aload 44
    //   254: invokevirtual 263	java/io/File:length	()J
    //   257: invokestatic 272	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   260: aastore
    //   261: aload 96
    //   263: aload 97
    //   265: aload 98
    //   267: invokestatic 219	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   270: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   273: aload 45
    //   275: ldc_w 274
    //   278: new 95	java/lang/StringBuilder
    //   281: dup
    //   282: ldc_w 276
    //   285: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   288: aload 44
    //   290: invokevirtual 263	java/io/File:length	()J
    //   293: invokevirtual 279	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   296: ldc_w 281
    //   299: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: invokevirtual 242	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   308: aload 45
    //   310: invokevirtual 284	java/net/HttpURLConnection:connect	()V
    //   313: aload 45
    //   315: invokevirtual 288	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   318: astore 46
    //   320: aload 46
    //   322: astore 10
    //   324: iload_1
    //   325: ifne +164 -> 489
    //   328: lconst_0
    //   329: lstore 88
    //   331: aload_0
    //   332: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   335: invokevirtual 259	java/io/File:exists	()Z
    //   338: ifeq +26 -> 364
    //   341: aload_0
    //   342: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   345: invokevirtual 263	java/io/File:length	()J
    //   348: lconst_0
    //   349: lcmp
    //   350: ifle +14 -> 364
    //   353: lconst_0
    //   354: aload_0
    //   355: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   358: invokevirtual 263	java/io/File:length	()J
    //   361: ladd
    //   362: lstore 88
    //   364: aload_0
    //   365: lload 88
    //   367: putfield 38	com/umeng/update/net/f:e	J
    //   370: aload_0
    //   371: lload 88
    //   373: aload 45
    //   375: invokevirtual 292	java/net/HttpURLConnection:getContentLength	()I
    //   378: i2l
    //   379: ladd
    //   380: putfield 40	com/umeng/update/net/f:f	J
    //   383: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   386: astore 90
    //   388: iconst_1
    //   389: anewarray 213	java/lang/Object
    //   392: astore 91
    //   394: aload 91
    //   396: iconst_0
    //   397: aload_0
    //   398: getfield 38	com/umeng/update/net/f:e	J
    //   401: invokestatic 272	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   404: aastore
    //   405: aload 90
    //   407: ldc_w 294
    //   410: aload 91
    //   412: invokestatic 219	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   415: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   418: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   421: astore 92
    //   423: iconst_1
    //   424: anewarray 213	java/lang/Object
    //   427: astore 93
    //   429: aload 93
    //   431: iconst_0
    //   432: aload 45
    //   434: invokevirtual 292	java/net/HttpURLConnection:getContentLength	()I
    //   437: invokestatic 299	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   440: aastore
    //   441: aload 92
    //   443: ldc_w 301
    //   446: aload 93
    //   448: invokestatic 219	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   451: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   454: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   457: astore 94
    //   459: iconst_1
    //   460: anewarray 213	java/lang/Object
    //   463: astore 95
    //   465: aload 95
    //   467: iconst_0
    //   468: aload_0
    //   469: getfield 40	com/umeng/update/net/f:f	J
    //   472: invokestatic 272	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   475: aastore
    //   476: aload 94
    //   478: ldc_w 303
    //   481: aload 95
    //   483: invokestatic 219	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   486: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   489: sipush 4096
    //   492: newarray byte
    //   494: astore 48
    //   496: iconst_0
    //   497: istore 49
    //   499: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   502: new 95	java/lang/StringBuilder
    //   505: dup
    //   506: aload_0
    //   507: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   510: getfield 265	com/umeng/update/net/k:b	Ljava/lang/String;
    //   513: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   516: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   519: ldc_w 305
    //   522: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: aload_0
    //   526: getfield 40	com/umeng/update/net/f:f	J
    //   529: invokestatic 308	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   532: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   541: aload_0
    //   542: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   545: invokestatic 313	com/umeng/update/net/m:a	(Landroid/content/Context;)Lcom/umeng/update/net/m;
    //   548: aload_0
    //   549: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   552: getfield 116	com/umeng/update/net/k:a	Ljava/lang/String;
    //   555: aload_0
    //   556: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   559: getfield 137	com/umeng/update/net/k:c	Ljava/lang/String;
    //   562: invokevirtual 316	com/umeng/update/net/m:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   565: pop
    //   566: aload_0
    //   567: getfield 42	com/umeng/update/net/f:g	I
    //   570: ifge +2248 -> 2818
    //   573: aload 10
    //   575: aload 48
    //   577: invokevirtual 322	java/io/InputStream:read	([B)I
    //   580: istore 80
    //   582: iload 80
    //   584: ifgt +94 -> 678
    //   587: goto +2231 -> 2818
    //   590: aload 10
    //   592: invokevirtual 323	java/io/InputStream:close	()V
    //   595: aload 9
    //   597: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   600: aload_0
    //   601: getfield 42	com/umeng/update/net/f:g	I
    //   604: iconst_1
    //   605: if_icmpne +620 -> 1225
    //   608: invokestatic 51	com/umeng/update/net/DownloadingService:b	()Landroid/util/SparseArray;
    //   611: aload_0
    //   612: getfield 70	com/umeng/update/net/f:h	I
    //   615: invokevirtual 61	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   618: checkcast 63	com/umeng/update/net/s
    //   621: astore 74
    //   623: aload 74
    //   625: getfield 66	com/umeng/update/net/s:e	[J
    //   628: iconst_0
    //   629: aload_0
    //   630: getfield 38	com/umeng/update/net/f:e	J
    //   633: lastore
    //   634: aload 74
    //   636: getfield 66	com/umeng/update/net/s:e	[J
    //   639: iconst_1
    //   640: aload_0
    //   641: getfield 40	com/umeng/update/net/f:f	J
    //   644: lastore
    //   645: aload 74
    //   647: getfield 66	com/umeng/update/net/s:e	[J
    //   650: iconst_2
    //   651: aload_0
    //   652: getfield 34	com/umeng/update/net/f:d	I
    //   655: i2l
    //   656: lastore
    //   657: aload 10
    //   659: ifnull +8 -> 667
    //   662: aload 10
    //   664: invokevirtual 323	java/io/InputStream:close	()V
    //   667: aload 9
    //   669: ifnull +8 -> 677
    //   672: aload 9
    //   674: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   677: return
    //   678: aload 9
    //   680: aload 48
    //   682: iconst_0
    //   683: iload 80
    //   685: invokevirtual 327	java/io/FileOutputStream:write	([BII)V
    //   688: aload_0
    //   689: aload_0
    //   690: getfield 38	com/umeng/update/net/f:e	J
    //   693: iload 80
    //   695: i2l
    //   696: ladd
    //   697: putfield 38	com/umeng/update/net/f:e	J
    //   700: iload 49
    //   702: iconst_1
    //   703: iadd
    //   704: istore 81
    //   706: iload 49
    //   708: bipush 50
    //   710: irem
    //   711: ifne +2113 -> 2824
    //   714: aload_0
    //   715: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   718: invokestatic 332	u/a/a:d	(Landroid/content/Context;)Z
    //   721: ifne +9 -> 730
    //   724: iconst_0
    //   725: istore 51
    //   727: goto -137 -> 590
    //   730: aload_0
    //   731: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   734: invokestatic 334	u/a/a:c	(Landroid/content/Context;)Z
    //   737: ifne +200 -> 937
    //   740: aload_0
    //   741: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   744: getfield 336	com/umeng/update/net/k:i	Z
    //   747: ifeq +190 -> 937
    //   750: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   753: ldc_w 338
    //   756: invokestatic 166	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   759: new 177	java/io/IOException
    //   762: dup
    //   763: ldc_w 338
    //   766: invokespecial 339	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   769: athrow
    //   770: astore 47
    //   772: aload 47
    //   774: astore 6
    //   776: aload 9
    //   778: astore 5
    //   780: aload 10
    //   782: astore 7
    //   784: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   787: aload 6
    //   789: invokevirtual 340	java/io/IOException:getMessage	()Ljava/lang/String;
    //   792: aload 6
    //   794: invokestatic 152	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   797: iconst_1
    //   798: aload_0
    //   799: getfield 34	com/umeng/update/net/f:d	I
    //   802: iadd
    //   803: istore 16
    //   805: aload_0
    //   806: iload 16
    //   808: putfield 34	com/umeng/update/net/f:d	I
    //   811: iload 16
    //   813: iconst_3
    //   814: if_icmple +1388 -> 2202
    //   817: aload_0
    //   818: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   821: getfield 342	com/umeng/update/net/k:g	Z
    //   824: istore 17
    //   826: iload 17
    //   828: ifne +1374 -> 2202
    //   831: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   834: ldc_w 344
    //   837: invokestatic 166	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   840: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   843: aload_0
    //   844: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   847: invokeinterface 352 2 0
    //   852: checkcast 354	android/os/Messenger
    //   855: aconst_null
    //   856: iconst_5
    //   857: iconst_0
    //   858: iconst_0
    //   859: invokestatic 360	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   862: invokevirtual 364	android/os/Messenger:send	(Landroid/os/Message;)V
    //   865: aload_0
    //   866: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   869: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   872: aload_0
    //   873: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   876: aload_0
    //   877: getfield 70	com/umeng/update/net/f:h	I
    //   880: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   883: aload_0
    //   884: aload 6
    //   886: invokespecial 369	com/umeng/update/net/f:a	(Ljava/lang/Exception;)V
    //   889: aload_0
    //   890: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   893: invokestatic 372	com/umeng/update/net/DownloadingService:d	(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    //   896: new 374	com/umeng/update/net/g
    //   899: dup
    //   900: aload_0
    //   901: invokespecial 377	com/umeng/update/net/g:<init>	(Lcom/umeng/update/net/f;)V
    //   904: invokevirtual 383	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   907: pop
    //   908: aload 7
    //   910: ifnull +8 -> 918
    //   913: aload 7
    //   915: invokevirtual 323	java/io/InputStream:close	()V
    //   918: aload 5
    //   920: ifnull -243 -> 677
    //   923: aload 5
    //   925: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   928: return
    //   929: astore 19
    //   931: aload 19
    //   933: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   936: return
    //   937: ldc_w 387
    //   940: aload_0
    //   941: getfield 38	com/umeng/update/net/f:e	J
    //   944: l2f
    //   945: fmul
    //   946: aload_0
    //   947: getfield 40	com/umeng/update/net/f:f	J
    //   950: l2f
    //   951: fdiv
    //   952: f2i
    //   953: istore 82
    //   955: iload 82
    //   957: bipush 100
    //   959: if_icmple +1846 -> 2805
    //   962: bipush 99
    //   964: istore 83
    //   966: aload_0
    //   967: getfield 68	com/umeng/update/net/f:i	Lcom/umeng/update/net/e;
    //   970: ifnull +18 -> 988
    //   973: aload_0
    //   974: getfield 68	com/umeng/update/net/f:i	Lcom/umeng/update/net/e;
    //   977: aload_0
    //   978: getfield 70	com/umeng/update/net/f:h	I
    //   981: iload 83
    //   983: invokeinterface 390 3 0
    //   988: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   991: aload_0
    //   992: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   995: invokeinterface 352 2 0
    //   1000: ifnull +29 -> 1029
    //   1003: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1006: aload_0
    //   1007: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1010: invokeinterface 352 2 0
    //   1015: checkcast 354	android/os/Messenger
    //   1018: aconst_null
    //   1019: iconst_3
    //   1020: iload 83
    //   1022: iconst_0
    //   1023: invokestatic 360	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   1026: invokevirtual 364	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1029: aload_0
    //   1030: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1033: invokestatic 313	com/umeng/update/net/m:a	(Landroid/content/Context;)Lcom/umeng/update/net/m;
    //   1036: aload_0
    //   1037: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1040: getfield 116	com/umeng/update/net/k:a	Ljava/lang/String;
    //   1043: aload_0
    //   1044: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1047: getfield 137	com/umeng/update/net/k:c	Ljava/lang/String;
    //   1050: iload 83
    //   1052: invokevirtual 393	com/umeng/update/net/m:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   1055: goto +1769 -> 2824
    //   1058: astore 84
    //   1060: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   1063: astore 85
    //   1065: iconst_1
    //   1066: anewarray 213	java/lang/Object
    //   1069: astore 86
    //   1071: aload 86
    //   1073: iconst_0
    //   1074: aload_0
    //   1075: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1078: getfield 265	com/umeng/update/net/k:b	Ljava/lang/String;
    //   1081: aastore
    //   1082: aload 85
    //   1084: ldc_w 395
    //   1087: aload 86
    //   1089: invokestatic 219	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1092: invokestatic 166	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1095: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1098: aload_0
    //   1099: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1102: aconst_null
    //   1103: invokeinterface 399 3 0
    //   1108: pop
    //   1109: goto -80 -> 1029
    //   1112: astore 34
    //   1114: aload_0
    //   1115: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1118: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1121: aload_0
    //   1122: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1125: aload_0
    //   1126: getfield 70	com/umeng/update/net/f:h	I
    //   1129: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   1132: aload 34
    //   1134: invokevirtual 400	android/os/RemoteException:printStackTrace	()V
    //   1137: aload 10
    //   1139: ifnull +8 -> 1147
    //   1142: aload 10
    //   1144: invokevirtual 323	java/io/InputStream:close	()V
    //   1147: aload 9
    //   1149: ifnull -472 -> 677
    //   1152: aload 9
    //   1154: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1157: return
    //   1158: astore 35
    //   1160: aload 35
    //   1162: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1165: return
    //   1166: astore 78
    //   1168: aload 78
    //   1170: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1173: aload 9
    //   1175: ifnull -498 -> 677
    //   1178: aload 9
    //   1180: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1183: return
    //   1184: astore 79
    //   1186: aload 79
    //   1188: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1191: return
    //   1192: astore 76
    //   1194: aload 9
    //   1196: ifnull +8 -> 1204
    //   1199: aload 9
    //   1201: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1204: aload 76
    //   1206: athrow
    //   1207: astore 77
    //   1209: aload 77
    //   1211: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1214: goto -10 -> 1204
    //   1217: astore 75
    //   1219: aload 75
    //   1221: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1224: return
    //   1225: aload_0
    //   1226: getfield 42	com/umeng/update/net/f:g	I
    //   1229: iconst_2
    //   1230: if_icmpne +124 -> 1354
    //   1233: aload_0
    //   1234: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1237: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1240: aload_0
    //   1241: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1244: aload_0
    //   1245: getfield 38	com/umeng/update/net/f:e	J
    //   1248: aload_0
    //   1249: getfield 40	com/umeng/update/net/f:f	J
    //   1252: aload_0
    //   1253: getfield 34	com/umeng/update/net/f:d	I
    //   1256: i2l
    //   1257: invokevirtual 174	com/umeng/update/net/p:a	(Lcom/umeng/update/net/k;JJJ)V
    //   1260: aload_0
    //   1261: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1264: invokestatic 403	com/umeng/update/net/DownloadingService:c	(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;
    //   1267: aload_0
    //   1268: getfield 70	com/umeng/update/net/f:h	I
    //   1271: invokevirtual 408	android/app/NotificationManager:cancel	(I)V
    //   1274: aload 10
    //   1276: ifnull +8 -> 1284
    //   1279: aload 10
    //   1281: invokevirtual 323	java/io/InputStream:close	()V
    //   1284: aload 9
    //   1286: ifnull -609 -> 677
    //   1289: aload 9
    //   1291: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1294: return
    //   1295: astore 69
    //   1297: aload 69
    //   1299: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1302: return
    //   1303: astore 72
    //   1305: aload 72
    //   1307: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1310: aload 9
    //   1312: ifnull -635 -> 677
    //   1315: aload 9
    //   1317: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1320: return
    //   1321: astore 73
    //   1323: aload 73
    //   1325: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1328: return
    //   1329: astore 70
    //   1331: aload 9
    //   1333: ifnull +8 -> 1341
    //   1336: aload 9
    //   1338: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1341: aload 70
    //   1343: athrow
    //   1344: astore 71
    //   1346: aload 71
    //   1348: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1351: goto -10 -> 1341
    //   1354: iload 51
    //   1356: ifne +121 -> 1477
    //   1359: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   1362: new 95	java/lang/StringBuilder
    //   1365: dup
    //   1366: ldc_w 410
    //   1369: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1372: aload_0
    //   1373: getfield 34	com/umeng/update/net/f:d	I
    //   1376: invokevirtual 413	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1379: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1382: invokestatic 166	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1385: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1388: aload_0
    //   1389: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1392: invokeinterface 352 2 0
    //   1397: checkcast 354	android/os/Messenger
    //   1400: aconst_null
    //   1401: iconst_5
    //   1402: iconst_0
    //   1403: iconst_0
    //   1404: invokestatic 360	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   1407: invokevirtual 364	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1410: aload_0
    //   1411: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1414: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1417: aload_0
    //   1418: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1421: aload_0
    //   1422: getfield 70	com/umeng/update/net/f:h	I
    //   1425: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   1428: aload_0
    //   1429: getfield 68	com/umeng/update/net/f:i	Lcom/umeng/update/net/e;
    //   1432: ifnull +16 -> 1448
    //   1435: aload_0
    //   1436: getfield 68	com/umeng/update/net/f:i	Lcom/umeng/update/net/e;
    //   1439: aload_0
    //   1440: getfield 70	com/umeng/update/net/f:h	I
    //   1443: invokeinterface 157 2 0
    //   1448: aload 10
    //   1450: ifnull +8 -> 1458
    //   1453: aload 10
    //   1455: invokevirtual 323	java/io/InputStream:close	()V
    //   1458: aload 9
    //   1460: ifnull -783 -> 677
    //   1463: aload 9
    //   1465: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1468: return
    //   1469: astore 59
    //   1471: aload 59
    //   1473: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   1476: return
    //   1477: aload_0
    //   1478: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1481: getfield 416	com/umeng/update/net/k:f	[Ljava/lang/String;
    //   1484: ifnull +90 -> 1574
    //   1487: new 418	java/util/HashMap
    //   1490: dup
    //   1491: invokespecial 419	java/util/HashMap:<init>	()V
    //   1494: astore 52
    //   1496: aload 52
    //   1498: ldc_w 421
    //   1501: aload_0
    //   1502: getfield 40	com/umeng/update/net/f:f	J
    //   1505: invokestatic 308	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   1508: invokeinterface 399 3 0
    //   1513: pop
    //   1514: aload 52
    //   1516: ldc_w 423
    //   1519: invokestatic 424	u/a/g:a	()Ljava/lang/String;
    //   1522: ldc_w 426
    //   1525: invokevirtual 430	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1528: iconst_1
    //   1529: aaload
    //   1530: invokeinterface 399 3 0
    //   1535: pop
    //   1536: aload 52
    //   1538: ldc_w 432
    //   1541: aload_0
    //   1542: getfield 34	com/umeng/update/net/f:d	I
    //   1545: invokestatic 435	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   1548: invokeinterface 399 3 0
    //   1553: pop
    //   1554: aload_0
    //   1555: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1558: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1561: aload 52
    //   1563: iconst_1
    //   1564: aload_0
    //   1565: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1568: getfield 416	com/umeng/update/net/k:f	[Ljava/lang/String;
    //   1571: invokevirtual 438	com/umeng/update/net/p:a	(Ljava/util/Map;Z[Ljava/lang/String;)V
    //   1574: new 132	java/io/File
    //   1577: dup
    //   1578: aload_0
    //   1579: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   1582: invokevirtual 441	java/io/File:getParent	()Ljava/lang/String;
    //   1585: aload_0
    //   1586: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   1589: invokevirtual 186	java/io/File:getName	()Ljava/lang/String;
    //   1592: ldc_w 443
    //   1595: ldc_w 445
    //   1598: invokevirtual 130	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1601: invokespecial 447	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1604: astore 56
    //   1606: aload_0
    //   1607: getfield 79	com/umeng/update/net/f:c	Ljava/io/File;
    //   1610: aload 56
    //   1612: invokevirtual 451	java/io/File:renameTo	(Ljava/io/File;)Z
    //   1615: pop
    //   1616: aload 56
    //   1618: invokevirtual 194	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1621: astore 58
    //   1623: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   1626: new 95	java/lang/StringBuilder
    //   1629: dup
    //   1630: ldc_w 453
    //   1633: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1636: aload_0
    //   1637: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1640: getfield 455	com/umeng/update/net/k:d	Ljava/lang/String;
    //   1643: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1646: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1649: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1652: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   1655: new 95	java/lang/StringBuilder
    //   1658: dup
    //   1659: ldc_w 457
    //   1662: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1665: aload 56
    //   1667: invokestatic 460	u/a/g:a	(Ljava/io/File;)Ljava/lang/String;
    //   1670: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1673: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1676: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   1679: aload_0
    //   1680: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1683: getfield 455	com/umeng/update/net/k:d	Ljava/lang/String;
    //   1686: ifnull +155 -> 1841
    //   1689: aload_0
    //   1690: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1693: getfield 455	com/umeng/update/net/k:d	Ljava/lang/String;
    //   1696: aload 56
    //   1698: invokestatic 460	u/a/g:a	(Ljava/io/File;)Ljava/lang/String;
    //   1701: invokevirtual 122	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1704: ifne +137 -> 1841
    //   1707: aload_0
    //   1708: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1711: getfield 116	com/umeng/update/net/k:a	Ljava/lang/String;
    //   1714: ldc 118
    //   1716: invokevirtual 122	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1719: ifeq +195 -> 1914
    //   1722: aload_0
    //   1723: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1726: invokestatic 403	com/umeng/update/net/DownloadingService:c	(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;
    //   1729: aload_0
    //   1730: getfield 70	com/umeng/update/net/f:h	I
    //   1733: invokevirtual 408	android/app/NotificationManager:cancel	(I)V
    //   1736: new 462	android/os/Bundle
    //   1739: dup
    //   1740: invokespecial 463	android/os/Bundle:<init>	()V
    //   1743: astore 66
    //   1745: aload 66
    //   1747: ldc_w 465
    //   1750: aload 58
    //   1752: invokevirtual 468	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1755: invokestatic 471	android/os/Message:obtain	()Landroid/os/Message;
    //   1758: astore 67
    //   1760: aload 67
    //   1762: iconst_5
    //   1763: putfield 474	android/os/Message:what	I
    //   1766: aload 67
    //   1768: iconst_3
    //   1769: putfield 477	android/os/Message:arg1	I
    //   1772: aload 67
    //   1774: aload_0
    //   1775: getfield 70	com/umeng/update/net/f:h	I
    //   1778: putfield 480	android/os/Message:arg2	I
    //   1781: aload 67
    //   1783: aload 66
    //   1785: invokevirtual 484	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   1788: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1791: aload_0
    //   1792: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1795: invokeinterface 352 2 0
    //   1800: ifnull +23 -> 1823
    //   1803: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1806: aload_0
    //   1807: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1810: invokeinterface 352 2 0
    //   1815: checkcast 354	android/os/Messenger
    //   1818: aload 67
    //   1820: invokevirtual 364	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1823: aload_0
    //   1824: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1827: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1830: aload_0
    //   1831: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1834: aload_0
    //   1835: getfield 70	com/umeng/update/net/f:h	I
    //   1838: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   1841: aload_0
    //   1842: getfield 68	com/umeng/update/net/f:i	Lcom/umeng/update/net/e;
    //   1845: ifnull -397 -> 1448
    //   1848: aload_0
    //   1849: getfield 68	com/umeng/update/net/f:i	Lcom/umeng/update/net/e;
    //   1852: aload_0
    //   1853: getfield 70	com/umeng/update/net/f:h	I
    //   1856: aload 58
    //   1858: invokeinterface 487 3 0
    //   1863: goto -415 -> 1448
    //   1866: astore 8
    //   1868: aload 10
    //   1870: ifnull +8 -> 1878
    //   1873: aload 10
    //   1875: invokevirtual 323	java/io/InputStream:close	()V
    //   1878: aload 9
    //   1880: ifnull +8 -> 1888
    //   1883: aload 9
    //   1885: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   1888: aload 8
    //   1890: athrow
    //   1891: astore 68
    //   1893: aload_0
    //   1894: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1897: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1900: aload_0
    //   1901: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1904: aload_0
    //   1905: getfield 70	com/umeng/update/net/f:h	I
    //   1908: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   1911: goto -70 -> 1841
    //   1914: invokestatic 347	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1917: aload_0
    //   1918: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1921: invokeinterface 352 2 0
    //   1926: checkcast 354	android/os/Messenger
    //   1929: aconst_null
    //   1930: iconst_5
    //   1931: iconst_0
    //   1932: iconst_0
    //   1933: invokestatic 360	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   1936: invokevirtual 364	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1939: aload_0
    //   1940: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   1943: getfield 489	com/umeng/update/net/k:h	Z
    //   1946: ifne -105 -> 1841
    //   1949: aload_0
    //   1950: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   1953: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   1956: aload_0
    //   1957: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1960: aload_0
    //   1961: getfield 70	com/umeng/update/net/f:h	I
    //   1964: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   1967: new 491	android/app/Notification
    //   1970: dup
    //   1971: ldc_w 492
    //   1974: aload_0
    //   1975: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1978: aload_0
    //   1979: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   1982: invokestatic 497	com/alipay/sdk/b/b:h	(Landroid/content/Context;)I
    //   1985: invokevirtual 500	android/content/Context:getString	(I)Ljava/lang/String;
    //   1988: invokestatic 505	java/lang/System:currentTimeMillis	()J
    //   1991: invokespecial 508	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   1994: astore 64
    //   1996: aload_0
    //   1997: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2000: iconst_0
    //   2001: new 510	android/content/Intent
    //   2004: dup
    //   2005: invokespecial 511	android/content/Intent:<init>	()V
    //   2008: iconst_0
    //   2009: invokestatic 517	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   2012: astore 65
    //   2014: aload 64
    //   2016: aload_0
    //   2017: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2020: aload_0
    //   2021: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2024: invokestatic 520	u/a/a:h	(Landroid/content/Context;)Ljava/lang/String;
    //   2027: new 95	java/lang/StringBuilder
    //   2030: dup
    //   2031: aload_0
    //   2032: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   2035: getfield 265	com/umeng/update/net/k:b	Ljava/lang/String;
    //   2038: invokestatic 101	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   2041: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2044: aload_0
    //   2045: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2048: aload_0
    //   2049: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2052: invokestatic 497	com/alipay/sdk/b/b:h	(Landroid/content/Context;)I
    //   2055: invokevirtual 500	android/content/Context:getString	(I)Ljava/lang/String;
    //   2058: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2061: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2064: aload 65
    //   2066: invokevirtual 524	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   2069: aload 64
    //   2071: bipush 16
    //   2073: aload 64
    //   2075: getfield 527	android/app/Notification:flags	I
    //   2078: ior
    //   2079: putfield 527	android/app/Notification:flags	I
    //   2082: aload_0
    //   2083: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2086: invokestatic 403	com/umeng/update/net/DownloadingService:c	(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;
    //   2089: aload_0
    //   2090: getfield 70	com/umeng/update/net/f:h	I
    //   2093: aload 64
    //   2095: invokevirtual 531	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   2098: goto -257 -> 1841
    //   2101: astore 31
    //   2103: aload 31
    //   2105: invokevirtual 400	android/os/RemoteException:printStackTrace	()V
    //   2108: aload_0
    //   2109: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2112: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   2115: aload_0
    //   2116: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2119: aload_0
    //   2120: getfield 70	com/umeng/update/net/f:h	I
    //   2123: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   2126: aload_0
    //   2127: aload 6
    //   2129: invokespecial 369	com/umeng/update/net/f:a	(Ljava/lang/Exception;)V
    //   2132: aload_0
    //   2133: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2136: invokestatic 372	com/umeng/update/net/DownloadingService:d	(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    //   2139: new 374	com/umeng/update/net/g
    //   2142: dup
    //   2143: aload_0
    //   2144: invokespecial 377	com/umeng/update/net/g:<init>	(Lcom/umeng/update/net/f;)V
    //   2147: invokevirtual 383	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   2150: pop
    //   2151: goto -1243 -> 908
    //   2154: astore 29
    //   2156: aload_0
    //   2157: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2160: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   2163: aload_0
    //   2164: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2167: aload_0
    //   2168: getfield 70	com/umeng/update/net/f:h	I
    //   2171: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   2174: aload_0
    //   2175: aload 6
    //   2177: invokespecial 369	com/umeng/update/net/f:a	(Ljava/lang/Exception;)V
    //   2180: aload_0
    //   2181: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2184: invokestatic 372	com/umeng/update/net/DownloadingService:d	(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    //   2187: new 374	com/umeng/update/net/g
    //   2190: dup
    //   2191: aload_0
    //   2192: invokespecial 377	com/umeng/update/net/g:<init>	(Lcom/umeng/update/net/f;)V
    //   2195: invokevirtual 383	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   2198: pop
    //   2199: aload 29
    //   2201: athrow
    //   2202: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   2205: new 95	java/lang/StringBuilder
    //   2208: dup
    //   2209: ldc_w 533
    //   2212: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2215: aload_0
    //   2216: getfield 34	com/umeng/update/net/f:d	I
    //   2219: invokevirtual 413	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2222: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2225: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   2228: aload_0
    //   2229: getfield 46	com/umeng/update/net/f:j	Lcom/umeng/update/net/k;
    //   2232: getfield 342	com/umeng/update/net/k:g	Z
    //   2235: ifne +63 -> 2298
    //   2238: ldc2_w 534
    //   2241: invokestatic 539	java/lang/Thread:sleep	(J)V
    //   2244: aload_0
    //   2245: getfield 40	com/umeng/update/net/f:f	J
    //   2248: lconst_1
    //   2249: lcmp
    //   2250: ifge +40 -> 2290
    //   2253: aload_0
    //   2254: iconst_0
    //   2255: invokespecial 541	com/umeng/update/net/f:a	(Z)V
    //   2258: goto -1350 -> 908
    //   2261: astore 18
    //   2263: aload_0
    //   2264: aload 18
    //   2266: invokespecial 369	com/umeng/update/net/f:a	(Ljava/lang/Exception;)V
    //   2269: aload_0
    //   2270: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2273: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   2276: aload_0
    //   2277: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2280: aload_0
    //   2281: getfield 70	com/umeng/update/net/f:h	I
    //   2284: invokevirtual 367	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   2287: goto -1379 -> 908
    //   2290: aload_0
    //   2291: iconst_1
    //   2292: invokespecial 541	com/umeng/update/net/f:a	(Z)V
    //   2295: goto -1387 -> 908
    //   2298: invokestatic 51	com/umeng/update/net/DownloadingService:b	()Landroid/util/SparseArray;
    //   2301: aload_0
    //   2302: getfield 70	com/umeng/update/net/f:h	I
    //   2305: invokevirtual 61	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   2308: checkcast 63	com/umeng/update/net/s
    //   2311: astore 24
    //   2313: aload 24
    //   2315: getfield 66	com/umeng/update/net/s:e	[J
    //   2318: iconst_0
    //   2319: aload_0
    //   2320: getfield 38	com/umeng/update/net/f:e	J
    //   2323: lastore
    //   2324: aload 24
    //   2326: getfield 66	com/umeng/update/net/s:e	[J
    //   2329: iconst_1
    //   2330: aload_0
    //   2331: getfield 40	com/umeng/update/net/f:f	J
    //   2334: lastore
    //   2335: aload 24
    //   2337: getfield 66	com/umeng/update/net/s:e	[J
    //   2340: iconst_2
    //   2341: aload_0
    //   2342: getfield 34	com/umeng/update/net/f:d	I
    //   2345: i2l
    //   2346: lastore
    //   2347: aload_0
    //   2348: getfield 70	com/umeng/update/net/f:h	I
    //   2351: ldc_w 543
    //   2354: invokestatic 548	com/umeng/update/net/b:b	(ILjava/lang/String;)Ljava/lang/String;
    //   2357: astore 25
    //   2359: new 510	android/content/Intent
    //   2362: dup
    //   2363: aload_0
    //   2364: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2367: ldc 48
    //   2369: invokespecial 551	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   2372: astore 26
    //   2374: aload 26
    //   2376: ldc_w 553
    //   2379: aload 25
    //   2381: invokevirtual 557	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   2384: pop
    //   2385: aload_0
    //   2386: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2389: invokestatic 169	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    //   2392: aload_0
    //   2393: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2396: aload 26
    //   2398: invokevirtual 560	com/umeng/update/net/p:a	(Lcom/umeng/update/net/DownloadingService;Landroid/content/Intent;)Z
    //   2401: pop
    //   2402: aload_0
    //   2403: getfield 29	com/umeng/update/net/f:k	Lcom/umeng/update/net/DownloadingService;
    //   2406: aload_0
    //   2407: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2410: aload_0
    //   2411: getfield 44	com/umeng/update/net/f:a	Landroid/content/Context;
    //   2414: invokestatic 565	u/a/c:a	(Landroid/content/Context;)Lu/a/c;
    //   2417: ldc_w 567
    //   2420: invokevirtual 570	u/a/c:d	(Ljava/lang/String;)I
    //   2423: invokevirtual 500	android/content/Context:getString	(I)Ljava/lang/String;
    //   2426: invokestatic 573	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V
    //   2429: invokestatic 144	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   2432: ldc_w 575
    //   2435: invokestatic 221	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   2438: goto -1530 -> 908
    //   2441: astore 22
    //   2443: aload 22
    //   2445: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2448: aload 5
    //   2450: ifnull -1773 -> 677
    //   2453: aload 5
    //   2455: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2458: return
    //   2459: astore 23
    //   2461: aload 23
    //   2463: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2466: return
    //   2467: astore 20
    //   2469: aload 5
    //   2471: ifnull +8 -> 2479
    //   2474: aload 5
    //   2476: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2479: aload 20
    //   2481: athrow
    //   2482: astore 21
    //   2484: aload 21
    //   2486: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2489: goto -10 -> 2479
    //   2492: astore 38
    //   2494: aload 38
    //   2496: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2499: aload 9
    //   2501: ifnull -1824 -> 677
    //   2504: aload 9
    //   2506: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2509: return
    //   2510: astore 39
    //   2512: aload 39
    //   2514: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2517: return
    //   2518: astore 36
    //   2520: aload 9
    //   2522: ifnull +8 -> 2530
    //   2525: aload 9
    //   2527: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2530: aload 36
    //   2532: athrow
    //   2533: astore 37
    //   2535: aload 37
    //   2537: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2540: goto -10 -> 2530
    //   2543: astore 14
    //   2545: aload 14
    //   2547: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2550: aload 9
    //   2552: ifnull -664 -> 1888
    //   2555: aload 9
    //   2557: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2560: goto -672 -> 1888
    //   2563: astore 15
    //   2565: aload 15
    //   2567: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2570: goto -682 -> 1888
    //   2573: astore 12
    //   2575: aload 9
    //   2577: ifnull +8 -> 2585
    //   2580: aload 9
    //   2582: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2585: aload 12
    //   2587: athrow
    //   2588: astore 13
    //   2590: aload 13
    //   2592: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2595: goto -10 -> 2585
    //   2598: astore 11
    //   2600: aload 11
    //   2602: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2605: goto -717 -> 1888
    //   2608: astore 62
    //   2610: aload 62
    //   2612: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2615: aload 9
    //   2617: ifnull -1940 -> 677
    //   2620: aload 9
    //   2622: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2625: return
    //   2626: astore 63
    //   2628: aload 63
    //   2630: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2633: return
    //   2634: astore 60
    //   2636: aload 9
    //   2638: ifnull +8 -> 2646
    //   2641: aload 9
    //   2643: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   2646: aload 60
    //   2648: athrow
    //   2649: astore 61
    //   2651: aload 61
    //   2653: invokevirtual 386	java/io/IOException:printStackTrace	()V
    //   2656: goto -10 -> 2646
    //   2659: astore 8
    //   2661: aconst_null
    //   2662: astore 9
    //   2664: aconst_null
    //   2665: astore 10
    //   2667: goto -799 -> 1868
    //   2670: astore 8
    //   2672: aload_3
    //   2673: astore 9
    //   2675: aconst_null
    //   2676: astore 10
    //   2678: goto -810 -> 1868
    //   2681: astore 8
    //   2683: aload 99
    //   2685: astore 9
    //   2687: aconst_null
    //   2688: astore 10
    //   2690: goto -822 -> 1868
    //   2693: astore 8
    //   2695: aconst_null
    //   2696: astore 10
    //   2698: goto -830 -> 1868
    //   2701: astore 34
    //   2703: aconst_null
    //   2704: astore 9
    //   2706: aconst_null
    //   2707: astore 10
    //   2709: goto -1595 -> 1114
    //   2712: astore 34
    //   2714: aload_3
    //   2715: astore 9
    //   2717: aconst_null
    //   2718: astore 10
    //   2720: goto -1606 -> 1114
    //   2723: astore 34
    //   2725: aload 99
    //   2727: astore 9
    //   2729: aconst_null
    //   2730: astore 10
    //   2732: goto -1618 -> 1114
    //   2735: astore 34
    //   2737: aconst_null
    //   2738: astore 10
    //   2740: goto -1626 -> 1114
    //   2743: astore 101
    //   2745: aload 101
    //   2747: astore 6
    //   2749: aconst_null
    //   2750: astore 5
    //   2752: aconst_null
    //   2753: astore 7
    //   2755: goto -1971 -> 784
    //   2758: astore 4
    //   2760: aload_3
    //   2761: astore 5
    //   2763: aload 4
    //   2765: astore 6
    //   2767: aconst_null
    //   2768: astore 7
    //   2770: goto -1986 -> 784
    //   2773: astore 100
    //   2775: aload 99
    //   2777: astore 5
    //   2779: aload 100
    //   2781: astore 6
    //   2783: aconst_null
    //   2784: astore 7
    //   2786: goto -2002 -> 784
    //   2789: astore 40
    //   2791: aload 40
    //   2793: astore 6
    //   2795: aload 9
    //   2797: astore 5
    //   2799: aconst_null
    //   2800: astore 7
    //   2802: goto -2018 -> 784
    //   2805: iload 82
    //   2807: istore 83
    //   2809: goto -1843 -> 966
    //   2812: aload_3
    //   2813: astore 9
    //   2815: goto -2741 -> 74
    //   2818: iconst_1
    //   2819: istore 51
    //   2821: goto -2231 -> 590
    //   2824: iload 81
    //   2826: istore 49
    //   2828: goto -2262 -> 566
    //   2831: astore 8
    //   2833: aload 5
    //   2835: astore 9
    //   2837: aload 7
    //   2839: astore 10
    //   2841: goto -973 -> 1868
    //
    // Exception table:
    //   from	to	target	type
    //   331	364	770	java/io/IOException
    //   364	489	770	java/io/IOException
    //   489	496	770	java/io/IOException
    //   499	566	770	java/io/IOException
    //   566	582	770	java/io/IOException
    //   590	657	770	java/io/IOException
    //   678	700	770	java/io/IOException
    //   714	724	770	java/io/IOException
    //   730	770	770	java/io/IOException
    //   937	955	770	java/io/IOException
    //   966	988	770	java/io/IOException
    //   988	1029	770	java/io/IOException
    //   1029	1055	770	java/io/IOException
    //   1060	1109	770	java/io/IOException
    //   1225	1274	770	java/io/IOException
    //   1359	1448	770	java/io/IOException
    //   1477	1574	770	java/io/IOException
    //   1574	1788	770	java/io/IOException
    //   1788	1823	770	java/io/IOException
    //   1823	1841	770	java/io/IOException
    //   1841	1863	770	java/io/IOException
    //   1893	1911	770	java/io/IOException
    //   1914	2098	770	java/io/IOException
    //   923	928	929	java/io/IOException
    //   988	1029	1058	android/os/DeadObjectException
    //   331	364	1112	android/os/RemoteException
    //   364	489	1112	android/os/RemoteException
    //   489	496	1112	android/os/RemoteException
    //   499	566	1112	android/os/RemoteException
    //   566	582	1112	android/os/RemoteException
    //   590	657	1112	android/os/RemoteException
    //   678	700	1112	android/os/RemoteException
    //   714	724	1112	android/os/RemoteException
    //   730	770	1112	android/os/RemoteException
    //   937	955	1112	android/os/RemoteException
    //   966	988	1112	android/os/RemoteException
    //   988	1029	1112	android/os/RemoteException
    //   1029	1055	1112	android/os/RemoteException
    //   1060	1109	1112	android/os/RemoteException
    //   1225	1274	1112	android/os/RemoteException
    //   1359	1448	1112	android/os/RemoteException
    //   1477	1574	1112	android/os/RemoteException
    //   1574	1788	1112	android/os/RemoteException
    //   1841	1863	1112	android/os/RemoteException
    //   1893	1911	1112	android/os/RemoteException
    //   1914	2098	1112	android/os/RemoteException
    //   1152	1157	1158	java/io/IOException
    //   662	667	1166	java/io/IOException
    //   1178	1183	1184	java/io/IOException
    //   662	667	1192	finally
    //   1168	1173	1192	finally
    //   1199	1204	1207	java/io/IOException
    //   672	677	1217	java/io/IOException
    //   1289	1294	1295	java/io/IOException
    //   1279	1284	1303	java/io/IOException
    //   1315	1320	1321	java/io/IOException
    //   1279	1284	1329	finally
    //   1305	1310	1329	finally
    //   1336	1341	1344	java/io/IOException
    //   1463	1468	1469	java/io/IOException
    //   331	364	1866	finally
    //   364	489	1866	finally
    //   489	496	1866	finally
    //   499	566	1866	finally
    //   566	582	1866	finally
    //   590	657	1866	finally
    //   678	700	1866	finally
    //   714	724	1866	finally
    //   730	770	1866	finally
    //   937	955	1866	finally
    //   966	988	1866	finally
    //   988	1029	1866	finally
    //   1029	1055	1866	finally
    //   1060	1109	1866	finally
    //   1114	1137	1866	finally
    //   1225	1274	1866	finally
    //   1359	1448	1866	finally
    //   1477	1574	1866	finally
    //   1574	1788	1866	finally
    //   1788	1823	1866	finally
    //   1823	1841	1866	finally
    //   1841	1863	1866	finally
    //   1893	1911	1866	finally
    //   1914	2098	1866	finally
    //   1788	1823	1891	android/os/RemoteException
    //   1823	1841	1891	android/os/RemoteException
    //   831	865	2101	android/os/RemoteException
    //   831	865	2154	finally
    //   2103	2108	2154	finally
    //   2228	2258	2261	java/lang/InterruptedException
    //   2290	2295	2261	java/lang/InterruptedException
    //   2298	2438	2261	java/lang/InterruptedException
    //   913	918	2441	java/io/IOException
    //   2453	2458	2459	java/io/IOException
    //   913	918	2467	finally
    //   2443	2448	2467	finally
    //   2474	2479	2482	java/io/IOException
    //   1142	1147	2492	java/io/IOException
    //   2504	2509	2510	java/io/IOException
    //   1142	1147	2518	finally
    //   2494	2499	2518	finally
    //   2525	2530	2533	java/io/IOException
    //   1873	1878	2543	java/io/IOException
    //   2555	2560	2563	java/io/IOException
    //   1873	1878	2573	finally
    //   2545	2550	2573	finally
    //   2580	2585	2588	java/io/IOException
    //   1883	1888	2598	java/io/IOException
    //   1453	1458	2608	java/io/IOException
    //   2620	2625	2626	java/io/IOException
    //   1453	1458	2634	finally
    //   2610	2615	2634	finally
    //   2641	2646	2649	java/io/IOException
    //   8	21	2659	finally
    //   21	58	2670	finally
    //   58	70	2681	finally
    //   74	308	2693	finally
    //   308	320	2693	finally
    //   8	21	2701	android/os/RemoteException
    //   21	58	2712	android/os/RemoteException
    //   58	70	2723	android/os/RemoteException
    //   74	308	2735	android/os/RemoteException
    //   308	320	2735	android/os/RemoteException
    //   8	21	2743	java/io/IOException
    //   21	58	2758	java/io/IOException
    //   58	70	2773	java/io/IOException
    //   74	308	2789	java/io/IOException
    //   308	320	2789	java/io/IOException
    //   784	811	2831	finally
    //   817	826	2831	finally
    //   865	908	2831	finally
    //   2108	2151	2831	finally
    //   2156	2202	2831	finally
    //   2202	2228	2831	finally
    //   2228	2258	2831	finally
    //   2263	2287	2831	finally
    //   2290	2295	2831	finally
    //   2298	2438	2831	finally
  }

  public final void a(int paramInt)
  {
    this.g = paramInt;
  }

  public final void run()
  {
    this.d = 0;
    try
    {
      if (this.i != null)
        this.i.a(this.h);
      boolean bool1 = this.e < 0L;
      boolean bool2 = false;
      if (bool1)
        bool2 = true;
      a(bool2);
      if (DownloadingService.c().size() <= 0)
        this.k.stopSelf();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.f
 * JD-Core Version:    0.6.0
 */