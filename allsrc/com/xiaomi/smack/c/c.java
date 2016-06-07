package com.xiaomi.smack.c;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class c
{
  private static c a;
  private Map<String, Object> b = new ConcurrentHashMap();
  private Map<String, Object> c = new ConcurrentHashMap();

  private c()
  {
    b();
  }

  public static c a()
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new c();
      c localc = a;
      return localc;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static String b(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<").append(paramString1).append("/>");
    if (paramString1 != null)
      localStringBuilder.append("<").append(paramString2).append("/>");
    return localStringBuilder.toString();
  }

  // ERROR //
  private void b()
  {
    // Byte code:
    //   0: iconst_2
    //   1: anewarray 49	java/lang/ClassLoader
    //   4: astore_2
    //   5: aload_2
    //   6: iconst_0
    //   7: ldc 2
    //   9: invokevirtual 55	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   12: aastore
    //   13: aload_2
    //   14: iconst_1
    //   15: invokestatic 61	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   18: invokevirtual 64	java/lang/Thread:getContextClassLoader	()Ljava/lang/ClassLoader;
    //   21: aastore
    //   22: new 66	java/util/ArrayList
    //   25: dup
    //   26: invokespecial 67	java/util/ArrayList:<init>	()V
    //   29: astore_3
    //   30: iconst_0
    //   31: istore 4
    //   33: iload 4
    //   35: iconst_2
    //   36: if_icmpge +26 -> 62
    //   39: aload_2
    //   40: iload 4
    //   42: aaload
    //   43: astore 5
    //   45: aload 5
    //   47: ifnull +585 -> 632
    //   50: aload_3
    //   51: aload 5
    //   53: invokeinterface 73 2 0
    //   58: pop
    //   59: goto +573 -> 632
    //   62: aload_3
    //   63: aload_3
    //   64: invokeinterface 77 1 0
    //   69: anewarray 49	java/lang/ClassLoader
    //   72: invokeinterface 81 2 0
    //   77: checkcast 83	[Ljava/lang/ClassLoader;
    //   80: astore 7
    //   82: aload 7
    //   84: arraylength
    //   85: istore 8
    //   87: iconst_0
    //   88: istore 9
    //   90: iload 9
    //   92: iload 8
    //   94: if_icmpge +327 -> 421
    //   97: aload 7
    //   99: iload 9
    //   101: aaload
    //   102: ldc 85
    //   104: invokevirtual 89	java/lang/ClassLoader:getResources	(Ljava/lang/String;)Ljava/util/Enumeration;
    //   107: astore 10
    //   109: aload 10
    //   111: invokeinterface 95 1 0
    //   116: ifeq +497 -> 613
    //   119: aload 10
    //   121: invokeinterface 99 1 0
    //   126: checkcast 101	java/net/URL
    //   129: astore 11
    //   131: aload 11
    //   133: invokevirtual 105	java/net/URL:openStream	()Ljava/io/InputStream;
    //   136: astore 15
    //   138: invokestatic 111	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   141: invokevirtual 115	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   144: astore 16
    //   146: aload 16
    //   148: ldc 117
    //   150: iconst_1
    //   151: invokeinterface 123 3 0
    //   156: aload 16
    //   158: aload 15
    //   160: ldc 125
    //   162: invokeinterface 129 3 0
    //   167: aload 16
    //   169: invokeinterface 132 1 0
    //   174: istore 17
    //   176: iload 17
    //   178: iconst_2
    //   179: if_icmpne +154 -> 333
    //   182: aload 16
    //   184: invokeinterface 135 1 0
    //   189: ldc 137
    //   191: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   194: ifeq +228 -> 422
    //   197: aload 16
    //   199: invokeinterface 145 1 0
    //   204: pop
    //   205: aload 16
    //   207: invokeinterface 145 1 0
    //   212: pop
    //   213: aload 16
    //   215: invokeinterface 148 1 0
    //   220: astore 37
    //   222: aload 16
    //   224: invokeinterface 145 1 0
    //   229: pop
    //   230: aload 16
    //   232: invokeinterface 145 1 0
    //   237: pop
    //   238: aload 16
    //   240: invokeinterface 148 1 0
    //   245: astore 40
    //   247: aload 16
    //   249: invokeinterface 145 1 0
    //   254: pop
    //   255: aload 16
    //   257: invokeinterface 145 1 0
    //   262: pop
    //   263: aload 16
    //   265: invokeinterface 148 1 0
    //   270: astore 43
    //   272: aload 37
    //   274: aload 40
    //   276: invokestatic 150	com/xiaomi/smack/c/c:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   279: astore 44
    //   281: aload_0
    //   282: getfield 21	com/xiaomi/smack/c/c:c	Ljava/util/Map;
    //   285: aload 44
    //   287: invokeinterface 155 2 0
    //   292: istore 45
    //   294: iload 45
    //   296: ifne +37 -> 333
    //   299: aload 43
    //   301: invokestatic 159	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   304: astore 47
    //   306: ldc 161
    //   308: aload 47
    //   310: invokevirtual 165	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   313: ifeq +52 -> 365
    //   316: aload_0
    //   317: getfield 21	com/xiaomi/smack/c/c:c	Ljava/util/Map;
    //   320: aload 44
    //   322: aload 47
    //   324: invokevirtual 167	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   327: invokeinterface 171 3 0
    //   332: pop
    //   333: aload 16
    //   335: invokeinterface 145 1 0
    //   340: istore 30
    //   342: iload 30
    //   344: istore 17
    //   346: iload 17
    //   348: iconst_1
    //   349: if_icmpne -173 -> 176
    //   352: aload 15
    //   354: invokevirtual 176	java/io/InputStream:close	()V
    //   357: goto -248 -> 109
    //   360: astore 31
    //   362: goto -253 -> 109
    //   365: ldc 178
    //   367: aload 47
    //   369: invokevirtual 165	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   372: ifeq -39 -> 333
    //   375: aload_0
    //   376: getfield 21	com/xiaomi/smack/c/c:c	Ljava/util/Map;
    //   379: aload 44
    //   381: aload 47
    //   383: invokeinterface 171 3 0
    //   388: pop
    //   389: goto -56 -> 333
    //   392: astore 46
    //   394: aload 46
    //   396: invokevirtual 181	java/lang/ClassNotFoundException:printStackTrace	()V
    //   399: goto -66 -> 333
    //   402: astore 12
    //   404: aload 15
    //   406: astore 13
    //   408: aload 13
    //   410: invokevirtual 176	java/io/InputStream:close	()V
    //   413: aload 12
    //   415: athrow
    //   416: astore_1
    //   417: aload_1
    //   418: invokevirtual 182	java/lang/Exception:printStackTrace	()V
    //   421: return
    //   422: aload 16
    //   424: invokeinterface 135 1 0
    //   429: ldc 184
    //   431: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   434: ifeq -101 -> 333
    //   437: aload 16
    //   439: invokeinterface 145 1 0
    //   444: pop
    //   445: aload 16
    //   447: invokeinterface 145 1 0
    //   452: pop
    //   453: aload 16
    //   455: invokeinterface 148 1 0
    //   460: astore 20
    //   462: aload 16
    //   464: invokeinterface 145 1 0
    //   469: pop
    //   470: aload 16
    //   472: invokeinterface 145 1 0
    //   477: pop
    //   478: aload 16
    //   480: invokeinterface 148 1 0
    //   485: astore 23
    //   487: aload 16
    //   489: invokeinterface 145 1 0
    //   494: pop
    //   495: aload 16
    //   497: invokeinterface 145 1 0
    //   502: pop
    //   503: aload 16
    //   505: invokeinterface 148 1 0
    //   510: astore 26
    //   512: aload 20
    //   514: aload 23
    //   516: invokestatic 150	com/xiaomi/smack/c/c:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   519: astore 27
    //   521: aload_0
    //   522: getfield 19	com/xiaomi/smack/c/c:b	Ljava/util/Map;
    //   525: aload 27
    //   527: invokeinterface 155 2 0
    //   532: istore 28
    //   534: iload 28
    //   536: ifne -203 -> 333
    //   539: aload 26
    //   541: invokestatic 159	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   544: astore 32
    //   546: ldc 186
    //   548: aload 32
    //   550: invokevirtual 165	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   553: ifeq +33 -> 586
    //   556: aload_0
    //   557: getfield 19	com/xiaomi/smack/c/c:b	Ljava/util/Map;
    //   560: aload 27
    //   562: aload 32
    //   564: invokevirtual 167	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   567: invokeinterface 171 3 0
    //   572: pop
    //   573: goto -240 -> 333
    //   576: astore 29
    //   578: aload 29
    //   580: invokevirtual 181	java/lang/ClassNotFoundException:printStackTrace	()V
    //   583: goto -250 -> 333
    //   586: ldc 188
    //   588: aload 32
    //   590: invokevirtual 165	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   593: ifeq -260 -> 333
    //   596: aload_0
    //   597: getfield 19	com/xiaomi/smack/c/c:b	Ljava/util/Map;
    //   600: aload 27
    //   602: aload 32
    //   604: invokeinterface 171 3 0
    //   609: pop
    //   610: goto -277 -> 333
    //   613: iinc 9 1
    //   616: goto -526 -> 90
    //   619: astore 14
    //   621: goto -208 -> 413
    //   624: astore 12
    //   626: aconst_null
    //   627: astore 13
    //   629: goto -221 -> 408
    //   632: iinc 4 1
    //   635: goto -602 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   352	357	360	java/lang/Exception
    //   299	333	392	java/lang/ClassNotFoundException
    //   365	389	392	java/lang/ClassNotFoundException
    //   138	176	402	finally
    //   182	294	402	finally
    //   299	333	402	finally
    //   333	342	402	finally
    //   365	389	402	finally
    //   394	399	402	finally
    //   422	534	402	finally
    //   539	573	402	finally
    //   578	583	402	finally
    //   586	610	402	finally
    //   0	30	416	java/lang/Exception
    //   39	45	416	java/lang/Exception
    //   50	59	416	java/lang/Exception
    //   62	87	416	java/lang/Exception
    //   97	109	416	java/lang/Exception
    //   109	131	416	java/lang/Exception
    //   413	416	416	java/lang/Exception
    //   539	573	576	java/lang/ClassNotFoundException
    //   586	610	576	java/lang/ClassNotFoundException
    //   408	413	619	java/lang/Exception
    //   131	138	624	finally
  }

  public final Object a(String paramString1, String paramString2)
  {
    String str = b(paramString1, paramString2);
    return this.b.get(str);
  }

  public final void a(String paramString1, String paramString2, Object paramObject)
  {
    if ((!(paramObject instanceof b)) && (!(paramObject instanceof Class)))
      throw new IllegalArgumentException("Provider must be a PacketExtensionProvider or a Class instance.");
    String str = b(paramString1, paramString2);
    this.b.put(str, paramObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.c.c
 * JD-Core Version:    0.6.0
 */