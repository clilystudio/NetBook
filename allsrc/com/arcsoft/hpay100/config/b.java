package com.arcsoft.hpay100.config;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;

public final class b extends ContentObserver
{
  public static String a = "";
  public static String b = "";
  public static String[] c = null;
  public static int d = 0;
  private static j f;
  private Context e = null;

  public b(Handler paramHandler, Context paramContext)
  {
    super(paramHandler);
    this.e = paramContext;
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: getstatic 41	com/arcsoft/hpay100/config/l:g	I
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: invokestatic 46	com/arcsoft/hpay100/config/a:a	()Ljava/util/ArrayList;
    //   10: astore 7
    //   12: aload 7
    //   14: ifnull -8 -> 6
    //   17: aload 7
    //   19: invokevirtual 52	java/util/ArrayList:size	()I
    //   22: ifeq -16 -> 6
    //   25: ldc 54
    //   27: invokestatic 60	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   30: astore 8
    //   32: iconst_4
    //   33: anewarray 62	java/lang/String
    //   36: dup
    //   37: iconst_0
    //   38: ldc 64
    //   40: aastore
    //   41: dup
    //   42: iconst_1
    //   43: ldc 66
    //   45: aastore
    //   46: dup
    //   47: iconst_2
    //   48: ldc 68
    //   50: aastore
    //   51: dup
    //   52: iconst_3
    //   53: ldc 70
    //   55: aastore
    //   56: astore 9
    //   58: aload_0
    //   59: getfield 34	com/arcsoft/hpay100/config/b:e	Landroid/content/Context;
    //   62: invokevirtual 76	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   65: astore 10
    //   67: new 78	java/lang/StringBuilder
    //   70: dup
    //   71: ldc 80
    //   73: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   76: invokestatic 89	java/lang/System:currentTimeMillis	()J
    //   79: ldc2_w 90
    //   82: lsub
    //   83: invokevirtual 95	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   86: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: astore 11
    //   91: ldc 101
    //   93: new 78	java/lang/StringBuilder
    //   96: dup
    //   97: ldc 103
    //   99: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: aload 11
    //   104: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: aload 10
    //   115: aload 8
    //   117: aload 9
    //   119: aload 11
    //   121: aconst_null
    //   122: ldc 113
    //   124: invokevirtual 119	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   127: astore 12
    //   129: aload 12
    //   131: astore 4
    //   133: ldc 101
    //   135: new 78	java/lang/StringBuilder
    //   138: dup
    //   139: ldc 121
    //   141: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   144: aload 4
    //   146: invokeinterface 126 1 0
    //   151: invokevirtual 129	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   154: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aload 4
    //   162: ifnull +27 -> 189
    //   165: aload 4
    //   167: invokeinterface 126 1 0
    //   172: ifle +17 -> 189
    //   175: aload 4
    //   177: invokeinterface 133 1 0
    //   182: istore 14
    //   184: iload 14
    //   186: ifne +24 -> 210
    //   189: aload 4
    //   191: ifnull -185 -> 6
    //   194: aload 4
    //   196: invokeinterface 136 1 0
    //   201: return
    //   202: astore 13
    //   204: aload 13
    //   206: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   209: return
    //   210: aload 4
    //   212: ldc 70
    //   214: invokeinterface 143 2 0
    //   219: istore 15
    //   221: aload 4
    //   223: ldc 66
    //   225: invokeinterface 143 2 0
    //   230: istore 16
    //   232: aload 4
    //   234: ldc 64
    //   236: invokeinterface 143 2 0
    //   241: istore 17
    //   243: aload 4
    //   245: iload 16
    //   247: invokeinterface 147 2 0
    //   252: astore 18
    //   254: aload 4
    //   256: iload 15
    //   258: invokeinterface 147 2 0
    //   263: astore 19
    //   265: aload 4
    //   267: iload 17
    //   269: invokeinterface 151 2 0
    //   274: lstore 20
    //   276: ldc 101
    //   278: new 78	java/lang/StringBuilder
    //   281: dup
    //   282: ldc 153
    //   284: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   287: aload 18
    //   289: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   298: ldc 101
    //   300: new 78	java/lang/StringBuilder
    //   303: dup
    //   304: ldc 155
    //   306: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   309: aload 19
    //   311: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   317: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   320: aload 18
    //   322: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   325: ifne -165 -> 160
    //   328: aload 19
    //   330: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   333: ifne -173 -> 160
    //   336: aload 18
    //   338: ldc 163
    //   340: invokevirtual 166	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   343: ifeq +273 -> 616
    //   346: aload 18
    //   348: iconst_3
    //   349: invokevirtual 169	java/lang/String:substring	(I)Ljava/lang/String;
    //   352: astore 22
    //   354: aload 7
    //   356: invokevirtual 173	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   359: astore 23
    //   361: aload 23
    //   363: invokeinterface 178 1 0
    //   368: ifeq -208 -> 160
    //   371: aload 23
    //   373: invokeinterface 182 1 0
    //   378: checkcast 184	com/arcsoft/hpay100/config/x
    //   381: astore 24
    //   383: aload 24
    //   385: getfield 185	com/arcsoft/hpay100/config/x:a	Ljava/lang/String;
    //   388: astore 25
    //   390: aload 24
    //   392: getfield 186	com/arcsoft/hpay100/config/x:b	Ljava/lang/String;
    //   395: astore 26
    //   397: aload 22
    //   399: aload 25
    //   401: invokevirtual 166	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   404: ifeq -43 -> 361
    //   407: aload 19
    //   409: aload 26
    //   411: invokevirtual 166	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   414: ifeq -53 -> 361
    //   417: ldc 101
    //   419: new 78	java/lang/StringBuilder
    //   422: dup
    //   423: ldc 188
    //   425: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   428: aload 22
    //   430: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   439: ldc 101
    //   441: new 78	java/lang/StringBuilder
    //   444: dup
    //   445: ldc 190
    //   447: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   450: aload 26
    //   452: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   458: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   461: ldc 101
    //   463: new 78	java/lang/StringBuilder
    //   466: dup
    //   467: ldc 192
    //   469: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   472: aload 19
    //   474: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   477: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   480: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   483: iload 17
    //   485: iconst_m1
    //   486: if_icmpeq -326 -> 160
    //   489: aload 10
    //   491: ldc 194
    //   493: invokestatic 60	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   496: new 78	java/lang/StringBuilder
    //   499: dup
    //   500: ldc 196
    //   502: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   505: lload 20
    //   507: invokevirtual 95	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   510: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   513: aconst_null
    //   514: invokevirtual 200	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   517: istore 27
    //   519: ldc 101
    //   521: new 78	java/lang/StringBuilder
    //   524: dup
    //   525: ldc 202
    //   527: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   530: iload 27
    //   532: invokevirtual 129	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   535: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   541: goto -381 -> 160
    //   544: astore_1
    //   545: aload 4
    //   547: astore_2
    //   548: aload_1
    //   549: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   552: aload_2
    //   553: ifnull -547 -> 6
    //   556: aload_2
    //   557: invokeinterface 136 1 0
    //   562: return
    //   563: astore 6
    //   565: aload 6
    //   567: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   570: return
    //   571: astore_3
    //   572: aconst_null
    //   573: astore 4
    //   575: aload 4
    //   577: ifnull +10 -> 587
    //   580: aload 4
    //   582: invokeinterface 136 1 0
    //   587: aload_3
    //   588: athrow
    //   589: astore 5
    //   591: aload 5
    //   593: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   596: goto -9 -> 587
    //   599: astore_3
    //   600: goto -25 -> 575
    //   603: astore_3
    //   604: aload_2
    //   605: astore 4
    //   607: goto -32 -> 575
    //   610: astore_1
    //   611: aconst_null
    //   612: astore_2
    //   613: goto -65 -> 548
    //   616: aload 18
    //   618: astore 22
    //   620: goto -266 -> 354
    //
    // Exception table:
    //   from	to	target	type
    //   194	201	202	java/lang/Exception
    //   133	160	544	java/lang/Exception
    //   165	184	544	java/lang/Exception
    //   210	354	544	java/lang/Exception
    //   354	361	544	java/lang/Exception
    //   361	483	544	java/lang/Exception
    //   489	541	544	java/lang/Exception
    //   556	562	563	java/lang/Exception
    //   7	12	571	finally
    //   17	129	571	finally
    //   580	587	589	java/lang/Exception
    //   133	160	599	finally
    //   165	184	599	finally
    //   210	354	599	finally
    //   354	361	599	finally
    //   361	483	599	finally
    //   489	541	599	finally
    //   548	552	603	finally
    //   7	12	610	java/lang/Exception
    //   17	129	610	java/lang/Exception
  }

