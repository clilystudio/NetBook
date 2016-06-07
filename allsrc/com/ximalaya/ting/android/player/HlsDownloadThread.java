package com.ximalaya.ting.android.player;

public class HlsDownloadThread
{
  private BufferItem mBufferItem;
  private String mCurrentDownloadUrl;

  public HlsDownloadThread(String paramString, BufferItem paramBufferItem)
  {
    this.mCurrentDownloadUrl = paramString;
    this.mBufferItem = paramBufferItem;
  }

  // ERROR //
  public int download()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: iconst_3
    //   3: istore_2
    //   4: iload_2
    //   5: iconst_1
    //   6: isub
    //   7: istore_3
    //   8: iload_2
    //   9: ifgt +5 -> 14
    //   12: iconst_m1
    //   13: ireturn
    //   14: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   17: lstore 4
    //   19: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   22: new 38	java/lang/StringBuilder
    //   25: dup
    //   26: ldc 40
    //   28: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: lload 4
    //   33: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   36: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   42: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   45: new 38	java/lang/StringBuilder
    //   48: dup
    //   49: ldc 59
    //   51: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: aload_0
    //   55: getfield 15	com/ximalaya/ting/android/player/HlsDownloadThread:mCurrentDownloadUrl	Ljava/lang/String;
    //   58: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   67: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   70: new 38	java/lang/StringBuilder
    //   73: dup
    //   74: ldc 64
    //   76: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: aload_0
    //   80: getfield 15	com/ximalaya/ting/android/player/HlsDownloadThread:mCurrentDownloadUrl	Ljava/lang/String;
    //   83: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   92: aload_0
    //   93: getfield 15	com/ximalaya/ting/android/player/HlsDownloadThread:mCurrentDownloadUrl	Ljava/lang/String;
    //   96: invokestatic 70	com/ximalaya/ting/android/player/PlayerUtil:getHttpURLConnection	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   99: astore 18
    //   101: aload 18
    //   103: astore 9
    //   105: aload 9
    //   107: iconst_1
    //   108: invokevirtual 76	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   111: aload 9
    //   113: ldc 78
    //   115: invokevirtual 81	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   118: aload 9
    //   120: ldc 83
    //   122: ldc 85
    //   124: invokevirtual 89	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   127: aload 9
    //   129: invokevirtual 92	java/net/HttpURLConnection:getResponseCode	()I
    //   132: istore 19
    //   134: iload 19
    //   136: sipush 200
    //   139: if_icmpeq +11 -> 150
    //   142: iload 19
    //   144: sipush 206
    //   147: if_icmpne +685 -> 832
    //   150: aload 9
    //   152: invokevirtual 95	java/net/HttpURLConnection:getContentLength	()I
    //   155: istore 20
    //   157: iload 20
    //   159: ifle +10 -> 169
    //   162: iload 20
    //   164: ldc 96
    //   166: if_icmple +68 -> 234
    //   169: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   172: new 38	java/lang/StringBuilder
    //   175: dup
    //   176: ldc 98
    //   178: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   181: iload 20
    //   183: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   186: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   189: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   192: aload 9
    //   194: ifnull +8 -> 202
    //   197: aload 9
    //   199: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   202: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   205: new 38	java/lang/StringBuilder
    //   208: dup
    //   209: ldc 106
    //   211: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   217: lload 4
    //   219: lsub
    //   220: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   223: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   229: iload_3
    //   230: istore_2
    //   231: goto -227 -> 4
    //   234: aload 9
    //   236: invokevirtual 110	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   239: astore 21
    //   241: aload 21
    //   243: astore 8
    //   245: aload_0
    //   246: getfield 15	com/ximalaya/ting/android/player/HlsDownloadThread:mCurrentDownloadUrl	Ljava/lang/String;
    //   249: invokestatic 114	com/ximalaya/ting/android/player/PlayerUtil:getHlsFilePath	(Ljava/lang/String;)Ljava/lang/String;
    //   252: astore 22
    //   254: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   257: new 38	java/lang/StringBuilder
    //   260: dup
    //   261: ldc 116
    //   263: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload 22
    //   268: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   277: new 118	java/io/File
    //   280: dup
    //   281: aload 22
    //   283: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   286: astore 23
    //   288: aload 23
    //   290: invokevirtual 123	java/io/File:exists	()Z
    //   293: ifeq +9 -> 302
    //   296: aload 23
    //   298: invokevirtual 126	java/io/File:delete	()Z
    //   301: pop
    //   302: new 128	java/io/FileOutputStream
    //   305: dup
    //   306: aload 22
    //   308: invokespecial 129	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   311: astore 24
    //   313: aload 24
    //   315: astore 25
    //   317: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   320: ldc 131
    //   322: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   325: aload_0
    //   326: getfield 17	com/ximalaya/ting/android/player/HlsDownloadThread:mBufferItem	Lcom/ximalaya/ting/android/player/BufferItem;
    //   329: ifnull +677 -> 1006
    //   332: new 133	java/io/ByteArrayOutputStream
    //   335: dup
    //   336: invokespecial 134	java/io/ByteArrayOutputStream:<init>	()V
    //   339: astore 7
    //   341: sipush 1024
    //   344: newarray byte
    //   346: astore 26
    //   348: iconst_0
    //   349: istore 27
    //   351: aload 8
    //   353: aload 26
    //   355: invokevirtual 140	java/io/InputStream:read	([B)I
    //   358: istore 28
    //   360: iload 28
    //   362: iconst_m1
    //   363: if_icmpne +114 -> 477
    //   366: aload 25
    //   368: ifnull +8 -> 376
    //   371: aload 25
    //   373: invokevirtual 143	java/io/FileOutputStream:close	()V
    //   376: aload 7
    //   378: ifnull +229 -> 607
    //   381: aload_0
    //   382: getfield 17	com/ximalaya/ting/android/player/HlsDownloadThread:mBufferItem	Lcom/ximalaya/ting/android/player/BufferItem;
    //   385: ifnull +222 -> 607
    //   388: aload_0
    //   389: getfield 17	com/ximalaya/ting/android/player/HlsDownloadThread:mBufferItem	Lcom/ximalaya/ting/android/player/BufferItem;
    //   392: aload 7
    //   394: invokevirtual 147	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   397: invokevirtual 153	com/ximalaya/ting/android/player/BufferItem:setBuffer	([B)V
    //   400: aload_0
    //   401: getfield 17	com/ximalaya/ting/android/player/HlsDownloadThread:mBufferItem	Lcom/ximalaya/ting/android/player/BufferItem;
    //   404: invokevirtual 156	com/ximalaya/ting/android/player/BufferItem:getDataSize	()I
    //   407: istore 31
    //   409: aload 9
    //   411: ifnull +8 -> 419
    //   414: aload 9
    //   416: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   419: aload 8
    //   421: ifnull +8 -> 429
    //   424: aload 8
    //   426: invokevirtual 157	java/io/InputStream:close	()V
    //   429: aload 7
    //   431: ifnull +8 -> 439
    //   434: aload 7
    //   436: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   439: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   442: new 38	java/lang/StringBuilder
    //   445: dup
    //   446: ldc 106
    //   448: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   454: lload 4
    //   456: lsub
    //   457: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   460: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   463: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   466: iload 31
    //   468: ireturn
    //   469: astore 34
    //   471: aconst_null
    //   472: astore 25
    //   474: goto -157 -> 317
    //   477: iload 27
    //   479: iload 28
    //   481: iadd
    //   482: istore 27
    //   484: aload 7
    //   486: ifnull +13 -> 499
    //   489: aload 7
    //   491: aload 26
    //   493: iconst_0
    //   494: iload 28
    //   496: invokevirtual 162	java/io/ByteArrayOutputStream:write	([BII)V
    //   499: aload 25
    //   501: ifnull -150 -> 351
    //   504: aload 25
    //   506: aload 26
    //   508: iconst_0
    //   509: iload 28
    //   511: invokevirtual 163	java/io/FileOutputStream:write	([BII)V
    //   514: goto -163 -> 351
    //   517: astore 6
    //   519: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   522: new 38	java/lang/StringBuilder
    //   525: dup
    //   526: ldc 165
    //   528: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   531: aload 6
    //   533: invokevirtual 166	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   536: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   539: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   542: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   545: aload 9
    //   547: ifnull +8 -> 555
    //   550: aload 9
    //   552: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   555: aload 8
    //   557: ifnull +8 -> 565
    //   560: aload 8
    //   562: invokevirtual 157	java/io/InputStream:close	()V
    //   565: aload 7
    //   567: ifnull +8 -> 575
    //   570: aload 7
    //   572: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   575: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   578: new 38	java/lang/StringBuilder
    //   581: dup
    //   582: ldc 106
    //   584: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   587: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   590: lload 4
    //   592: lsub
    //   593: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   596: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   599: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   602: iload_3
    //   603: istore_2
    //   604: goto -600 -> 4
    //   607: aload 9
    //   609: ifnull +8 -> 617
    //   612: aload 9
    //   614: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   617: aload 8
    //   619: ifnull +8 -> 627
    //   622: aload 8
    //   624: invokevirtual 157	java/io/InputStream:close	()V
    //   627: aload 7
    //   629: ifnull +8 -> 637
    //   632: aload 7
    //   634: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   637: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   640: new 38	java/lang/StringBuilder
    //   643: dup
    //   644: ldc 106
    //   646: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   649: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   652: lload 4
    //   654: lsub
    //   655: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   658: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   664: iload 27
    //   666: ireturn
    //   667: astore 15
    //   669: aconst_null
    //   670: astore 7
    //   672: aconst_null
    //   673: astore 8
    //   675: aconst_null
    //   676: astore 9
    //   678: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   681: new 38	java/lang/StringBuilder
    //   684: dup
    //   685: ldc 168
    //   687: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   690: aload 15
    //   692: invokevirtual 169	java/io/IOException:toString	()Ljava/lang/String;
    //   695: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   698: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   701: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   704: aload 9
    //   706: ifnull +8 -> 714
    //   709: aload 9
    //   711: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   714: aload 8
    //   716: ifnull +8 -> 724
    //   719: aload 8
    //   721: invokevirtual 157	java/io/InputStream:close	()V
    //   724: aload 7
    //   726: ifnull +8 -> 734
    //   729: aload 7
    //   731: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   734: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   737: new 38	java/lang/StringBuilder
    //   740: dup
    //   741: ldc 106
    //   743: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   746: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   749: lload 4
    //   751: lsub
    //   752: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   755: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   758: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   761: iload_3
    //   762: istore_2
    //   763: goto -759 -> 4
    //   766: astore 10
    //   768: aconst_null
    //   769: astore 8
    //   771: aconst_null
    //   772: astore 9
    //   774: aload 9
    //   776: ifnull +8 -> 784
    //   779: aload 9
    //   781: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   784: aload 8
    //   786: ifnull +8 -> 794
    //   789: aload 8
    //   791: invokevirtual 157	java/io/InputStream:close	()V
    //   794: aload_1
    //   795: ifnull +7 -> 802
    //   798: aload_1
    //   799: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   802: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   805: new 38	java/lang/StringBuilder
    //   808: dup
    //   809: ldc 106
    //   811: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   814: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   817: lload 4
    //   819: lsub
    //   820: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   823: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   826: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   829: aload 10
    //   831: athrow
    //   832: aload 9
    //   834: ifnull +8 -> 842
    //   837: aload 9
    //   839: invokevirtual 104	java/net/HttpURLConnection:disconnect	()V
    //   842: getstatic 36	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   845: new 38	java/lang/StringBuilder
    //   848: dup
    //   849: ldc 106
    //   851: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   854: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   857: lload 4
    //   859: lsub
    //   860: invokevirtual 47	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   863: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   866: invokestatic 57	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   869: iload_3
    //   870: istore_2
    //   871: goto -867 -> 4
    //   874: astore 33
    //   876: goto -447 -> 429
    //   879: astore 32
    //   881: goto -442 -> 439
    //   884: astore 30
    //   886: goto -259 -> 627
    //   889: astore 29
    //   891: goto -254 -> 637
    //   894: astore 14
    //   896: goto -331 -> 565
    //   899: astore 13
    //   901: goto -326 -> 575
    //   904: astore 17
    //   906: goto -182 -> 724
    //   909: astore 16
    //   911: goto -177 -> 734
    //   914: astore 12
    //   916: goto -122 -> 794
    //   919: astore 11
    //   921: goto -119 -> 802
    //   924: astore 10
    //   926: aconst_null
    //   927: astore_1
    //   928: aconst_null
    //   929: astore 8
    //   931: goto -157 -> 774
    //   934: astore 10
    //   936: aconst_null
    //   937: astore_1
    //   938: goto -164 -> 774
    //   941: astore 10
    //   943: aload 7
    //   945: astore_1
    //   946: goto -172 -> 774
    //   949: astore 15
    //   951: aconst_null
    //   952: astore 7
    //   954: aconst_null
    //   955: astore 8
    //   957: goto -279 -> 678
    //   960: astore 15
    //   962: aconst_null
    //   963: astore 7
    //   965: goto -287 -> 678
    //   968: astore 15
    //   970: goto -292 -> 678
    //   973: astore 6
    //   975: aconst_null
    //   976: astore 7
    //   978: aconst_null
    //   979: astore 8
    //   981: aconst_null
    //   982: astore 9
    //   984: goto -465 -> 519
    //   987: astore 6
    //   989: aconst_null
    //   990: astore 7
    //   992: aconst_null
    //   993: astore 8
    //   995: goto -476 -> 519
    //   998: astore 6
    //   1000: aconst_null
    //   1001: astore 7
    //   1003: goto -484 -> 519
    //   1006: aconst_null
    //   1007: astore 7
    //   1009: goto -668 -> 341
    //
    // Exception table:
    //   from	to	target	type
    //   302	313	469	java/io/FileNotFoundException
    //   341	348	517	java/net/MalformedURLException
    //   351	360	517	java/net/MalformedURLException
    //   371	376	517	java/net/MalformedURLException
    //   381	409	517	java/net/MalformedURLException
    //   489	499	517	java/net/MalformedURLException
    //   504	514	517	java/net/MalformedURLException
    //   67	101	667	java/io/IOException
    //   67	101	766	finally
    //   424	429	874	java/io/IOException
    //   434	439	879	java/io/IOException
    //   622	627	884	java/io/IOException
    //   632	637	889	java/io/IOException
    //   560	565	894	java/io/IOException
    //   570	575	899	java/io/IOException
    //   719	724	904	java/io/IOException
    //   729	734	909	java/io/IOException
    //   789	794	914	java/io/IOException
    //   798	802	919	java/io/IOException
    //   105	134	924	finally
    //   150	157	924	finally
    //   169	192	924	finally
    //   234	241	924	finally
    //   245	302	934	finally
    //   302	313	934	finally
    //   317	341	934	finally
    //   341	348	941	finally
    //   351	360	941	finally
    //   371	376	941	finally
    //   381	409	941	finally
    //   489	499	941	finally
    //   504	514	941	finally
    //   519	545	941	finally
    //   678	704	941	finally
    //   105	134	949	java/io/IOException
    //   150	157	949	java/io/IOException
    //   169	192	949	java/io/IOException
    //   234	241	949	java/io/IOException
    //   245	302	960	java/io/IOException
    //   302	313	960	java/io/IOException
    //   317	341	960	java/io/IOException
    //   341	348	968	java/io/IOException
    //   351	360	968	java/io/IOException
    //   371	376	968	java/io/IOException
    //   381	409	968	java/io/IOException
    //   489	499	968	java/io/IOException
    //   504	514	968	java/io/IOException
    //   67	101	973	java/net/MalformedURLException
    //   105	134	987	java/net/MalformedURLException
    //   150	157	987	java/net/MalformedURLException
    //   169	192	987	java/net/MalformedURLException
    //   234	241	987	java/net/MalformedURLException
    //   245	302	998	java/net/MalformedURLException
    //   302	313	998	java/net/MalformedURLException
    //   317	341	998	java/net/MalformedURLException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.HlsDownloadThread
 * JD-Core Version:    0.6.0
 */