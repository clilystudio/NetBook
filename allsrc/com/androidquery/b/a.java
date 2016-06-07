package com.androidquery.b;

import TT;;
import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.support.design.widget.K;
import com.androidquery.util.d;
import com.androidquery.util.f;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.xmlpull.v1.XmlPullParser;

public abstract class a<T, K>
  implements Runnable
{
  private static final Class<?>[] C;
  private static ExecutorService E;
  private static DefaultHttpClient F;
  private static int G;
  private static int c = 30000;
  private static String d = null;
  private static int e = 4;
  private static boolean f = true;
  private static boolean g = true;
  private static boolean h = false;
  private int A = 0;
  private HttpHost B;
  private boolean D;
  protected c a;
  protected boolean b;
  private Class<T> i;
  private Reference<Object> j;
  private Object k;
  private WeakReference<Object> l;
  private String m;
  private String n;
  private K o;
  private T p;
  private int q = 0;
  private File r;
  private com.androidquery.a.a s;
  private boolean t;
  private int u = 0;
  private boolean v = true;
  private String w = "UTF-8";
  private WeakReference<Activity> x;
  private int y = 4;
  private boolean z = true;

  static
  {
    C = new Class[] { String.class, Object.class, c.class };
    G = 200;
  }

  private static String a(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null);
    Header localHeader;
    do
    {
      return null;
      localHeader = paramHttpEntity.getContentEncoding();
    }
    while (localHeader == null);
    return localHeader.getValue();
  }

  private String a(byte[] paramArrayOfByte, String paramString, c paramc)
  {
    String str3;
    while (true)
    {
      Object localObject2;
      try
      {
        if (!"utf-8".equalsIgnoreCase(paramString))
          return new String(paramArrayOfByte, paramString);
        String str1 = d(paramc.b("Content-Type"));
        com.androidquery.util.a.b("parsing header", str1);
        if (str1 != null)
        {
          String str2 = new String(paramArrayOfByte, str1);
          return str2;
        }
      }
      catch (Exception localException1)
      {
        Exception localException2 = localException1;
        localObject2 = null;
        com.androidquery.util.a.b(localException2);
        return localObject2;
      }
      str3 = new String(paramArrayOfByte, "utf-8");
      try
      {
        Matcher localMatcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str3);
        boolean bool = localMatcher.find();
        Object localObject3 = null;
        if (!bool);
        while (true)
        {
          com.androidquery.util.a.b("parsing needed", localObject3);
          if ((localObject3 == null) || ("utf-8".equalsIgnoreCase(localObject3)))
            break label205;
          com.androidquery.util.a.b("correction needed", localObject3);
          localObject2 = new String(paramArrayOfByte, localObject3);
          try
          {
            paramc.a(((String)localObject2).getBytes("utf-8"));
            return localObject2;
          }
          catch (Exception localException3)
          {
          }
          break;
          String str4 = d(localMatcher.group());
          localObject3 = str4;
        }
      }
      catch (Exception localException4)
      {
        localObject2 = str3;
        Object localObject1 = localException4;
      }
    }
    label205: return (String)str3;
  }

  private static Map<String, Object> a(Uri paramUri)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramUri.getQuery().split("&");
    int i1 = arrayOfString1.length;
    int i2 = 0;
    if (i2 >= i1)
      return localHashMap;
    String[] arrayOfString2 = arrayOfString1[i2].split("=");
    if (arrayOfString2.length >= 2)
      localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
    while (true)
    {
      i2++;
      break;
      if (arrayOfString2.length != 1)
        continue;
      localHashMap.put(arrayOfString2[0], "");
    }
  }

  private static HttpResponse a(HttpUriRequest paramHttpUriRequest, DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext)
  {
    if (paramHttpUriRequest.getURI().getAuthority().contains("_"))
    {
      URL localURL = paramHttpUriRequest.getURI().toURL();
      if (localURL.getPort() == -1);
      for (HttpHost localHttpHost = new HttpHost(localURL.getHost(), 80, localURL.getProtocol()); ; localHttpHost = new HttpHost(localURL.getHost(), localURL.getPort(), localURL.getProtocol()))
        return paramDefaultHttpClient.execute(localHttpHost, paramHttpUriRequest, paramHttpContext);
    }
    return paramDefaultHttpClient.execute(paramHttpUriRequest, paramHttpContext);
  }

  private static void a(DataOutputStream paramDataOutputStream, String paramString1, String paramString2, InputStream paramInputStream)
  {
    paramDataOutputStream.writeBytes("--*****\r\n");
    paramDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n");
    paramDataOutputStream.writeBytes("Content-Type: application/octet-stream");
    paramDataOutputStream.writeBytes("\r\n");
    paramDataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
    paramDataOutputStream.writeBytes("\r\n");
    paramDataOutputStream.writeBytes("\r\n");
    com.androidquery.util.a.a(paramInputStream, paramDataOutputStream);
    paramDataOutputStream.writeBytes("\r\n");
  }

  private void a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
  {
    if (this.l != null);
    for (Object localObject = this.l.get(); ; localObject = null)
    {
      d locald = null;
      if (localObject != null)
        locald = new d(localObject);
      com.androidquery.util.a.a(paramInputStream, paramOutputStream, paramInt, locald);
      return;
    }
  }

  private void a(String paramString, Map<String, Object> paramMap, c paramc)
  {
    com.androidquery.util.a.b("multipart", paramString);
    URL localURL = new URL(paramString);
    if (this.B != null)
      com.androidquery.util.a.b("proxy", this.B);
    for (Proxy localProxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.B.getHostName(), this.B.getPort())); ; localProxy = null)
    {
      HttpURLConnection localHttpURLConnection;
      DataOutputStream localDataOutputStream;
      Iterator localIterator;
      label185: int i1;
      String str3;
      String str4;
      if (localProxy == null)
      {
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
        localHttpURLConnection.setInstanceFollowRedirects(false);
        localHttpURLConnection.setConnectTimeout(c << 2);
        localHttpURLConnection.setDoInput(true);
        localHttpURLConnection.setDoOutput(true);
        localHttpURLConnection.setUseCaches(false);
        localHttpURLConnection.setRequestMethod("POST");
        localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;charset=utf-8;boundary=*****");
        if (0 != 0)
          localHttpURLConnection.setRequestProperty("Cookie", null);
        localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
        localIterator = paramMap.entrySet().iterator();
        if (localIterator.hasNext())
          break label354;
        localDataOutputStream.writeBytes("--*****--\r\n");
        localDataOutputStream.flush();
        localDataOutputStream.close();
        localHttpURLConnection.connect();
        i1 = localHttpURLConnection.getResponseCode();
        str3 = localHttpURLConnection.getResponseMessage();
        str4 = localHttpURLConnection.getContentEncoding();
        if ((i1 >= 200) && (i1 < 300))
          break label571;
        com.androidquery.util.a.b("error", new String(a(str4, localHttpURLConnection.getErrorStream()), "UTF-8"));
      }
      label571: for (byte[] arrayOfByte = null; ; arrayOfByte = a(str4, localHttpURLConnection.getInputStream()))
      {
        com.androidquery.util.a.b("response", Integer.valueOf(i1));
        if (arrayOfByte != null)
          com.androidquery.util.a.b(Integer.valueOf(arrayOfByte.length), paramString);
        c localc = paramc.b(i1).a(str3);
        new Date();
        localc.a(arrayOfByte);
        return;
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection(localProxy);
        break;
        label354: Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str1 = (String)localEntry.getKey();
        Object localObject = localEntry.getValue();
        if (localObject == null)
          break label185;
        if ((localObject instanceof File))
        {
          File localFile = (File)localObject;
          a(localDataOutputStream, str1, localFile.getName(), new FileInputStream(localFile));
          break label185;
        }
        if ((localObject instanceof byte[]))
        {
          a(localDataOutputStream, str1, str1, new ByteArrayInputStream((byte[])localObject));
          break label185;
        }
        if ((localObject instanceof InputStream))
        {
          a(localDataOutputStream, str1, str1, (InputStream)localObject);
          break label185;
        }
        String str2 = localObject.toString();
        localDataOutputStream.writeBytes("--*****\r\n");
        localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str1 + "\"");
        localDataOutputStream.writeBytes("\r\n");
        localDataOutputStream.writeBytes("\r\n");
        localDataOutputStream.write(str2.getBytes("UTF-8"));
        localDataOutputStream.writeBytes("\r\n");
        break label185;
      }
    }
  }

  private void a(String paramString, HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, Map<String, Object> paramMap, c paramc)
  {
    paramHttpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
    Object localObject1 = paramMap.get("%entity");
    Object localObject2;
    if ((localObject1 instanceof HttpEntity))
    {
      localObject2 = (HttpEntity)localObject1;
      paramHttpEntityEnclosingRequestBase.setEntity((HttpEntity)localObject2);
      a(paramHttpEntityEnclosingRequestBase, paramString, paramc);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localObject2 = new UrlEncodedFormEntity(localArrayList, "UTF-8");
        break;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject3 = localEntry.getValue();
      if (localObject3 == null)
        continue;
      localArrayList.add(new BasicNameValuePair((String)localEntry.getKey(), localObject3.toString()));
    }
  }

  // ERROR //
  private void a(HttpUriRequest paramHttpUriRequest, String paramString, c paramc)
  {
    // Byte code:
    //   0: getstatic 535	com/androidquery/b/a:F	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   3: ifnull +9 -> 12
    //   6: getstatic 73	com/androidquery/b/a:g	Z
    //   9: ifne +131 -> 140
    //   12: ldc_w 537
    //   15: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   18: new 541	org/apache/http/params/BasicHttpParams
    //   21: dup
    //   22: invokespecial 542	org/apache/http/params/BasicHttpParams:<init>	()V
    //   25: astore 4
    //   27: aload 4
    //   29: getstatic 65	com/androidquery/b/a:c	I
    //   32: invokestatic 548	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   35: aload 4
    //   37: getstatic 65	com/androidquery/b/a:c	I
    //   40: invokestatic 551	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   43: aload 4
    //   45: new 553	org/apache/http/conn/params/ConnPerRouteBean
    //   48: dup
    //   49: bipush 25
    //   51: invokespecial 555	org/apache/http/conn/params/ConnPerRouteBean:<init>	(I)V
    //   54: invokestatic 561	org/apache/http/conn/params/ConnManagerParams:setMaxConnectionsPerRoute	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
    //   57: aload 4
    //   59: sipush 8192
    //   62: invokestatic 564	org/apache/http/params/HttpConnectionParams:setSocketBufferSize	(Lorg/apache/http/params/HttpParams;I)V
    //   65: new 566	org/apache/http/conn/scheme/SchemeRegistry
    //   68: dup
    //   69: invokespecial 567	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   72: astore 5
    //   74: aload 5
    //   76: new 569	org/apache/http/conn/scheme/Scheme
    //   79: dup
    //   80: ldc_w 571
    //   83: invokestatic 577	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   86: bipush 80
    //   88: invokespecial 580	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   91: invokevirtual 584	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   94: pop
    //   95: aload 5
    //   97: new 569	org/apache/http/conn/scheme/Scheme
    //   100: dup
    //   101: ldc_w 586
    //   104: invokestatic 591	org/apache/http/conn/ssl/SSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   107: sipush 443
    //   110: invokespecial 580	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   113: invokevirtual 584	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   116: pop
    //   117: new 247	org/apache/http/impl/client/DefaultHttpClient
    //   120: dup
    //   121: new 593	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   124: dup
    //   125: aload 4
    //   127: aload 5
    //   129: invokespecial 596	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   132: aload 4
    //   134: invokespecial 599	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   137: putstatic 535	com/androidquery/b/a:F	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   140: getstatic 535	com/androidquery/b/a:F	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   143: astore 8
    //   145: getstatic 71	com/androidquery/b/a:f	Z
    //   148: ifeq +15 -> 163
    //   151: aload_1
    //   152: ldc_w 601
    //   155: ldc_w 603
    //   158: invokeinterface 606 3 0
    //   163: getstatic 71	com/androidquery/b/a:f	Z
    //   166: ifeq +15 -> 181
    //   169: aload_1
    //   170: ldc_w 608
    //   173: ldc_w 603
    //   176: invokeinterface 606 3 0
    //   181: iconst_0
    //   182: ifeq +13 -> 195
    //   185: aload_1
    //   186: ldc_w 374
    //   189: aconst_null
    //   190: invokeinterface 606 3 0
    //   195: aload_1
    //   196: invokeinterface 609 1 0
    //   201: astore 9
    //   203: aload_0
    //   204: getfield 312	com/androidquery/b/a:B	Lorg/apache/http/HttpHost;
    //   207: ifnull +18 -> 225
    //   210: aload 9
    //   212: ldc_w 611
    //   215: aload_0
    //   216: getfield 312	com/androidquery/b/a:B	Lorg/apache/http/HttpHost;
    //   219: invokeinterface 615 3 0
    //   224: pop
    //   225: aload_0
    //   226: getfield 94	com/androidquery/b/a:v	Z
    //   229: ifne +15 -> 244
    //   232: aload 9
    //   234: ldc_w 617
    //   237: iconst_0
    //   238: invokeinterface 499 3 0
    //   243: pop
    //   244: new 619	org/apache/http/protocol/BasicHttpContext
    //   247: dup
    //   248: invokespecial 620	org/apache/http/protocol/BasicHttpContext:<init>	()V
    //   251: astore 10
    //   253: aload 10
    //   255: ldc_w 622
    //   258: new 624	org/apache/http/impl/client/BasicCookieStore
    //   261: dup
    //   262: invokespecial 625	org/apache/http/impl/client/BasicCookieStore:<init>	()V
    //   265: invokeinterface 631 3 0
    //   270: aload_1
    //   271: aload 8
    //   273: aload 10
    //   275: invokestatic 633	com/androidquery/b/a:a	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   278: astore 56
    //   280: aload 56
    //   282: astore 13
    //   284: aconst_null
    //   285: astore 14
    //   287: aload 13
    //   289: invokeinterface 639 1 0
    //   294: invokeinterface 644 1 0
    //   299: istore 15
    //   301: aload 13
    //   303: invokeinterface 639 1 0
    //   308: invokeinterface 647 1 0
    //   313: astore 16
    //   315: aload 13
    //   317: invokeinterface 651 1 0
    //   322: astore 17
    //   324: aconst_null
    //   325: astore 18
    //   327: iload 15
    //   329: sipush 200
    //   332: if_icmplt +11 -> 343
    //   335: iload 15
    //   337: sipush 300
    //   340: if_icmplt +216 -> 556
    //   343: aconst_null
    //   344: astore 19
    //   346: aload 17
    //   348: ifnull +41 -> 389
    //   351: aload 17
    //   353: invokeinterface 654 1 0
    //   358: astore 29
    //   360: aload 29
    //   362: astore 19
    //   364: ldc_w 417
    //   367: new 79	java/lang/String
    //   370: dup
    //   371: aload 17
    //   373: invokestatic 656	com/androidquery/b/a:a	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   376: aload 19
    //   378: invokestatic 424	com/androidquery/b/a:a	(Ljava/lang/String;Ljava/io/InputStream;)[B
    //   381: ldc 96
    //   383: invokespecial 132	java/lang/String:<init>	([BLjava/lang/String;)V
    //   386: invokestatic 146	com/androidquery/util/a:b	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   389: aload 19
    //   391: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   394: aconst_null
    //   395: astore 20
    //   397: ldc_w 426
    //   400: iload 15
    //   402: invokestatic 432	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   405: invokestatic 146	com/androidquery/util/a:b	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   408: aload 14
    //   410: ifnull +13 -> 423
    //   413: aload 14
    //   415: arraylength
    //   416: invokestatic 432	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   419: aload_2
    //   420: invokestatic 146	com/androidquery/util/a:b	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   423: aload_3
    //   424: iload 15
    //   426: invokevirtual 435	com/androidquery/b/c:b	(I)Lcom/androidquery/b/c;
    //   429: aload 16
    //   431: invokevirtual 438	com/androidquery/b/c:a	(Ljava/lang/String;)Lcom/androidquery/b/c;
    //   434: astore 21
    //   436: new 440	java/util/Date
    //   439: dup
    //   440: invokespecial 441	java/util/Date:<init>	()V
    //   443: pop
    //   444: aload 21
    //   446: aload 14
    //   448: invokevirtual 178	com/androidquery/b/c:a	([B)Lcom/androidquery/b/c;
    //   451: aload 20
    //   453: invokevirtual 662	com/androidquery/b/c:a	(Ljava/io/File;)Lcom/androidquery/b/c;
    //   456: aload 13
    //   458: invokeinterface 666 1 0
    //   463: invokevirtual 669	com/androidquery/b/c:a	([Lorg/apache/http/Header;)Lcom/androidquery/b/c;
    //   466: pop
    //   467: return
    //   468: astore 11
    //   470: aload_0
    //   471: getfield 312	com/androidquery/b/a:B	Lorg/apache/http/HttpHost;
    //   474: ifnull +34 -> 508
    //   477: ldc_w 671
    //   480: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   483: aload 9
    //   485: ldc_w 611
    //   488: aconst_null
    //   489: invokeinterface 615 3 0
    //   494: pop
    //   495: aload_1
    //   496: aload 8
    //   498: aload 10
    //   500: invokestatic 633	com/androidquery/b/a:a	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   503: astore 13
    //   505: goto -221 -> 284
    //   508: aload 11
    //   510: athrow
    //   511: astore 27
    //   513: aconst_null
    //   514: astore 25
    //   516: aload 27
    //   518: astore 28
    //   520: aload 28
    //   522: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   525: aload 25
    //   527: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   530: aconst_null
    //   531: astore 20
    //   533: aconst_null
    //   534: astore 14
    //   536: goto -139 -> 397
    //   539: astore 24
    //   541: aconst_null
    //   542: astore 25
    //   544: aload 24
    //   546: astore 26
    //   548: aload 25
    //   550: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   553: aload 26
    //   555: athrow
    //   556: aload 10
    //   558: ldc_w 675
    //   561: invokeinterface 679 2 0
    //   566: checkcast 236	org/apache/http/HttpHost
    //   569: astore 32
    //   571: aload 10
    //   573: ldc_w 681
    //   576: invokeinterface 679 2 0
    //   581: checkcast 209	org/apache/http/client/methods/HttpUriRequest
    //   584: astore 33
    //   586: new 265	java/lang/StringBuilder
    //   589: dup
    //   590: aload 32
    //   592: invokevirtual 684	org/apache/http/HttpHost:toURI	()Ljava/lang/String;
    //   595: invokestatic 687	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   598: invokespecial 269	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   601: aload 33
    //   603: invokeinterface 213 1 0
    //   608: invokevirtual 690	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   611: invokevirtual 280	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   614: pop
    //   615: bipush 32
    //   617: ldc_w 691
    //   620: aload 17
    //   622: invokeinterface 695 1 0
    //   627: l2i
    //   628: invokestatic 701	java/lang/Math:min	(II)I
    //   631: invokestatic 704	java/lang/Math:max	(II)I
    //   634: istore 35
    //   636: aload_0
    //   637: invokespecial 707	com/androidquery/b/a:h	()Ljava/io/File;
    //   640: astore 39
    //   642: aload 39
    //   644: ifnonnull +125 -> 769
    //   647: new 709	com/androidquery/util/c
    //   650: dup
    //   651: iload 35
    //   653: invokespecial 710	com/androidquery/util/c:<init>	(I)V
    //   656: astore 40
    //   658: aload 40
    //   660: astore 41
    //   662: aload 17
    //   664: invokeinterface 654 1 0
    //   669: astore 42
    //   671: aload 42
    //   673: astore 43
    //   675: ldc_w 603
    //   678: aload 17
    //   680: invokestatic 656	com/androidquery/b/a:a	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   683: invokevirtual 129	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   686: ifeq +18 -> 704
    //   689: new 712	java/util/zip/GZIPInputStream
    //   692: dup
    //   693: aload 43
    //   695: invokespecial 715	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   698: astore 44
    //   700: aload 44
    //   702: astore 43
    //   704: aload 17
    //   706: invokeinterface 695 1 0
    //   711: l2i
    //   712: istore 45
    //   714: aload 39
    //   716: ifnonnull +117 -> 833
    //   719: aload_0
    //   720: aload 43
    //   722: aload 41
    //   724: iload 45
    //   726: invokespecial 717	com/androidquery/b/a:a	(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    //   729: aload 39
    //   731: ifnonnull +189 -> 920
    //   734: aload 41
    //   736: checkcast 709	com/androidquery/util/c
    //   739: invokevirtual 721	com/androidquery/util/c:toByteArray	()[B
    //   742: astore 46
    //   744: aload 46
    //   746: astore 47
    //   748: aload 39
    //   750: astore 20
    //   752: aload 43
    //   754: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   757: aload 41
    //   759: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   762: aload 47
    //   764: astore 14
    //   766: goto -369 -> 397
    //   769: new 456	java/io/File
    //   772: dup
    //   773: new 265	java/lang/StringBuilder
    //   776: dup
    //   777: aload 39
    //   779: invokevirtual 724	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   782: invokestatic 687	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   785: invokespecial 269	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   788: ldc_w 726
    //   791: invokevirtual 273	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   794: invokevirtual 280	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   797: invokespecial 727	java/io/File:<init>	(Ljava/lang/String;)V
    //   800: astore 18
    //   802: aload 18
    //   804: invokevirtual 730	java/io/File:createNewFile	()Z
    //   807: pop
    //   808: new 732	java/io/BufferedOutputStream
    //   811: dup
    //   812: new 734	java/io/FileOutputStream
    //   815: dup
    //   816: aload 18
    //   818: invokespecial 735	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   821: invokespecial 736	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   824: astore 55
    //   826: aload 55
    //   828: astore 41
    //   830: goto -168 -> 662
    //   833: aload_0
    //   834: aload 43
    //   836: aload 41
    //   838: iload 45
    //   840: invokespecial 717	com/androidquery/b/a:a	(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    //   843: aload 43
    //   845: invokevirtual 737	java/io/InputStream:close	()V
    //   848: aload 41
    //   850: invokevirtual 740	java/io/OutputStream:close	()V
    //   853: aload 18
    //   855: aload 39
    //   857: invokevirtual 744	java/io/File:renameTo	(Ljava/io/File;)Z
    //   860: pop
    //   861: goto -132 -> 729
    //   864: astore 50
    //   866: ldc_w 746
    //   869: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   872: aload 18
    //   874: invokevirtual 749	java/io/File:delete	()Z
    //   877: pop
    //   878: aload 39
    //   880: invokevirtual 749	java/io/File:delete	()Z
    //   883: pop
    //   884: aload 43
    //   886: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   889: aload 41
    //   891: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   894: aload 50
    //   896: athrow
    //   897: astore 36
    //   899: aload 41
    //   901: astore 38
    //   903: aload 43
    //   905: astore 37
    //   907: aload 37
    //   909: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   912: aload 38
    //   914: invokestatic 659	com/androidquery/util/a:a	(Ljava/io/Closeable;)V
    //   917: aload 36
    //   919: athrow
    //   920: aload 39
    //   922: invokevirtual 752	java/io/File:exists	()Z
    //   925: ifeq +17 -> 942
    //   928: aload 39
    //   930: invokevirtual 755	java/io/File:length	()J
    //   933: lstore 48
    //   935: lload 48
    //   937: lconst_0
    //   938: lcmp
    //   939: ifne +79 -> 1018
    //   942: aconst_null
    //   943: astore 20
    //   945: aconst_null
    //   946: astore 47
    //   948: goto -196 -> 752
    //   951: astore 36
    //   953: aconst_null
    //   954: astore 37
    //   956: aconst_null
    //   957: astore 38
    //   959: goto -52 -> 907
    //   962: astore 36
    //   964: aload 41
    //   966: astore 38
    //   968: aconst_null
    //   969: astore 37
    //   971: goto -64 -> 907
    //   974: astore 36
    //   976: aload 41
    //   978: astore 38
    //   980: aload 43
    //   982: astore 37
    //   984: goto -77 -> 907
    //   987: astore 31
    //   989: aload 19
    //   991: astore 25
    //   993: aload 31
    //   995: astore 26
    //   997: goto -449 -> 548
    //   1000: astore 26
    //   1002: goto -454 -> 548
    //   1005: astore 30
    //   1007: aload 19
    //   1009: astore 25
    //   1011: aload 30
    //   1013: astore 28
    //   1015: goto -495 -> 520
    //   1018: aload 39
    //   1020: astore 20
    //   1022: aconst_null
    //   1023: astore 47
    //   1025: goto -273 -> 752
    //
    // Exception table:
    //   from	to	target	type
    //   270	280	468	org/apache/http/conn/HttpHostConnectException
    //   351	360	511	java/lang/Exception
    //   351	360	539	finally
    //   833	861	864	java/io/IOException
    //   704	714	897	finally
    //   719	729	897	finally
    //   734	744	897	finally
    //   833	861	897	finally
    //   866	897	897	finally
    //   920	935	897	finally
    //   636	642	951	finally
    //   647	658	951	finally
    //   769	826	951	finally
    //   662	671	962	finally
    //   675	700	974	finally
    //   364	389	987	finally
    //   520	525	1000	finally
    //   364	389	1005	java/lang/Exception
  }

  private static boolean a(Map<String, Object> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    Object localObject;
    do
    {
      if (!localIterator.hasNext())
        return false;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localObject = localEntry.getValue();
      com.androidquery.util.a.b(localEntry.getKey(), localObject);
    }
    while ((!(localObject instanceof File)) && (!(localObject instanceof byte[])) && (!(localObject instanceof InputStream)));
    return true;
  }

  private static byte[] a(String paramString, InputStream paramInputStream)
  {
    if ("gzip".equalsIgnoreCase(paramString))
      paramInputStream = new GZIPInputStream(paramInputStream);
    return com.androidquery.util.a.a(paramInputStream);
  }

  protected static int c()
  {
    return G;
  }

  private static String d(String paramString)
  {
    if (paramString == null);
    int i1;
    do
    {
      return null;
      i1 = paramString.indexOf("charset");
    }
    while (i1 == -1);
    int i2 = paramString.indexOf(";", i1);
    if (i2 == -1)
      i2 = paramString.length();
    return paramString.substring(i1 + 7, i2).replaceAll("[^\\w-]", "");
  }

  // ERROR //
  private void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual 784	com/androidquery/b/a:c	(Z)V
    //   5: aload_0
    //   6: getfield 786	com/androidquery/b/a:x	Ljava/lang/ref/WeakReference;
    //   9: ifnull +130 -> 139
    //   12: aload_0
    //   13: getfield 786	com/androidquery/b/a:x	Ljava/lang/ref/WeakReference;
    //   16: invokevirtual 298	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   19: checkcast 788	android/app/Activity
    //   22: astore 10
    //   24: aload 10
    //   26: ifnull +11 -> 37
    //   29: aload 10
    //   31: invokevirtual 791	android/app/Activity:isFinishing	()Z
    //   34: ifeq +105 -> 139
    //   37: iconst_0
    //   38: istore_1
    //   39: iload_1
    //   40: ifeq +114 -> 154
    //   43: aload_0
    //   44: aload_0
    //   45: getfield 107	com/androidquery/b/a:m	Ljava/lang/String;
    //   48: aload_0
    //   49: getfield 793	com/androidquery/b/a:p	Ljava/lang/Object;
    //   52: aload_0
    //   53: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   56: invokevirtual 798	com/androidquery/b/a:a	(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    //   59: aload_0
    //   60: getfield 793	com/androidquery/b/a:p	Ljava/lang/Object;
    //   63: ifnull +131 -> 194
    //   66: aload_0
    //   67: getfield 800	com/androidquery/b/a:t	Z
    //   70: ifeq +124 -> 194
    //   73: aload_0
    //   74: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   77: invokevirtual 802	com/androidquery/b/c:h	()[B
    //   80: astore 4
    //   82: aload 4
    //   84: ifnull +35 -> 119
    //   87: aload_0
    //   88: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   91: invokevirtual 804	com/androidquery/b/c:j	()I
    //   94: iconst_1
    //   95: if_icmpne +24 -> 119
    //   98: aload_0
    //   99: invokespecial 806	com/androidquery/b/a:g	()Ljava/io/File;
    //   102: astore 7
    //   104: aload_0
    //   105: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   108: pop
    //   109: aload 7
    //   111: ifnull +8 -> 119
    //   114: aload 4
    //   116: ifnonnull +57 -> 173
    //   119: aload_0
    //   120: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   123: aconst_null
    //   124: invokevirtual 178	com/androidquery/b/c:a	([B)Lcom/androidquery/b/c;
    //   127: pop
    //   128: aload_0
    //   129: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   132: invokevirtual 808	com/androidquery/b/c:c	()V
    //   135: invokestatic 810	com/androidquery/util/a:a	()V
    //   138: return
    //   139: iconst_1
    //   140: istore_1
    //   141: goto -102 -> 39
    //   144: astore 9
    //   146: aload 9
    //   148: invokestatic 149	com/androidquery/util/a:b	(Ljava/lang/Throwable;)V
    //   151: goto -92 -> 59
    //   154: aload_0
    //   155: aload_0
    //   156: getfield 107	com/androidquery/b/a:m	Ljava/lang/String;
    //   159: aload_0
    //   160: getfield 793	com/androidquery/b/a:p	Ljava/lang/Object;
    //   163: aload_0
    //   164: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   167: invokevirtual 812	com/androidquery/b/a:b	(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    //   170: goto -111 -> 59
    //   173: aload 7
    //   175: aload 4
    //   177: lconst_0
    //   178: invokestatic 815	com/androidquery/util/a:a	(Ljava/io/File;[BJ)V
    //   181: goto -62 -> 119
    //   184: astore 6
    //   186: aload 6
    //   188: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   191: goto -72 -> 119
    //   194: aload_0
    //   195: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   198: invokevirtual 817	com/androidquery/b/c:f	()I
    //   201: bipush 153
    //   203: if_icmpne -75 -> 128
    //   206: aload_0
    //   207: invokespecial 806	com/androidquery/b/a:g	()Ljava/io/File;
    //   210: astore_2
    //   211: aload_2
    //   212: invokevirtual 752	java/io/File:exists	()Z
    //   215: ifeq -87 -> 128
    //   218: aload_2
    //   219: invokevirtual 749	java/io/File:delete	()Z
    //   222: pop
    //   223: ldc_w 819
    //   226: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   229: goto -101 -> 128
    //
    // Exception table:
    //   from	to	target	type
    //   43	59	144	java/lang/Exception
    //   87	109	184	java/lang/Exception
    //   173	181	184	java/lang/Exception
  }

  private String e()
  {
    if (this.s != null)
      return this.m;
    return this.m;
  }

  private static String e(String paramString)
  {
    return paramString.replaceAll(" ", "%20").replaceAll("\\|", "%7C");
  }

  // ERROR //
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 107	com/androidquery/b/a:m	Ljava/lang/String;
    //   4: ifnonnull +17 -> 21
    //   7: aload_0
    //   8: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   11: bipush 155
    //   13: invokevirtual 435	com/androidquery/b/c:b	(I)Lcom/androidquery/b/c;
    //   16: invokevirtual 832	com/androidquery/b/c:a	()Lcom/androidquery/b/c;
    //   19: pop
    //   20: return
    //   21: aload_0
    //   22: invokespecial 834	com/androidquery/b/a:i	()V
    //   25: aload_0
    //   26: getfield 821	com/androidquery/b/a:s	Lcom/androidquery/a/a;
    //   29: ifnull +52 -> 81
    //   32: aload_0
    //   33: getfield 821	com/androidquery/b/a:s	Lcom/androidquery/a/a;
    //   36: invokevirtual 838	com/androidquery/a/a:b	()Z
    //   39: ifeq +42 -> 81
    //   42: aload_0
    //   43: getfield 840	com/androidquery/b/a:D	Z
    //   46: ifne +35 -> 81
    //   49: ldc_w 842
    //   52: aload_0
    //   53: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   56: invokevirtual 844	com/androidquery/b/c:g	()Ljava/lang/String;
    //   59: invokestatic 146	com/androidquery/util/a:b	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   62: aload_0
    //   63: iconst_1
    //   64: putfield 840	com/androidquery/b/a:D	Z
    //   67: aload_0
    //   68: getfield 821	com/androidquery/b/a:s	Lcom/androidquery/a/a;
    //   71: invokevirtual 846	com/androidquery/a/a:c	()Z
    //   74: ifeq +82 -> 156
    //   77: aload_0
    //   78: invokespecial 834	com/androidquery/b/a:i	()V
    //   81: aload_0
    //   82: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   85: invokevirtual 802	com/androidquery/b/c:h	()[B
    //   88: astore 11
    //   90: aload 11
    //   92: astore_3
    //   93: aload_0
    //   94: aload_0
    //   95: aload_0
    //   96: getfield 107	com/androidquery/b/a:m	Ljava/lang/String;
    //   99: aload_3
    //   100: aload_0
    //   101: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   104: invokevirtual 849	com/androidquery/b/a:a	(Ljava/lang/String;[BLcom/androidquery/b/c;)Ljava/lang/Object;
    //   107: putfield 793	com/androidquery/b/a:p	Ljava/lang/Object;
    //   110: aload_0
    //   111: getfield 793	com/androidquery/b/a:p	Ljava/lang/Object;
    //   114: ifnonnull +23 -> 137
    //   117: aload_3
    //   118: ifnull +19 -> 137
    //   121: aload_0
    //   122: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   125: bipush 153
    //   127: invokevirtual 435	com/androidquery/b/c:b	(I)Lcom/androidquery/b/c;
    //   130: ldc_w 851
    //   133: invokevirtual 438	com/androidquery/b/c:a	(Ljava/lang/String;)Lcom/androidquery/b/c;
    //   136: pop
    //   137: aload_0
    //   138: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   141: invokevirtual 817	com/androidquery/b/c:f	()I
    //   144: putstatic 85	com/androidquery/b/a:G	I
    //   147: aload_0
    //   148: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   151: invokevirtual 832	com/androidquery/b/c:a	()Lcom/androidquery/b/c;
    //   154: pop
    //   155: return
    //   156: aload_0
    //   157: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   160: iconst_1
    //   161: invokevirtual 854	com/androidquery/b/c:a	(Z)Lcom/androidquery/b/c;
    //   164: pop
    //   165: return
    //   166: astore 7
    //   168: ldc_w 856
    //   171: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   174: aload 7
    //   176: invokevirtual 859	java/io/IOException:getMessage	()Ljava/lang/String;
    //   179: astore 8
    //   181: aload 8
    //   183: ifnull +35 -> 218
    //   186: aload 8
    //   188: ldc_w 861
    //   191: invokevirtual 224	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   194: ifeq +24 -> 218
    //   197: aload_0
    //   198: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   201: sipush 401
    //   204: invokevirtual 435	com/androidquery/b/c:b	(I)Lcom/androidquery/b/c;
    //   207: aload 8
    //   209: invokevirtual 438	com/androidquery/b/c:a	(Ljava/lang/String;)Lcom/androidquery/b/c;
    //   212: pop
    //   213: aconst_null
    //   214: astore_3
    //   215: goto -122 -> 93
    //   218: aload_0
    //   219: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   222: bipush 155
    //   224: invokevirtual 435	com/androidquery/b/c:b	(I)Lcom/androidquery/b/c;
    //   227: ldc_w 863
    //   230: invokevirtual 438	com/androidquery/b/c:a	(Ljava/lang/String;)Lcom/androidquery/b/c;
    //   233: pop
    //   234: aconst_null
    //   235: astore_3
    //   236: goto -143 -> 93
    //   239: astore_1
    //   240: aload_1
    //   241: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   244: aload_0
    //   245: getfield 795	com/androidquery/b/a:a	Lcom/androidquery/b/c;
    //   248: bipush 155
    //   250: invokevirtual 435	com/androidquery/b/c:b	(I)Lcom/androidquery/b/c;
    //   253: ldc_w 863
    //   256: invokevirtual 438	com/androidquery/b/c:a	(Ljava/lang/String;)Lcom/androidquery/b/c;
    //   259: pop
    //   260: aconst_null
    //   261: astore_3
    //   262: goto -169 -> 93
    //   265: astore 4
    //   267: aload 4
    //   269: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   272: goto -162 -> 110
    //
    // Exception table:
    //   from	to	target	type
    //   21	81	166	java/io/IOException
    //   81	90	166	java/io/IOException
    //   156	165	166	java/io/IOException
    //   21	81	239	java/lang/Exception
    //   81	90	239	java/lang/Exception
    //   156	165	239	java/lang/Exception
    //   93	110	265	java/lang/Exception
  }

  private File g()
  {
    return com.androidquery.util.a.a(this.r, e());
  }

  private File h()
  {
    if (a())
      if (!this.t);
    for (File localFile1 = g(); ; localFile1 = null)
      while (true)
      {
        if ((localFile1 != null) && (!localFile1.exists()));
        try
        {
          localFile1.getParentFile().mkdirs();
          localFile1.createNewFile();
          return localFile1;
          File localFile2 = com.androidquery.util.a.c();
          if (localFile2 == null)
            localFile2 = this.r;
          localFile1 = com.androidquery.util.a.a(localFile2, this.m);
        }
        catch (Exception localException)
        {
          com.androidquery.util.a.b(localException);
          return null;
        }
      }
  }

  private void i()
  {
    Object localObject1 = this.m;
    int i1 = ((String)localObject1).length();
    Object localObject2 = null;
    if (i1 > 2000)
    {
      Uri localUri = Uri.parse((String)localObject1);
      String str3 = localUri.getScheme() + "://" + localUri.getAuthority() + localUri.getPath();
      String str4 = localUri.getFragment();
      if (str4 != null)
        str3 = str3 + "#" + str4;
      Map localMap = a(localUri);
      localObject1 = str3;
      localObject2 = localMap;
    }
    if (this.n != null)
      localObject1 = this.n;
    if ((this.s == null) || (2 == this.y))
    {
      c localc4 = this.a;
      com.androidquery.util.a.b("get", localObject1);
      String str2 = e((String)localObject1);
      a(new HttpDelete(str2), str2, localc4);
      return;
    }
    if (3 == this.y)
    {
      c localc3 = this.a;
      com.androidquery.util.a.b("put", localObject1);
      a((String)localObject1, new HttpPut((String)localObject1), (Map)localObject2, localc3);
      return;
    }
    if ((1 == this.y) && (localObject2 == null))
      localObject2 = new HashMap();
    if (localObject2 == null)
    {
      c localc2 = this.a;
      com.androidquery.util.a.b("get", localObject1);
      String str1 = e((String)localObject1);
      a(new HttpGet(str1), str1, localc2);
      return;
    }
    if (a((Map)localObject2))
    {
      a((String)localObject1, (Map)localObject2, this.a);
      return;
    }
    c localc1 = this.a;
    com.androidquery.util.a.b("post", localObject1);
    a((String)localObject1, new HttpPost((String)localObject1), (Map)localObject2, localc1);
  }

  private void j()
  {
    if ((this.m != null) && (this.b))
      a(this.m, this.p);
    d();
    this.j = null;
    this.k = null;
    this.l = null;
    this.o = null;
    this.s = null;
    this.x = null;
  }

  protected File a(File paramFile, String paramString)
  {
    if (0L < 0L);
    File localFile;
    do
    {
      return null;
      localFile = com.androidquery.util.a.b(paramFile, paramString);
    }
    while ((localFile != null) && (0L != 0L) && (System.currentTimeMillis() - localFile.lastModified() > 0L));
    return localFile;
  }

  public final K a(int paramInt)
  {
    this.q = paramInt;
    return this;
  }

  public final K a(com.androidquery.a.a parama)
  {
    this.s = parama;
    return this;
  }

  public final K a(Class<T> paramClass)
  {
    this.i = paramClass;
    return this;
  }

  public final K a(Object paramObject)
  {
    if (paramObject != null)
      this.l = new WeakReference(paramObject);
    return this;
  }

  public final K a(String paramString)
  {
    this.m = paramString;
    return this;
  }

  public final K a(String paramString, int paramInt)
  {
    this.B = new HttpHost(paramString, paramInt);
    return this;
  }

  protected T a(String paramString, File paramFile, c paramc)
  {
    try
    {
      if (a())
        paramc.a(paramFile);
      byte[] arrayOfByte;
      for (Object localObject = null; ; localObject = arrayOfByte)
      {
        return a(paramString, localObject, paramc);
        arrayOfByte = com.androidquery.util.a.a(new FileInputStream(paramFile));
      }
    }
    catch (Exception localException)
    {
      com.androidquery.util.a.a(localException);
    }
    return (TT)null;
  }

  // ERROR //
  protected T a(String paramString, byte[] paramArrayOfByte, c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_3
    //   10: invokevirtual 959	com/androidquery/b/c:i	()Ljava/io/File;
    //   13: astore 4
    //   15: aload_2
    //   16: ifnull +232 -> 248
    //   19: aload_0
    //   20: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   23: ldc_w 961
    //   26: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   29: ifeq +11 -> 40
    //   32: aload_2
    //   33: iconst_0
    //   34: aload_2
    //   35: arraylength
    //   36: invokestatic 970	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   39: areturn
    //   40: aload_0
    //   41: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   44: ldc_w 972
    //   47: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   50: ifeq +58 -> 108
    //   53: new 79	java/lang/String
    //   56: dup
    //   57: aload_2
    //   58: aload_0
    //   59: getfield 98	com/androidquery/b/a:w	Ljava/lang/String;
    //   62: invokespecial 132	java/lang/String:<init>	([BLjava/lang/String;)V
    //   65: astore 17
    //   67: new 974	org/json/JSONTokener
    //   70: dup
    //   71: aload 17
    //   73: invokespecial 975	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   76: invokevirtual 978	org/json/JSONTokener:nextValue	()Ljava/lang/Object;
    //   79: checkcast 972	org/json/JSONObject
    //   82: astore 19
    //   84: aload 19
    //   86: areturn
    //   87: astore 18
    //   89: aconst_null
    //   90: astore 17
    //   92: aload 18
    //   94: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   97: aload 17
    //   99: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   102: aconst_null
    //   103: astore 19
    //   105: goto -21 -> 84
    //   108: aload_0
    //   109: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   112: ldc_w 980
    //   115: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   118: ifeq +46 -> 164
    //   121: new 974	org/json/JSONTokener
    //   124: dup
    //   125: new 79	java/lang/String
    //   128: dup
    //   129: aload_2
    //   130: aload_0
    //   131: getfield 98	com/androidquery/b/a:w	Ljava/lang/String;
    //   134: invokespecial 132	java/lang/String:<init>	([BLjava/lang/String;)V
    //   137: invokespecial 975	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   140: invokevirtual 978	org/json/JSONTokener:nextValue	()Ljava/lang/Object;
    //   143: checkcast 980	org/json/JSONArray
    //   146: astore 16
    //   148: aload 16
    //   150: areturn
    //   151: astore 15
    //   153: aload 15
    //   155: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   158: aconst_null
    //   159: astore 16
    //   161: goto -13 -> 148
    //   164: aload_0
    //   165: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   168: ldc 79
    //   170: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   173: ifeq +60 -> 233
    //   176: aload_3
    //   177: invokevirtual 804	com/androidquery/b/c:j	()I
    //   180: iconst_1
    //   181: if_icmpne +20 -> 201
    //   184: ldc_w 982
    //   187: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   190: aload_0
    //   191: aload_2
    //   192: aload_0
    //   193: getfield 98	com/androidquery/b/a:w	Ljava/lang/String;
    //   196: aload_3
    //   197: invokespecial 984	com/androidquery/b/a:a	([BLjava/lang/String;Lcom/androidquery/b/c;)Ljava/lang/String;
    //   200: areturn
    //   201: ldc_w 986
    //   204: invokestatic 539	com/androidquery/util/a:a	(Ljava/lang/Object;)V
    //   207: new 79	java/lang/String
    //   210: dup
    //   211: aload_2
    //   212: aload_0
    //   213: getfield 98	com/androidquery/b/a:w	Ljava/lang/String;
    //   216: invokespecial 132	java/lang/String:<init>	([BLjava/lang/String;)V
    //   219: astore 13
    //   221: aload 13
    //   223: areturn
    //   224: astore 14
    //   226: aload 14
    //   228: invokestatic 673	com/androidquery/util/a:a	(Ljava/lang/Throwable;)V
    //   231: aconst_null
    //   232: areturn
    //   233: aload_0
    //   234: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   237: ldc_w 468
    //   240: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   243: ifeq -236 -> 7
    //   246: aload_2
    //   247: areturn
    //   248: aload 4
    //   250: ifnull -243 -> 7
    //   253: aload_0
    //   254: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   257: ldc_w 456
    //   260: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   263: ifeq +6 -> 269
    //   266: aload 4
    //   268: areturn
    //   269: aload_0
    //   270: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   273: ldc_w 988
    //   276: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   279: ifeq +43 -> 322
    //   282: new 461	java/io/FileInputStream
    //   285: dup
    //   286: aload 4
    //   288: invokespecial 464	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   291: astore 10
    //   293: new 988	com/androidquery/util/f
    //   296: dup
    //   297: aload 10
    //   299: invokespecial 989	com/androidquery/util/f:<init>	(Ljava/io/InputStream;)V
    //   302: astore 11
    //   304: aload_3
    //   305: aload 10
    //   307: invokevirtual 990	com/androidquery/b/c:a	(Ljava/io/Closeable;)V
    //   310: aload 11
    //   312: areturn
    //   313: astore 12
    //   315: aload 12
    //   317: invokestatic 149	com/androidquery/util/a:b	(Ljava/lang/Throwable;)V
    //   320: aconst_null
    //   321: areturn
    //   322: aload_0
    //   323: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   326: ldc_w 992
    //   329: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   332: ifeq +50 -> 382
    //   335: invokestatic 998	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   338: astore 7
    //   340: new 461	java/io/FileInputStream
    //   343: dup
    //   344: aload 4
    //   346: invokespecial 464	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   349: astore 8
    //   351: aload 7
    //   353: aload 8
    //   355: aload_0
    //   356: getfield 98	com/androidquery/b/a:w	Ljava/lang/String;
    //   359: invokeinterface 1002 3 0
    //   364: aload_3
    //   365: aload 8
    //   367: invokevirtual 990	com/androidquery/b/c:a	(Ljava/io/Closeable;)V
    //   370: aload 7
    //   372: areturn
    //   373: astore 9
    //   375: aload 9
    //   377: invokestatic 149	com/androidquery/util/a:b	(Ljava/lang/Throwable;)V
    //   380: aconst_null
    //   381: areturn
    //   382: aload_0
    //   383: getfield 953	com/androidquery/b/a:i	Ljava/lang/Class;
    //   386: ldc_w 475
    //   389: invokevirtual 964	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   392: ifeq -385 -> 7
    //   395: new 461	java/io/FileInputStream
    //   398: dup
    //   399: aload 4
    //   401: invokespecial 464	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   404: astore 5
    //   406: aload_3
    //   407: aload 5
    //   409: invokevirtual 990	com/androidquery/b/c:a	(Ljava/io/Closeable;)V
    //   412: aload 5
    //   414: areturn
    //   415: astore 6
    //   417: aload 6
    //   419: invokestatic 149	com/androidquery/util/a:b	(Ljava/lang/Throwable;)V
    //   422: aconst_null
    //   423: areturn
    //   424: astore 18
    //   426: goto -334 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   53	67	87	java/lang/Exception
    //   121	148	151	java/lang/Exception
    //   207	221	224	java/lang/Exception
    //   282	310	313	java/lang/Exception
    //   340	370	373	java/lang/Exception
    //   395	412	415	java/lang/Exception
    //   67	84	424	java/lang/Exception
  }

  public final K a(boolean paramBoolean)
  {
    this.t = paramBoolean;
    return this;
  }

  public final void a(Activity paramActivity)
  {
    if (paramActivity.isFinishing())
      com.androidquery.util.a.a("Warning", "Possible memory leak. Calling ajax with a terminated activity.");
    if (this.i == null)
    {
      com.androidquery.util.a.a("Warning", "type() is not called with response type.");
      return;
    }
    this.x = new WeakReference(paramActivity);
    a(paramActivity);
  }

  public void a(Context paramContext)
  {
    if (this.a == null)
      this.a = new c();
    while (true)
    {
      c(true);
      if ((this.s == null) || (this.s.a()))
        break;
      com.androidquery.util.a.b("auth needed", this.m);
      this.s.a(this);
      return;
      if (!this.a.d())
        continue;
      this.a.b();
      this.p = null;
    }
    Object localObject = c(this.m);
    if (localObject != null)
    {
      this.p = localObject;
      this.a.a(4).a();
      d();
      return;
    }
    this.r = com.androidquery.util.a.a(paramContext, this.q);
    if (E == null)
      E = Executors.newFixedThreadPool(e);
    E.execute(this);
  }

  protected void a(String paramString, T paramT)
  {
  }

  public void a(String paramString, T paramT, c paramc)
  {
  }

  protected boolean a()
  {
    return (File.class.equals(this.i)) || (XmlPullParser.class.equals(this.i)) || (InputStream.class.equals(this.i)) || (f.class.equals(this.i));
  }

  public final K b(String paramString)
  {
    this.n = paramString;
    return this;
  }

  public final K b(boolean paramBoolean)
  {
    this.b = paramBoolean;
    return this;
  }

  public final String b()
  {
    return this.m;
  }

  protected void b(String paramString, T paramT, c paramc)
  {
  }

  protected final boolean b(Context paramContext)
  {
    return (this.t) && (com.androidquery.util.a.b(com.androidquery.util.a.a(paramContext, this.q), this.m) != null);
  }

  protected T c(String paramString)
  {
    return null;
  }

  protected final void c(boolean paramBoolean)
  {
    if (this.l == null);
    for (Object localObject = null; ; localObject = this.l.get())
    {
      if (localObject != null)
      {
        if (!com.androidquery.util.a.b())
          break;
        com.androidquery.util.b.a(localObject, this.m, paramBoolean);
      }
      return;
    }
    com.androidquery.util.a.a(new b(this, localObject, paramBoolean));
  }

  public void run()
  {
    if (!this.a.d())
      try
      {
        if (this.t)
        {
          File localFile = a(this.r, e());
          if (localFile != null)
          {
            this.a.a(3);
            this.p = a(this.m, localFile, this.a);
            if (this.p != null)
            {
              c localc = this.a;
              new Date(localFile.lastModified());
              localc.a();
            }
          }
        }
        if (this.p == null)
        {
          this.p = null;
          if (this.p != null)
            this.a.a(2).a();
        }
        if (this.p == null)
          f();
        if (!this.a.e())
        {
          if (this.z)
            com.androidquery.util.a.a(this);
        }
        else
          return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          com.androidquery.util.a.a(localThrowable);
          this.a.b(-101).a();
        }
        j();
        return;
      }
    j();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.b.a
 * JD-Core Version:    0.6.0
 */