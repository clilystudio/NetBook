package com.xiaomi.kenai.jbosh;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import com.xiaomi.a.a.c.a;
import java.net.URI;
import java.net.URLEncoder;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

class k
{
  private final Lock a = new ReentrantLock();
  private final HttpContext b;
  private final HttpClient c;
  private HttpPost d;
  private long e;
  private boolean f;
  private aa g;
  private p h;
  private int i;

  k(HttpClient paramHttpClient, I paramI, p paramp, Context paramContext)
  {
    this.c = paramHttpClient;
    this.b = new BasicHttpContext();
    this.f = false;
    try
    {
      String str1 = paramp.d();
      this.e = Long.parseLong(paramp.a(E.m));
      String str2 = String.valueOf((int)(1000.0D * Math.random()));
      String str3 = URLEncoder.encode(android.support.v7.app.k.c("xm-http-bind&" + str1));
      if (a.a(paramContext))
      {
        String str4 = paramI.a().getHost();
        Uri.Builder localBuilder2 = Uri.parse(a.a(paramI.a().toURL())).buildUpon();
        localBuilder2.appendQueryParameter("t", str2);
        this.d = new HttpPost(localBuilder2.build().toString());
        this.d.addHeader("X-Online-Host", str4);
      }
      while (true)
      {
        this.d.addHeader("X-Content-Sig", str3);
        this.d.addHeader("Connection", "Keep-Alive");
        ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(c.a(str1.getBytes("UTF-8")));
        localByteArrayEntity.setContentType("application/octet-stream");
        this.d.setEntity(localByteArrayEntity);
        return;
        Uri.Builder localBuilder1 = Uri.parse(paramI.a().toString()).buildUpon();
        localBuilder1.appendQueryParameter("t", str2);
        this.d = new HttpPost(localBuilder1.build().toString());
      }
    }
    catch (Exception localException)
    {
      this.g = new aa("Could not generate request", localException);
    }
  }

