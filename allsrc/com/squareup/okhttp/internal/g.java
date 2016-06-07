package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;

public class g
{
  private static final g a = c();

  public static g a()
  {
    return a;
  }

  public static void a(String paramString)
  {
    System.out.println(paramString);
  }

  public static String b()
  {
    return "OkHttp";
  }

  // ERROR //
  private static g c()
  {
    // Byte code:
    //   0: ldc 39
    //   2: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: pop
    //   6: iconst_1
    //   7: anewarray 41	java/lang/Class
    //   10: astore 10
    //   12: aload 10
    //   14: iconst_0
    //   15: getstatic 51	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   18: aastore
    //   19: new 53	com/squareup/okhttp/internal/f
    //   22: dup
    //   23: aconst_null
    //   24: ldc 55
    //   26: aload 10
    //   28: invokespecial 58	com/squareup/okhttp/internal/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   31: astore 11
    //   33: new 53	com/squareup/okhttp/internal/f
    //   36: dup
    //   37: aconst_null
    //   38: ldc 60
    //   40: iconst_1
    //   41: anewarray 41	java/lang/Class
    //   44: dup
    //   45: iconst_0
    //   46: ldc 62
    //   48: aastore
    //   49: invokespecial 58	com/squareup/okhttp/internal/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   52: astore 12
    //   54: ldc 64
    //   56: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   59: astore 22
    //   61: aload 22
    //   63: ldc 66
    //   65: iconst_1
    //   66: anewarray 41	java/lang/Class
    //   69: dup
    //   70: iconst_0
    //   71: ldc 68
    //   73: aastore
    //   74: invokevirtual 72	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   77: astore 23
    //   79: aload 23
    //   81: astore 16
    //   83: aload 22
    //   85: ldc 74
    //   87: iconst_1
    //   88: anewarray 41	java/lang/Class
    //   91: dup
    //   92: iconst_0
    //   93: ldc 68
    //   95: aastore
    //   96: invokevirtual 72	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   99: astore 26
    //   101: aload 26
    //   103: astore 15
    //   105: ldc 76
    //   107: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   110: pop
    //   111: new 53	com/squareup/okhttp/internal/f
    //   114: dup
    //   115: ldc 78
    //   117: ldc 80
    //   119: iconst_0
    //   120: anewarray 41	java/lang/Class
    //   123: invokespecial 58	com/squareup/okhttp/internal/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   126: astore 14
    //   128: new 53	com/squareup/okhttp/internal/f
    //   131: dup
    //   132: aconst_null
    //   133: ldc 82
    //   135: iconst_1
    //   136: anewarray 41	java/lang/Class
    //   139: dup
    //   140: iconst_0
    //   141: ldc 78
    //   143: aastore
    //   144: invokespecial 58	com/squareup/okhttp/internal/f:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   147: astore 19
    //   149: aload 16
    //   151: astore 17
    //   153: aload 14
    //   155: astore 18
    //   157: new 84	com/squareup/okhttp/internal/h
    //   160: dup
    //   161: aload 11
    //   163: aload 12
    //   165: aload 17
    //   167: aload 15
    //   169: aload 18
    //   171: aload 19
    //   173: invokespecial 87	com/squareup/okhttp/internal/h:<init>	(Lcom/squareup/okhttp/internal/f;Lcom/squareup/okhttp/internal/f;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/f;Lcom/squareup/okhttp/internal/f;)V
    //   176: areturn
    //   177: astore_0
    //   178: ldc 89
    //   180: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   183: pop
    //   184: goto -178 -> 6
    //   187: astore_1
    //   188: ldc 91
    //   190: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   193: astore 4
    //   195: new 93	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   202: ldc 91
    //   204: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: ldc 100
    //   209: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   218: astore 5
    //   220: new 93	java/lang/StringBuilder
    //   223: dup
    //   224: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   227: ldc 91
    //   229: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: ldc 105
    //   234: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   240: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   243: astore 6
    //   245: new 93	java/lang/StringBuilder
    //   248: dup
    //   249: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   252: ldc 91
    //   254: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: ldc 107
    //   259: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokestatic 45	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   268: astore 7
    //   270: new 109	com/squareup/okhttp/internal/i
    //   273: dup
    //   274: aload 4
    //   276: ldc 111
    //   278: iconst_2
    //   279: anewarray 41	java/lang/Class
    //   282: dup
    //   283: iconst_0
    //   284: ldc 113
    //   286: aastore
    //   287: dup
    //   288: iconst_1
    //   289: aload 5
    //   291: aastore
    //   292: invokevirtual 72	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   295: aload 4
    //   297: ldc 115
    //   299: iconst_1
    //   300: anewarray 41	java/lang/Class
    //   303: dup
    //   304: iconst_0
    //   305: ldc 113
    //   307: aastore
    //   308: invokevirtual 72	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   311: aload 4
    //   313: ldc 117
    //   315: iconst_1
    //   316: anewarray 41	java/lang/Class
    //   319: dup
    //   320: iconst_0
    //   321: ldc 113
    //   323: aastore
    //   324: invokevirtual 72	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   327: aload 6
    //   329: aload 7
    //   331: invokespecial 120	com/squareup/okhttp/internal/i:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   334: astore 8
    //   336: aload 8
    //   338: areturn
    //   339: astore_3
    //   340: new 2	com/squareup/okhttp/internal/g
    //   343: dup
    //   344: invokespecial 121	com/squareup/okhttp/internal/g:<init>	()V
    //   347: areturn
    //   348: astore 28
    //   350: aconst_null
    //   351: astore 14
    //   353: aload 16
    //   355: astore 17
    //   357: aload 14
    //   359: astore 18
    //   361: aconst_null
    //   362: astore 19
    //   364: goto -207 -> 157
    //   367: astore 20
    //   369: aconst_null
    //   370: astore 21
    //   372: aconst_null
    //   373: astore 15
    //   375: aload 21
    //   377: astore 16
    //   379: aconst_null
    //   380: astore 14
    //   382: aload 16
    //   384: astore 17
    //   386: aload 14
    //   388: astore 18
    //   390: aconst_null
    //   391: astore 19
    //   393: goto -236 -> 157
    //   396: astore_2
    //   397: goto -57 -> 340
    //   400: astore 25
    //   402: aload 16
    //   404: astore 21
    //   406: goto -34 -> 372
    //   409: astore 13
    //   411: aconst_null
    //   412: astore 14
    //   414: aconst_null
    //   415: astore 15
    //   417: aconst_null
    //   418: astore 16
    //   420: goto -38 -> 382
    //   423: astore 24
    //   425: aconst_null
    //   426: astore 14
    //   428: aconst_null
    //   429: astore 15
    //   431: goto -49 -> 382
    //   434: astore 27
    //   436: aconst_null
    //   437: astore 14
    //   439: goto -57 -> 382
    //   442: astore 31
    //   444: goto -62 -> 382
    //   447: astore 30
    //   449: goto -96 -> 353
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	177	java/lang/ClassNotFoundException
    //   6	54	187	java/lang/ClassNotFoundException
    //   157	177	187	java/lang/ClassNotFoundException
    //   178	184	187	java/lang/ClassNotFoundException
    //   188	336	339	java/lang/ClassNotFoundException
    //   105	128	348	java/lang/ClassNotFoundException
    //   54	79	367	java/lang/ClassNotFoundException
    //   188	336	396	java/lang/NoSuchMethodException
    //   83	101	400	java/lang/ClassNotFoundException
    //   54	79	409	java/lang/NoSuchMethodException
    //   83	101	423	java/lang/NoSuchMethodException
    //   105	128	434	java/lang/NoSuchMethodException
    //   128	149	442	java/lang/NoSuchMethodException
    //   128	149	447	java/lang/ClassNotFoundException
  }

  public void a(Socket paramSocket)
  {
  }

  public void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }

  public void a(SSLSocket paramSSLSocket)
  {
  }

  public void a(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList)
  {
  }

  public String b(SSLSocket paramSSLSocket)
  {
    return null;
  }

  public void b(Socket paramSocket)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.g
 * JD-Core Version:    0.6.0
 */