  public static void a(j paramj)
  {
    f = paramj;
  }

  // ERROR //
  public final void onChange(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokespecial 209	android/database/ContentObserver:onChange	(Z)V
    //   5: ldc 101
    //   7: ldc 210
    //   9: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   12: getstatic 205	com/arcsoft/hpay100/config/b:f	Lcom/arcsoft/hpay100/config/j;
    //   15: ifnull +11 -> 26
    //   18: getstatic 205	com/arcsoft/hpay100/config/b:f	Lcom/arcsoft/hpay100/config/j;
    //   21: invokeinterface 214 1 0
    //   26: getstatic 21	com/arcsoft/hpay100/config/b:a	Ljava/lang/String;
    //   29: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   32: ifne +25 -> 57
    //   35: getstatic 23	com/arcsoft/hpay100/config/b:b	Ljava/lang/String;
    //   38: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   41: ifne +16 -> 57
    //   44: getstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   47: ifnull +10 -> 57
    //   50: getstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   53: arraylength
    //   54: ifne +8 -> 62
    //   57: aload_0
    //   58: invokespecial 215	com/arcsoft/hpay100/config/b:a	()V
    //   61: return
    //   62: ldc 54
    //   64: invokestatic 60	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   67: astore 8
    //   69: iconst_4
    //   70: anewarray 62	java/lang/String
    //   73: dup
    //   74: iconst_0
    //   75: ldc 64
    //   77: aastore
    //   78: dup
    //   79: iconst_1
    //   80: ldc 66
    //   82: aastore
    //   83: dup
    //   84: iconst_2
    //   85: ldc 68
    //   87: aastore
    //   88: dup
    //   89: iconst_3
    //   90: ldc 70
    //   92: aastore
    //   93: astore 9
    //   95: aload_0
    //   96: getfield 34	com/arcsoft/hpay100/config/b:e	Landroid/content/Context;
    //   99: invokevirtual 76	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   102: astore 10
    //   104: new 78	java/lang/StringBuilder
    //   107: dup
    //   108: ldc 217
    //   110: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: invokestatic 89	java/lang/System:currentTimeMillis	()J
    //   116: ldc2_w 90
    //   119: lsub
    //   120: invokevirtual 95	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   123: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: astore 11
    //   128: ldc 101
    //   130: new 78	java/lang/StringBuilder
    //   133: dup
    //   134: ldc 103
    //   136: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload 11
    //   141: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   150: iconst_1
    //   151: anewarray 62	java/lang/String
    //   154: astore 12
    //   156: aload 12
    //   158: iconst_0
    //   159: new 78	java/lang/StringBuilder
    //   162: dup
    //   163: ldc 219
    //   165: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   168: getstatic 21	com/arcsoft/hpay100/config/b:a	Ljava/lang/String;
    //   171: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc 219
    //   176: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: aastore
    //   183: aload 10
    //   185: aload 8
    //   187: aload 9
    //   189: aload 11
    //   191: aload 12
    //   193: ldc 113
    //   195: invokevirtual 119	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   198: astore 13
    //   200: aload 13
    //   202: astore 5
    //   204: ldc 101
    //   206: new 78	java/lang/StringBuilder
    //   209: dup
    //   210: ldc 221
    //   212: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 5
    //   217: invokeinterface 126 1 0
    //   222: invokevirtual 129	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   225: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   231: aload 5
    //   233: ifnull +27 -> 260
    //   236: aload 5
    //   238: invokeinterface 126 1 0
    //   243: ifle +17 -> 260
    //   246: aload 5
    //   248: invokeinterface 133 1 0
    //   253: istore 15
    //   255: iload 15
    //   257: ifne +28 -> 285
    //   260: aload 5
    //   262: ifnull -205 -> 57
    //   265: aload 5
    //   267: invokeinterface 136 1 0
    //   272: goto -215 -> 57
    //   275: astore 14
    //   277: aload 14
    //   279: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   282: goto -225 -> 57
    //   285: aload 5
    //   287: ldc 66
    //   289: invokeinterface 143 2 0
    //   294: istore 16
    //   296: aload 5
    //   298: ldc 70
    //   300: invokeinterface 143 2 0
    //   305: istore 17
    //   307: aload 5
    //   309: iload 16
    //   311: invokeinterface 147 2 0
    //   316: astore 18
    //   318: aload 5
    //   320: iload 17
    //   322: invokeinterface 147 2 0
    //   327: astore 19
    //   329: ldc 101
    //   331: new 78	java/lang/StringBuilder
    //   334: dup
    //   335: ldc 223
    //   337: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   340: aload 18
    //   342: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   351: ldc 101
    //   353: new 78	java/lang/StringBuilder
    //   356: dup
    //   357: ldc 225
    //   359: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   362: aload 19
    //   364: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   370: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   373: aload 5
    //   375: ldc 64
    //   377: invokeinterface 143 2 0
    //   382: istore 20
    //   384: aload 5
    //   386: iload 20
    //   388: invokeinterface 151 2 0
    //   393: lstore 21
    //   395: aload 18
    //   397: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   400: ifne -169 -> 231
    //   403: aload 19
    //   405: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   408: ifne -177 -> 231
    //   411: getstatic 21	com/arcsoft/hpay100/config/b:a	Ljava/lang/String;
    //   414: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   417: ifne -186 -> 231
    //   420: getstatic 23	com/arcsoft/hpay100/config/b:b	Ljava/lang/String;
    //   423: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   426: ifne -195 -> 231
    //   429: getstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   432: ifnull -201 -> 231
    //   435: getstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   438: arraylength
    //   439: ifle -208 -> 231
    //   442: iconst_0
    //   443: istore 23
    //   445: iload 23
    //   447: getstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   450: arraylength
    //   451: if_icmplt +265 -> 716
    //   454: iconst_1
    //   455: istore 24
    //   457: ldc 101
    //   459: new 78	java/lang/StringBuilder
    //   462: dup
    //   463: ldc 227
    //   465: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   468: iload 24
    //   470: invokevirtual 230	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   473: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   476: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   479: iload 24
    //   481: ifeq -250 -> 231
    //   484: getstatic 23	com/arcsoft/hpay100/config/b:b	Ljava/lang/String;
    //   487: invokevirtual 233	java/lang/String:length	()I
    //   490: bipush 10
    //   492: if_icmpgt +289 -> 781
    //   495: aload 18
    //   497: getstatic 23	com/arcsoft/hpay100/config/b:b	Ljava/lang/String;
    //   500: invokestatic 237	com/arcsoft/hpay100/c/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   503: getstatic 27	com/arcsoft/hpay100/config/b:d	I
    //   506: iconst_1
    //   507: if_icmpgt +17 -> 524
    //   510: ldc 19
    //   512: putstatic 21	com/arcsoft/hpay100/config/b:a	Ljava/lang/String;
    //   515: ldc 19
    //   517: putstatic 23	com/arcsoft/hpay100/config/b:b	Ljava/lang/String;
    //   520: aconst_null
    //   521: putstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   524: new 239	android/content/ContentValues
    //   527: dup
    //   528: invokespecial 241	android/content/ContentValues:<init>	()V
    //   531: astore 27
    //   533: aload 27
    //   535: ldc 68
    //   537: ldc 243
    //   539: invokevirtual 246	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   542: aload 10
    //   544: ldc 194
    //   546: invokestatic 60	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   549: aload 27
    //   551: new 78	java/lang/StringBuilder
    //   554: dup
    //   555: ldc 196
    //   557: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   560: lload 21
    //   562: invokevirtual 95	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   565: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   568: aconst_null
    //   569: invokevirtual 250	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   572: pop
    //   573: getstatic 41	com/arcsoft/hpay100/config/l:g	I
    //   576: ifne -316 -> 260
    //   579: iload 20
    //   581: iconst_m1
    //   582: if_icmpeq -322 -> 260
    //   585: ldc 101
    //   587: new 78	java/lang/StringBuilder
    //   590: dup
    //   591: ldc 252
    //   593: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   596: aload 18
    //   598: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   604: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   607: ldc 101
    //   609: new 78	java/lang/StringBuilder
    //   612: dup
    //   613: ldc 254
    //   615: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   618: aload 19
    //   620: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   626: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   629: aload 10
    //   631: ldc 194
    //   633: invokestatic 60	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   636: new 78	java/lang/StringBuilder
    //   639: dup
    //   640: ldc 196
    //   642: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   645: lload 21
    //   647: invokevirtual 95	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   650: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   653: aconst_null
    //   654: invokevirtual 200	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   657: istore 29
    //   659: ldc 101
    //   661: new 78	java/lang/StringBuilder
    //   664: dup
    //   665: ldc_w 256
    //   668: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   671: iload 29
    //   673: invokevirtual 129	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   676: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   679: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   682: goto -422 -> 260
    //   685: astore_2
    //   686: aload 5
    //   688: astore_3
    //   689: aload_2
    //   690: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   693: aload_3
    //   694: ifnull -637 -> 57
    //   697: aload_3
    //   698: invokeinterface 136 1 0
    //   703: goto -646 -> 57
    //   706: astore 7
    //   708: aload 7
    //   710: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   713: goto -656 -> 57
    //   716: getstatic 25	com/arcsoft/hpay100/config/b:c	[Ljava/lang/String;
    //   719: iload 23
    //   721: aaload
    //   722: astore 32
    //   724: ldc 101
    //   726: new 78	java/lang/StringBuilder
    //   729: dup
    //   730: ldc_w 258
    //   733: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   736: aload 32
    //   738: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   741: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   744: invokestatic 111	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   747: aload 32
    //   749: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   752: ifne +23 -> 775
    //   755: aload 19
    //   757: aload 32
    //   759: invokevirtual 166	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   762: istore 33
    //   764: iload 33
    //   766: ifne +9 -> 775
    //   769: iconst_0
    //   770: istore 24
    //   772: goto -315 -> 457
    //   775: iinc 23 1
    //   778: goto -333 -> 445
    //   781: new 62	java/lang/String
    //   784: dup
    //   785: getstatic 23	com/arcsoft/hpay100/config/b:b	Ljava/lang/String;
    //   788: invokestatic 263	com/arcsoft/hpay100/c/d:a	(Ljava/lang/String;)[B
    //   791: ldc_w 265
    //   794: invokespecial 268	java/lang/String:<init>	([BLjava/lang/String;)V
    //   797: astore 25
    //   799: aload 19
    //   801: aload 25
    //   803: invokestatic 271	com/arcsoft/hpay100/c/b:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   806: astore 26
    //   808: aload 26
    //   810: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   813: ifne +44 -> 857
    //   816: aload 18
    //   818: aload 26
    //   820: invokestatic 237	com/arcsoft/hpay100/c/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   823: goto -320 -> 503
    //   826: astore 4
    //   828: aload 5
    //   830: ifnull +10 -> 840
    //   833: aload 5
    //   835: invokeinterface 136 1 0
    //   840: aload 4
    //   842: athrow
    //   843: astore 31
    //   845: aload 31
    //   847: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   850: ldc 19
    //   852: astore 25
    //   854: goto -55 -> 799
    //   857: aload 18
    //   859: ldc_w 273
    //   862: invokestatic 237	com/arcsoft/hpay100/c/b:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   865: goto -362 -> 503
    //   868: astore 28
    //   870: aload 28
    //   872: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   875: goto -302 -> 573
    //   878: astore 6
    //   880: aload 6
    //   882: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   885: goto -45 -> 840
    //   888: astore 4
    //   890: aconst_null
    //   891: astore 5
    //   893: goto -65 -> 828
    //   896: astore 4
    //   898: aload_3
    //   899: astore 5
    //   901: goto -73 -> 828
    //   904: astore_2
    //   905: aconst_null
    //   906: astore_3
    //   907: goto -218 -> 689
    //
    // Exception table:
    //   from	to	target	type
    //   265	272	275	java/lang/Exception
    //   204	231	685	java/lang/Exception
    //   236	255	685	java/lang/Exception
    //   285	442	685	java/lang/Exception
    //   445	454	685	java/lang/Exception
    //   457	479	685	java/lang/Exception
    //   484	503	685	java/lang/Exception
    //   503	524	685	java/lang/Exception
    //   573	579	685	java/lang/Exception
    //   585	682	685	java/lang/Exception
    //   716	764	685	java/lang/Exception
    //   799	823	685	java/lang/Exception
    //   845	850	685	java/lang/Exception
    //   857	865	685	java/lang/Exception
    //   870	875	685	java/lang/Exception
    //   697	703	706	java/lang/Exception
    //   204	231	826	finally
    //   236	255	826	finally
    //   285	442	826	finally
    //   445	454	826	finally
    //   457	479	826	finally
    //   484	503	826	finally
    //   503	524	826	finally
    //   524	573	826	finally
    //   573	579	826	finally
    //   585	682	826	finally
    //   716	764	826	finally
    //   781	799	826	finally
    //   799	823	826	finally
    //   845	850	826	finally
    //   857	865	826	finally
    //   870	875	826	finally
    //   781	799	843	java/lang/Exception
    //   524	573	868	java/lang/Exception
    //   833	840	878	java/lang/Exception
    //   62	200	888	finally
    //   689	693	896	finally
    //   62	200	904	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.b
 * JD-Core Version:    0.6.0
 */