  // ERROR //
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 81	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 202
    //   8: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 65	com/xiaomi/kenai/jbosh/k:e	J
    //   15: invokevirtual 205	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   18: ldc 207
    //   20: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_0
    //   24: getfield 153	com/xiaomi/kenai/jbosh/k:d	Lorg/apache/http/client/methods/HttpPost;
    //   27: invokevirtual 210	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   30: invokevirtual 191	java/net/URI:toString	()Ljava/lang/String;
    //   33: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokestatic 214	com/xiaomi/a/a/a/b:b	(Ljava/lang/String;)V
    //   42: iconst_0
    //   43: istore_2
    //   44: aconst_null
    //   45: astore_3
    //   46: iload_2
    //   47: iconst_3
    //   48: if_icmpge +220 -> 268
    //   51: aload_0
    //   52: getfield 36	com/xiaomi/kenai/jbosh/k:c	Lorg/apache/http/client/HttpClient;
    //   55: aload_0
    //   56: getfield 153	com/xiaomi/kenai/jbosh/k:d	Lorg/apache/http/client/methods/HttpPost;
    //   59: aload_0
    //   60: getfield 41	com/xiaomi/kenai/jbosh/k:b	Lorg/apache/http/protocol/HttpContext;
    //   63: invokeinterface 220 3 0
    //   68: astore 6
    //   70: aload 6
    //   72: invokeinterface 226 1 0
    //   77: invokestatic 232	org/apache/http/util/EntityUtils:toByteArray	(Lorg/apache/http/HttpEntity;)[B
    //   80: astore 7
    //   82: aload 6
    //   84: invokeinterface 236 1 0
    //   89: invokeinterface 242 1 0
    //   94: istore 8
    //   96: new 81	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 244
    //   102: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: iload 8
    //   107: invokevirtual 247	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   110: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 214	com/xiaomi/a/a/a/b:b	(Ljava/lang/String;)V
    //   116: iload 8
    //   118: sipush 200
    //   121: if_icmpne +216 -> 337
    //   124: aload 7
    //   126: ifnull +211 -> 337
    //   129: aload 6
    //   131: ldc 161
    //   133: invokeinterface 251 2 0
    //   138: ifeq +199 -> 337
    //   141: aload 7
    //   143: invokestatic 253	com/xiaomi/kenai/jbosh/c:b	([B)[B
    //   146: astore 9
    //   148: aload 6
    //   150: ldc 161
    //   152: invokeinterface 257 2 0
    //   157: invokeinterface 262 1 0
    //   162: invokestatic 267	java/net/URLDecoder:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   165: astore 10
    //   167: new 75	java/lang/String
    //   170: dup
    //   171: aload 9
    //   173: ldc 169
    //   175: invokespecial 270	java/lang/String:<init>	([BLjava/lang/String;)V
    //   178: invokestatic 275	com/xiaomi/kenai/jbosh/n:a	(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/n;
    //   181: astore 11
    //   183: new 81	java/lang/StringBuilder
    //   186: dup
    //   187: ldc 83
    //   189: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   192: aload 11
    //   194: invokevirtual 48	com/xiaomi/kenai/jbosh/p:d	()Ljava/lang/String;
    //   197: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: invokestatic 98	android/support/v7/app/k:c	(Ljava/lang/String;)Ljava/lang/String;
    //   206: astore 12
    //   208: aload 12
    //   210: aload 10
    //   212: invokevirtual 279	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   215: ifne +77 -> 292
    //   218: new 81	java/lang/StringBuilder
    //   221: dup
    //   222: ldc_w 281
    //   225: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   228: aload 10
    //   230: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: ldc_w 283
    //   236: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: aload 12
    //   241: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 285	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   250: aload_0
    //   251: new 193	com/xiaomi/kenai/jbosh/aa
    //   254: dup
    //   255: ldc_w 287
    //   258: invokespecial 288	com/xiaomi/kenai/jbosh/aa:<init>	(Ljava/lang/String;)V
    //   261: putfield 200	com/xiaomi/kenai/jbosh/k:g	Lcom/xiaomi/kenai/jbosh/aa;
    //   264: aload_0
    //   265: invokevirtual 290	com/xiaomi/kenai/jbosh/k:d	()V
    //   268: iload_2
    //   269: iconst_3
    //   270: if_icmpne +154 -> 424
    //   273: aload_0
    //   274: invokevirtual 290	com/xiaomi/kenai/jbosh/k:d	()V
    //   277: aload_0
    //   278: aload_3
    //   279: putfield 200	com/xiaomi/kenai/jbosh/k:g	Lcom/xiaomi/kenai/jbosh/aa;
    //   282: aload_0
    //   283: getfield 200	com/xiaomi/kenai/jbosh/k:g	Lcom/xiaomi/kenai/jbosh/aa;
    //   286: athrow
    //   287: astore_1
    //   288: aload_0
    //   289: monitorexit
    //   290: aload_1
    //   291: athrow
    //   292: aload_0
    //   293: aload 11
    //   295: putfield 292	com/xiaomi/kenai/jbosh/k:h	Lcom/xiaomi/kenai/jbosh/p;
    //   298: new 81	java/lang/StringBuilder
    //   301: dup
    //   302: ldc_w 294
    //   305: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: aload_0
    //   309: getfield 65	com/xiaomi/kenai/jbosh/k:e	J
    //   312: invokevirtual 205	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   315: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 214	com/xiaomi/a/a/a/b:b	(Ljava/lang/String;)V
    //   321: aload_0
    //   322: iload 8
    //   324: putfield 296	com/xiaomi/kenai/jbosh/k:i	I
    //   327: aload_0
    //   328: iconst_1
    //   329: putfield 43	com/xiaomi/kenai/jbosh/k:f	Z
    //   332: aconst_null
    //   333: astore_3
    //   334: goto -66 -> 268
    //   337: aload_0
    //   338: invokevirtual 290	com/xiaomi/kenai/jbosh/k:d	()V
    //   341: goto -73 -> 268
    //   344: astore 4
    //   346: aload 4
    //   348: instanceof 298
    //   351: ifeq +48 -> 399
    //   354: new 193	com/xiaomi/kenai/jbosh/aa
    //   357: dup
    //   358: ldc_w 300
    //   361: aload 4
    //   363: invokespecial 198	com/xiaomi/kenai/jbosh/aa:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   366: astore 5
    //   368: new 81	java/lang/StringBuilder
    //   371: dup
    //   372: ldc_w 302
    //   375: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   378: iload_2
    //   379: invokevirtual 247	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   382: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   385: aload 4
    //   387: invokestatic 304	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   390: iinc 2 1
    //   393: aload 5
    //   395: astore_3
    //   396: goto -350 -> 46
    //   399: aload_0
    //   400: invokevirtual 290	com/xiaomi/kenai/jbosh/k:d	()V
    //   403: aload_0
    //   404: new 193	com/xiaomi/kenai/jbosh/aa
    //   407: dup
    //   408: ldc_w 300
    //   411: aload 4
    //   413: invokespecial 198	com/xiaomi/kenai/jbosh/aa:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   416: putfield 200	com/xiaomi/kenai/jbosh/k:g	Lcom/xiaomi/kenai/jbosh/aa;
    //   419: aload_0
    //   420: getfield 200	com/xiaomi/kenai/jbosh/k:g	Lcom/xiaomi/kenai/jbosh/aa;
    //   423: athrow
    //   424: aload_0
    //   425: monitorexit
    //   426: return
    //
    // Exception table:
    //   from	to	target	type
    //   2	42	287	finally
    //   51	116	287	finally
    //   129	268	287	finally
    //   273	287	287	finally
    //   292	332	287	finally
    //   337	341	287	finally
    //   346	390	287	finally
    //   399	424	287	finally
    //   51	116	344	java/lang/Exception
    //   129	268	344	java/lang/Exception
    //   292	332	344	java/lang/Exception
    //   337	341	344	java/lang/Exception
  }

  public int a()
  {
    if (this.g != null)
      throw this.g;
    this.a.lock();
    try
    {
      if (!this.f)
        e();
      return this.i;
    }
    finally
    {
      this.a.unlock();
    }
    throw localObject;
  }

  public p b()
  {
    if (this.g != null)
      throw this.g;
    this.a.lock();
    try
    {
      if (!this.f)
        e();
      return this.h;
    }
    finally
    {
      this.a.unlock();
    }
    throw localObject;
  }

  public long c()
  {
    return this.e;
  }

  public void d()
  {
    if (this.d != null)
    {
      this.d.abort();
      this.g = new aa("HTTP request aborted");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.k
 * JD-Core Version:    0.6.0
 */