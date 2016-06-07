package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.b.h;
import com.integralblue.httpresponsecache.compat.b;
import com.integralblue.httpresponsecache.compat.java.net.ResponseSource;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.URI;
import java.security.MessageDigest;
import java.util.List;
import java.util.Map;

public final class p extends ResponseCache
  implements com.integralblue.httpresponsecache.compat.java.net.a
{
  private final com.b.c a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;

  public p(File paramFile, long paramLong)
  {
    this.a = com.b.c.a(paramFile, 201105, 2, paramLong);
  }

  private static m a(HttpURLConnection paramHttpURLConnection)
  {
    if ((paramHttpURLConnection instanceof HttpURLConnectionImpl))
      return ((HttpURLConnectionImpl)paramHttpURLConnection).a();
    if ((paramHttpURLConnection instanceof y))
      return ((y)paramHttpURLConnection).a();
    return null;
  }

  private String a(URI paramURI)
  {
    if (paramURI != null);
    try
    {
      if (paramURI.getHost().contains("chapter2"))
      {
        String str1 = paramURI.getQuery();
        if ((str1 != null) && (str1.contains("&")))
        {
          String[] arrayOfString = str1.split("&");
          if (arrayOfString.length == 2)
          {
            String str2 = arrayOfString[0];
            if ((a(str2.split("=")[0])) && (a(str2.split("=")[0])))
            {
              URI localURI = URI.create(paramURI.toString().replace("?" + paramURI.getQuery(), ""));
              paramURI = localURI;
            }
          }
        }
      }
      return com.integralblue.httpresponsecache.compat.c.a(new b().digest(com.integralblue.httpresponsecache.compat.c.a(paramURI.toString(), com.integralblue.httpresponsecache.compat.a.a)), false);
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private static void a(com.b.a parama)
  {
    if (parama != null);
    try
    {
      parama.b();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private static boolean a(String paramString)
  {
    return (paramString.equals("k")) || (paramString.equals("t"));
  }

  private String b(URI paramURI)
  {
    String str = a(paramURI);
    try
    {
      h localh = this.a.a(str);
      if (localh == null)
        return null;
      u localu = new u(new BufferedInputStream(localh.a(0)));
      return u.b(localu).d("Content-Encoding");
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final void a()
  {
    monitorenter;
    try
    {
      this.e = (1 + this.e);
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

  public final void a(ResponseSource paramResponseSource)
  {
    monitorenter;
    while (true)
    {
      try
      {
        this.f = (1 + this.f);
        int i = r.a[paramResponseSource.ordinal()];
        switch (i)
        {
        default:
          return;
        case 1:
          this.e = (1 + this.e);
          continue;
        case 2:
        case 3:
        }
      }
      finally
      {
        monitorexit;
      }
      this.d = (1 + this.d);
    }
  }

  // ERROR //
  public final void a(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 192	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   4: astore_3
    //   5: aload_3
    //   6: invokevirtual 197	com/integralblue/httpresponsecache/compat/libcore/net/http/m:a	()Ljava/net/URI;
    //   9: astore 4
    //   11: aload_3
    //   12: invokevirtual 201	com/integralblue/httpresponsecache/compat/libcore/net/http/m:h	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;
    //   15: astore 5
    //   17: new 155	com/integralblue/httpresponsecache/compat/libcore/net/http/u
    //   20: dup
    //   21: aload 4
    //   23: aload_3
    //   24: invokevirtual 205	com/integralblue/httpresponsecache/compat/libcore/net/http/m:g	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;
    //   27: invokevirtual 210	com/integralblue/httpresponsecache/compat/libcore/net/http/E:c	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   30: aload 5
    //   32: invokevirtual 215	com/integralblue/httpresponsecache/compat/libcore/net/http/G:f	()Ljava/util/Set;
    //   35: invokevirtual 218	com/integralblue/httpresponsecache/compat/libcore/net/http/C:a	(Ljava/util/Set;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   38: aload_2
    //   39: aload_0
    //   40: aload 4
    //   42: invokespecial 220	com/integralblue/httpresponsecache/compat/libcore/net/http/p:b	(Ljava/net/URI;)Ljava/lang/String;
    //   45: invokespecial 223	com/integralblue/httpresponsecache/compat/libcore/net/http/u:<init>	(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    //   48: astore 6
    //   50: aload_1
    //   51: instanceof 225
    //   54: ifeq +41 -> 95
    //   57: aload_1
    //   58: checkcast 225	com/integralblue/httpresponsecache/compat/libcore/net/http/v
    //   61: invokestatic 228	com/integralblue/httpresponsecache/compat/libcore/net/http/v:a	(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;)Lcom/b/h;
    //   64: astore 7
    //   66: aload 7
    //   68: invokevirtual 231	com/b/h:a	()Lcom/b/a;
    //   71: astore 10
    //   73: aload 10
    //   75: astore 9
    //   77: aload 9
    //   79: ifnull +15 -> 94
    //   82: aload 6
    //   84: aload 9
    //   86: invokevirtual 233	com/integralblue/httpresponsecache/compat/libcore/net/http/u:a	(Lcom/b/a;)V
    //   89: aload 9
    //   91: invokevirtual 235	com/b/a:a	()V
    //   94: return
    //   95: aload_1
    //   96: checkcast 237	com/integralblue/httpresponsecache/compat/libcore/net/http/w
    //   99: invokestatic 240	com/integralblue/httpresponsecache/compat/libcore/net/http/w:a	(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;)Lcom/b/h;
    //   102: astore 7
    //   104: goto -38 -> 66
    //   107: astore 8
    //   109: aconst_null
    //   110: astore 9
    //   112: aload 9
    //   114: invokestatic 241	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	(Lcom/b/a;)V
    //   117: return
    //   118: astore 11
    //   120: goto -8 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   66	73	107	java/io/IOException
    //   82	94	118	java/io/IOException
  }

  public final com.b.c b()
  {
    return this.a;
  }

  public final CacheResponse get(URI paramURI, String paramString, Map<String, List<String>> paramMap)
  {
    String str = a(paramURI);
    try
    {
      h localh = this.a.a(str);
      if (localh == null)
        return null;
      u localu = new u(new BufferedInputStream(localh.a(0)));
      if (!localu.a(paramURI, paramString, paramMap))
      {
        localh.close();
        return null;
      }
      if (u.a(localu))
        return new w(localu, localh);
      return new v(localu, localh);
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  // ERROR //
  public final java.net.CacheRequest put(URI paramURI, java.net.URLConnection paramURLConnection)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 261
    //   4: ifne +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_2
    //   10: checkcast 261	java/net/HttpURLConnection
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 264	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   18: astore 4
    //   20: aload_0
    //   21: aload_1
    //   22: invokespecial 150	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	(Ljava/net/URI;)Ljava/lang/String;
    //   25: astore 5
    //   27: aload 4
    //   29: ldc_w 266
    //   32: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   35: ifne +25 -> 60
    //   38: aload 4
    //   40: ldc_w 268
    //   43: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   46: ifne +14 -> 60
    //   49: aload 4
    //   51: ldc_w 270
    //   54: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifeq +19 -> 76
    //   60: aload_0
    //   61: getfield 27	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	Lcom/b/c;
    //   64: aload 5
    //   66: invokevirtual 272	com/b/c:c	(Ljava/lang/String;)Z
    //   69: pop
    //   70: aconst_null
    //   71: areturn
    //   72: astore 6
    //   74: aconst_null
    //   75: areturn
    //   76: aload 4
    //   78: ldc_w 274
    //   81: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifeq -77 -> 7
    //   87: aload_3
    //   88: invokestatic 192	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    //   91: astore 8
    //   93: aload 8
    //   95: ifnull -88 -> 7
    //   98: aload 8
    //   100: invokevirtual 201	com/integralblue/httpresponsecache/compat/libcore/net/http/m:h	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;
    //   103: astore 9
    //   105: aload 9
    //   107: invokevirtual 277	com/integralblue/httpresponsecache/compat/libcore/net/http/G:h	()Z
    //   110: ifne -103 -> 7
    //   113: new 155	com/integralblue/httpresponsecache/compat/libcore/net/http/u
    //   116: dup
    //   117: aload_1
    //   118: aload 8
    //   120: invokevirtual 205	com/integralblue/httpresponsecache/compat/libcore/net/http/m:g	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;
    //   123: invokevirtual 210	com/integralblue/httpresponsecache/compat/libcore/net/http/E:c	()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   126: aload 9
    //   128: invokevirtual 215	com/integralblue/httpresponsecache/compat/libcore/net/http/G:f	()Ljava/util/Set;
    //   131: invokevirtual 218	com/integralblue/httpresponsecache/compat/libcore/net/http/C:a	(Ljava/util/Set;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    //   134: aload_3
    //   135: invokespecial 280	com/integralblue/httpresponsecache/compat/libcore/net/http/u:<init>	(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/net/HttpURLConnection;)V
    //   138: astore 10
    //   140: aload_0
    //   141: getfield 27	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	Lcom/b/c;
    //   144: aload 5
    //   146: invokevirtual 283	com/b/c:b	(Ljava/lang/String;)Lcom/b/a;
    //   149: astore 13
    //   151: aload 13
    //   153: ifnull -146 -> 7
    //   156: aload 10
    //   158: aload 13
    //   160: invokevirtual 233	com/integralblue/httpresponsecache/compat/libcore/net/http/u:a	(Lcom/b/a;)V
    //   163: new 285	com/integralblue/httpresponsecache/compat/libcore/net/http/s
    //   166: dup
    //   167: aload_0
    //   168: aload 13
    //   170: invokespecial 288	com/integralblue/httpresponsecache/compat/libcore/net/http/s:<init>	(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;Lcom/b/a;)V
    //   173: astore 15
    //   175: aload 15
    //   177: areturn
    //   178: astore 11
    //   180: aconst_null
    //   181: astore 12
    //   183: aload 12
    //   185: invokestatic 241	com/integralblue/httpresponsecache/compat/libcore/net/http/p:a	(Lcom/b/a;)V
    //   188: aconst_null
    //   189: areturn
    //   190: astore 14
    //   192: aload 13
    //   194: astore 12
    //   196: goto -13 -> 183
    //
    // Exception table:
    //   from	to	target	type
    //   60	70	72	java/io/IOException
    //   140	151	178	java/io/IOException
    //   156	175	190	java/io/IOException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.p
 * JD-Core Version:    0.6.0
 */