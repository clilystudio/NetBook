package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.L;
import com.squareup.okhttp.a;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.m;
import com.squareup.okhttp.n;
import java.io.IOException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import javax.net.SocketFactory;

public final class w
{
  private final m a;
  private final n b;

  public w(m paramm, n paramn)
  {
    this.a = paramm;
    this.b = paramn;
  }

  private static Socket b(int paramInt1, int paramInt2, L paramL)
  {
    g localg = g.a();
    try
    {
      Proxy localProxy = paramL.b();
      a locala = paramL.a();
      if ((localProxy.type() == Proxy.Type.DIRECT) || (localProxy.type() == Proxy.Type.HTTP));
      for (Socket localSocket = locala.c().createSocket(); ; localSocket = new Socket(localProxy))
      {
        localSocket.setSoTimeout(paramInt1);
        localg.a(localSocket, paramL.c(), paramInt2);
        return localSocket;
      }
    }
    catch (IOException localIOException)
    {
    }
    throw new RouteException(localIOException);
  }

  // ERROR //
  public final x a(int paramInt1, int paramInt2, int paramInt3, com.squareup.okhttp.C paramC, L paramL, java.util.List<com.squareup.okhttp.p> paramList, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload 5
    //   2: invokevirtual 33	com/squareup/okhttp/L:a	()Lcom/squareup/okhttp/a;
    //   5: astore 8
    //   7: new 83	com/squareup/okhttp/internal/a
    //   10: dup
    //   11: aload 6
    //   13: invokespecial 86	com/squareup/okhttp/internal/a:<init>	(Ljava/util/List;)V
    //   16: astore 9
    //   18: aconst_null
    //   19: astore 10
    //   21: iload_2
    //   22: iload_1
    //   23: aload 5
    //   25: invokestatic 88	com/squareup/okhttp/internal/http/w:b	(IILcom/squareup/okhttp/L;)Ljava/net/Socket;
    //   28: astore 11
    //   30: aload 5
    //   32: invokevirtual 92	com/squareup/okhttp/L:d	()Z
    //   35: ifeq +442 -> 477
    //   38: aload 4
    //   40: invokevirtual 97	com/squareup/okhttp/C:a	()Ljava/net/URL;
    //   43: invokevirtual 103	java/net/URL:getHost	()Ljava/lang/String;
    //   46: astore 30
    //   48: aload 4
    //   50: invokevirtual 97	com/squareup/okhttp/C:a	()Ljava/net/URL;
    //   53: invokestatic 108	com/squareup/okhttp/internal/l:a	(Ljava/net/URL;)I
    //   56: istore 31
    //   58: iload 31
    //   60: ldc 110
    //   62: invokestatic 113	com/squareup/okhttp/internal/l:a	(Ljava/lang/String;)I
    //   65: if_icmpne +327 -> 392
    //   68: aload 30
    //   70: astore 32
    //   72: new 115	com/squareup/okhttp/D
    //   75: dup
    //   76: invokespecial 116	com/squareup/okhttp/D:<init>	()V
    //   79: new 99	java/net/URL
    //   82: dup
    //   83: ldc 110
    //   85: aload 30
    //   87: iload 31
    //   89: ldc 118
    //   91: invokespecial 121	java/net/URL:<init>	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    //   94: invokevirtual 124	com/squareup/okhttp/D:a	(Ljava/net/URL;)Lcom/squareup/okhttp/D;
    //   97: ldc 126
    //   99: aload 32
    //   101: invokevirtual 129	com/squareup/okhttp/D:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   104: ldc 131
    //   106: ldc 133
    //   108: invokevirtual 129	com/squareup/okhttp/D:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   111: astore 33
    //   113: aload 4
    //   115: ldc 135
    //   117: invokevirtual 138	com/squareup/okhttp/C:a	(Ljava/lang/String;)Ljava/lang/String;
    //   120: astore 34
    //   122: aload 34
    //   124: ifnull +13 -> 137
    //   127: aload 33
    //   129: ldc 135
    //   131: aload 34
    //   133: invokevirtual 129	com/squareup/okhttp/D:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   136: pop
    //   137: aload 4
    //   139: ldc 140
    //   141: invokevirtual 138	com/squareup/okhttp/C:a	(Ljava/lang/String;)Ljava/lang/String;
    //   144: astore 36
    //   146: aload 36
    //   148: ifnull +13 -> 161
    //   151: aload 33
    //   153: ldc 140
    //   155: aload 36
    //   157: invokevirtual 129	com/squareup/okhttp/D:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   160: pop
    //   161: aload 33
    //   163: invokevirtual 143	com/squareup/okhttp/D:a	()Lcom/squareup/okhttp/C;
    //   166: astore 38
    //   168: new 145	com/squareup/okhttp/internal/http/d
    //   171: dup
    //   172: aload_0
    //   173: getfield 17	com/squareup/okhttp/internal/http/w:b	Lcom/squareup/okhttp/n;
    //   176: aload_0
    //   177: getfield 15	com/squareup/okhttp/internal/http/w:a	Lcom/squareup/okhttp/m;
    //   180: aload 11
    //   182: invokespecial 148	com/squareup/okhttp/internal/http/d:<init>	(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;Ljava/net/Socket;)V
    //   185: astore 39
    //   187: aload 39
    //   189: iload_2
    //   190: iload_3
    //   191: invokevirtual 151	com/squareup/okhttp/internal/http/d:a	(II)V
    //   194: aload 38
    //   196: invokevirtual 97	com/squareup/okhttp/C:a	()Ljava/net/URL;
    //   199: astore 40
    //   201: new 153	java/lang/StringBuilder
    //   204: dup
    //   205: ldc 155
    //   207: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   210: aload 40
    //   212: invokevirtual 103	java/net/URL:getHost	()Ljava/lang/String;
    //   215: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc 164
    //   220: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: aload 40
    //   225: invokestatic 108	com/squareup/okhttp/internal/l:a	(Ljava/net/URL;)I
    //   228: invokevirtual 167	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   231: ldc 169
    //   233: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: astore 41
    //   241: aload 39
    //   243: aload 38
    //   245: invokevirtual 176	com/squareup/okhttp/C:e	()Lcom/squareup/okhttp/u;
    //   248: aload 41
    //   250: invokevirtual 179	com/squareup/okhttp/internal/http/d:a	(Lcom/squareup/okhttp/u;Ljava/lang/String;)V
    //   253: aload 39
    //   255: invokevirtual 181	com/squareup/okhttp/internal/http/d:d	()V
    //   258: aload 39
    //   260: invokevirtual 185	com/squareup/okhttp/internal/http/d:g	()Lcom/squareup/okhttp/J;
    //   263: aload 38
    //   265: invokevirtual 190	com/squareup/okhttp/J:a	(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;
    //   268: invokevirtual 193	com/squareup/okhttp/J:a	()Lcom/squareup/okhttp/I;
    //   271: astore 42
    //   273: aload 42
    //   275: invokestatic 198	com/squareup/okhttp/internal/http/r:a	(Lcom/squareup/okhttp/I;)J
    //   278: lstore 43
    //   280: lload 43
    //   282: ldc2_w 199
    //   285: lcmp
    //   286: ifne +6 -> 292
    //   289: lconst_0
    //   290: lstore 43
    //   292: aload 39
    //   294: lload 43
    //   296: invokevirtual 203	com/squareup/okhttp/internal/http/d:b	(J)Lokio/y;
    //   299: astore 45
    //   301: aload 45
    //   303: ldc 204
    //   305: getstatic 210	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   308: invokestatic 213	com/squareup/okhttp/internal/l:b	(Lokio/y;ILjava/util/concurrent/TimeUnit;)Z
    //   311: pop
    //   312: aload 45
    //   314: invokeinterface 218 1 0
    //   319: aload 42
    //   321: invokevirtual 223	com/squareup/okhttp/I:c	()I
    //   324: lookupswitch	default:+28->352, 200:+98->422, 407:+118->442
    //   353: nop
    //   354: ldc2_w 22971
    //   357: nop
    //   358: ifeq +22802 -> 23160
    //   361: <illegal opcode>
    //   362: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   365: aload 42
    //   367: invokevirtual 223	com/squareup/okhttp/I:c	()I
    //   370: invokevirtual 167	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   373: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: invokespecial 226	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   379: athrow
    //   380: astore 29
    //   382: new 77	com/squareup/okhttp/internal/http/RouteException
    //   385: dup
    //   386: aload 29
    //   388: invokespecial 80	com/squareup/okhttp/internal/http/RouteException:<init>	(Ljava/io/IOException;)V
    //   391: athrow
    //   392: new 153	java/lang/StringBuilder
    //   395: dup
    //   396: invokespecial 227	java/lang/StringBuilder:<init>	()V
    //   399: aload 30
    //   401: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: ldc 164
    //   406: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: iload 31
    //   411: invokevirtual 167	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   414: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   417: astore 32
    //   419: goto -347 -> 72
    //   422: aload 39
    //   424: invokevirtual 230	com/squareup/okhttp/internal/http/d:e	()J
    //   427: lconst_0
    //   428: lcmp
    //   429: ifle +48 -> 477
    //   432: new 20	java/io/IOException
    //   435: dup
    //   436: ldc 232
    //   438: invokespecial 226	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   441: athrow
    //   442: aload 5
    //   444: invokevirtual 33	com/squareup/okhttp/L:a	()Lcom/squareup/okhttp/a;
    //   447: invokevirtual 236	com/squareup/okhttp/a:f	()Lcom/squareup/okhttp/b;
    //   450: aload 42
    //   452: aload 5
    //   454: invokevirtual 30	com/squareup/okhttp/L:b	()Ljava/net/Proxy;
    //   457: invokestatic 239	com/squareup/okhttp/internal/http/r:a	(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/I;Ljava/net/Proxy;)Lcom/squareup/okhttp/C;
    //   460: astore 38
    //   462: aload 38
    //   464: ifnonnull -223 -> 241
    //   467: new 20	java/io/IOException
    //   470: dup
    //   471: ldc 241
    //   473: invokespecial 226	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   476: athrow
    //   477: aload 8
    //   479: invokevirtual 244	com/squareup/okhttp/a:d	()Ljavax/net/ssl/SSLSocketFactory;
    //   482: aload 11
    //   484: aload 8
    //   486: invokevirtual 246	com/squareup/okhttp/a:a	()Ljava/lang/String;
    //   489: aload 8
    //   491: invokevirtual 248	com/squareup/okhttp/a:b	()I
    //   494: iconst_1
    //   495: invokevirtual 253	javax/net/ssl/SSLSocketFactory:createSocket	(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    //   498: checkcast 255	javax/net/ssl/SSLSocket
    //   501: astore 17
    //   503: aload 9
    //   505: aload 17
    //   507: invokevirtual 258	com/squareup/okhttp/internal/a:a	(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/p;
    //   510: astore 19
    //   512: invokestatic 25	com/squareup/okhttp/internal/g:a	()Lcom/squareup/okhttp/internal/g;
    //   515: astore 20
    //   517: aload 19
    //   519: invokevirtual 262	com/squareup/okhttp/p:a	()Z
    //   522: ifeq +20 -> 542
    //   525: aload 20
    //   527: aload 17
    //   529: aload 8
    //   531: invokevirtual 246	com/squareup/okhttp/a:a	()Ljava/lang/String;
    //   534: aload 8
    //   536: invokevirtual 265	com/squareup/okhttp/a:g	()Ljava/util/List;
    //   539: invokevirtual 268	com/squareup/okhttp/internal/g:a	(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    //   542: aload 17
    //   544: invokevirtual 271	javax/net/ssl/SSLSocket:startHandshake	()V
    //   547: aload 17
    //   549: invokevirtual 275	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   552: invokestatic 280	com/squareup/okhttp/t:a	(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/t;
    //   555: astore 22
    //   557: aload 19
    //   559: invokevirtual 262	com/squareup/okhttp/p:a	()Z
    //   562: istore 23
    //   564: aconst_null
    //   565: astore 24
    //   567: iload 23
    //   569: ifeq +31 -> 600
    //   572: aload 20
    //   574: aload 17
    //   576: invokevirtual 283	com/squareup/okhttp/internal/g:b	(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    //   579: astore 25
    //   581: aconst_null
    //   582: astore 24
    //   584: aload 25
    //   586: ifnull +14 -> 600
    //   589: aload 25
    //   591: invokestatic 289	com/squareup/okhttp/Protocol:get	(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;
    //   594: astore 26
    //   596: aload 26
    //   598: astore 24
    //   600: aload 20
    //   602: aload 17
    //   604: invokevirtual 292	com/squareup/okhttp/internal/g:a	(Ljavax/net/ssl/SSLSocket;)V
    //   607: aload 8
    //   609: invokevirtual 295	com/squareup/okhttp/a:e	()Ljavax/net/ssl/HostnameVerifier;
    //   612: aload 8
    //   614: invokevirtual 246	com/squareup/okhttp/a:a	()Ljava/lang/String;
    //   617: aload 17
    //   619: invokevirtual 275	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   622: invokeinterface 301 3 0
    //   627: ifne +170 -> 797
    //   630: aload 17
    //   632: invokevirtual 275	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   635: invokeinterface 307 1 0
    //   640: iconst_0
    //   641: aaload
    //   642: checkcast 309	java/security/cert/X509Certificate
    //   645: astore 28
    //   647: new 311	javax/net/ssl/SSLPeerUnverifiedException
    //   650: dup
    //   651: new 153	java/lang/StringBuilder
    //   654: dup
    //   655: ldc_w 313
    //   658: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   661: aload 8
    //   663: invokevirtual 246	com/squareup/okhttp/a:a	()Ljava/lang/String;
    //   666: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   669: ldc_w 315
    //   672: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   675: aload 28
    //   677: invokestatic 320	com/squareup/okhttp/j:a	(Ljava/security/cert/Certificate;)Ljava/lang/String;
    //   680: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   683: ldc_w 322
    //   686: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   689: aload 28
    //   691: invokevirtual 326	java/security/cert/X509Certificate:getSubjectDN	()Ljava/security/Principal;
    //   694: invokeinterface 331 1 0
    //   699: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   702: ldc_w 333
    //   705: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   708: aload 28
    //   710: invokestatic 338	com/squareup/okhttp/internal/a/b:a	(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    //   713: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   716: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   719: invokespecial 342	javax/net/ssl/SSLPeerUnverifiedException:<init>	(Ljava/lang/String;)V
    //   722: athrow
    //   723: astore 18
    //   725: aload 18
    //   727: astore 13
    //   729: aload 17
    //   731: astore 14
    //   733: iload 7
    //   735: ifeq +100 -> 835
    //   738: aload 9
    //   740: aload 13
    //   742: invokevirtual 345	com/squareup/okhttp/internal/a:a	(Ljava/io/IOException;)Z
    //   745: ifeq +90 -> 835
    //   748: iconst_1
    //   749: istore 15
    //   751: aload 14
    //   753: invokestatic 348	com/squareup/okhttp/internal/l:a	(Ljava/net/Socket;)V
    //   756: aload 11
    //   758: invokestatic 348	com/squareup/okhttp/internal/l:a	(Ljava/net/Socket;)V
    //   761: aload 10
    //   763: ifnonnull +78 -> 841
    //   766: new 77	com/squareup/okhttp/internal/http/RouteException
    //   769: dup
    //   770: aload 13
    //   772: invokespecial 80	com/squareup/okhttp/internal/http/RouteException:<init>	(Ljava/io/IOException;)V
    //   775: astore 16
    //   777: iload 15
    //   779: ifne +76 -> 855
    //   782: aload 16
    //   784: athrow
    //   785: astore 21
    //   787: aload 20
    //   789: aload 17
    //   791: invokevirtual 292	com/squareup/okhttp/internal/g:a	(Ljavax/net/ssl/SSLSocket;)V
    //   794: aload 21
    //   796: athrow
    //   797: aload 8
    //   799: invokevirtual 352	com/squareup/okhttp/a:j	()Lcom/squareup/okhttp/j;
    //   802: aload 8
    //   804: invokevirtual 246	com/squareup/okhttp/a:a	()Ljava/lang/String;
    //   807: aload 22
    //   809: invokevirtual 354	com/squareup/okhttp/t:b	()Ljava/util/List;
    //   812: invokevirtual 357	com/squareup/okhttp/j:a	(Ljava/lang/String;Ljava/util/List;)V
    //   815: new 359	com/squareup/okhttp/internal/http/x
    //   818: dup
    //   819: aload 5
    //   821: aload 17
    //   823: aload 24
    //   825: aload 22
    //   827: invokespecial 362	com/squareup/okhttp/internal/http/x:<init>	(Lcom/squareup/okhttp/L;Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/t;)V
    //   830: astore 27
    //   832: aload 27
    //   834: areturn
    //   835: iconst_0
    //   836: istore 15
    //   838: goto -87 -> 751
    //   841: aload 10
    //   843: aload 13
    //   845: invokevirtual 365	com/squareup/okhttp/internal/http/RouteException:addConnectException	(Ljava/io/IOException;)V
    //   848: aload 10
    //   850: astore 16
    //   852: goto -75 -> 777
    //   855: aload 16
    //   857: astore 10
    //   859: goto -838 -> 21
    //   862: astore 12
    //   864: aload 12
    //   866: astore 13
    //   868: aconst_null
    //   869: astore 14
    //   871: goto -138 -> 733
    //
    // Exception table:
    //   from	to	target	type
    //   38	68	380	java/io/IOException
    //   72	122	380	java/io/IOException
    //   127	137	380	java/io/IOException
    //   137	146	380	java/io/IOException
    //   151	161	380	java/io/IOException
    //   161	241	380	java/io/IOException
    //   241	280	380	java/io/IOException
    //   292	352	380	java/io/IOException
    //   352	380	380	java/io/IOException
    //   392	419	380	java/io/IOException
    //   422	442	380	java/io/IOException
    //   442	462	380	java/io/IOException
    //   467	477	380	java/io/IOException
    //   503	517	723	java/io/IOException
    //   600	723	723	java/io/IOException
    //   787	797	723	java/io/IOException
    //   797	832	723	java/io/IOException
    //   517	542	785	finally
    //   542	564	785	finally
    //   572	581	785	finally
    //   589	596	785	finally
    //   477	503	862	java/io/IOException
  }

  public final x a(int paramInt1, int paramInt2, L paramL)
  {
    return new x(paramL, b(paramInt2, paramInt1, paramL));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.w
 * JD-Core Version:    0.6.0
 */