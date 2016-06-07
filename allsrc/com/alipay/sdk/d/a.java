package com.alipay.sdk.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.sdk.b.c;
import com.alipay.sdk.exception.NetErrorException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public class a
{
  static a b;
  String a;
  private Context c;

  public a(Context paramContext, String paramString)
  {
    this.c = paramContext;
    this.a = paramString;
  }

  // ERROR //
  public static String a(HttpResponse paramHttpResponse)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 28 1 0
    //   6: astore_1
    //   7: aload_1
    //   8: invokeinterface 34 1 0
    //   13: istore_2
    //   14: aload_0
    //   15: invokeinterface 38 1 0
    //   20: astore_3
    //   21: aconst_null
    //   22: astore 4
    //   24: aload_3
    //   25: invokeinterface 44 1 0
    //   30: astore 11
    //   32: aload 11
    //   34: astore 4
    //   36: aload_1
    //   37: invokeinterface 34 1 0
    //   42: sipush 200
    //   45: if_icmpne +8 -> 53
    //   48: aload 4
    //   50: ifnonnull +67 -> 117
    //   53: new 46	com/alipay/sdk/exception/NetErrorException
    //   56: dup
    //   57: new 48	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   64: iload_2
    //   65: invokevirtual 53	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   68: ldc 55
    //   70: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_1
    //   74: invokeinterface 62 1 0
    //   79: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokespecial 68	com/alipay/sdk/exception/NetErrorException:<init>	(Ljava/lang/String;)V
    //   88: athrow
    //   89: astore 9
    //   91: new 46	com/alipay/sdk/exception/NetErrorException
    //   94: dup
    //   95: invokespecial 69	com/alipay/sdk/exception/NetErrorException:<init>	()V
    //   98: athrow
    //   99: astore 10
    //   101: aload 4
    //   103: astore 7
    //   105: aload 10
    //   107: astore 6
    //   109: aload 7
    //   111: invokevirtual 74	java/io/InputStream:close	()V
    //   114: aload 6
    //   116: athrow
    //   117: aload_3
    //   118: invokeinterface 78 1 0
    //   123: astore 13
    //   125: aload 13
    //   127: ifnull +33 -> 160
    //   130: aload 13
    //   132: invokeinterface 83 1 0
    //   137: ldc 85
    //   139: invokevirtual 91	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   142: ifeq +18 -> 160
    //   145: new 93	java/util/zip/GZIPInputStream
    //   148: dup
    //   149: aload 4
    //   151: invokespecial 96	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   154: astore 14
    //   156: aload 14
    //   158: astore 4
    //   160: aload_3
    //   161: invokeinterface 100 1 0
    //   166: l2i
    //   167: istore 15
    //   169: iload 15
    //   171: ifge +132 -> 303
    //   174: sipush 4096
    //   177: istore 16
    //   179: aload_3
    //   180: invokestatic 106	org/apache/http/util/EntityUtils:getContentCharSet	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   183: astore 17
    //   185: aload 17
    //   187: ifnonnull +7 -> 194
    //   190: ldc 108
    //   192: astore 17
    //   194: new 110	java/io/InputStreamReader
    //   197: dup
    //   198: aload 4
    //   200: aload 17
    //   202: invokespecial 113	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   205: astore 18
    //   207: new 115	org/apache/http/util/CharArrayBuffer
    //   210: dup
    //   211: iload 16
    //   213: invokespecial 118	org/apache/http/util/CharArrayBuffer:<init>	(I)V
    //   216: astore 19
    //   218: sipush 1024
    //   221: newarray char
    //   223: astore 20
    //   225: aload 18
    //   227: aload 20
    //   229: invokevirtual 124	java/io/Reader:read	([C)I
    //   232: istore 21
    //   234: iload 21
    //   236: iconst_m1
    //   237: if_icmpeq +16 -> 253
    //   240: aload 19
    //   242: aload 20
    //   244: iconst_0
    //   245: iload 21
    //   247: invokevirtual 127	org/apache/http/util/CharArrayBuffer:append	([CII)V
    //   250: goto -25 -> 225
    //   253: aload 19
    //   255: invokevirtual 128	org/apache/http/util/CharArrayBuffer:toString	()Ljava/lang/String;
    //   258: astore 22
    //   260: aload 4
    //   262: invokevirtual 74	java/io/InputStream:close	()V
    //   265: aload 22
    //   267: areturn
    //   268: astore 23
    //   270: aload 22
    //   272: areturn
    //   273: astore 8
    //   275: goto -161 -> 114
    //   278: astore 5
    //   280: aload 5
    //   282: astore 6
    //   284: aconst_null
    //   285: astore 7
    //   287: goto -178 -> 109
    //   290: astore 12
    //   292: aload 4
    //   294: astore 7
    //   296: aload 12
    //   298: astore 6
    //   300: goto -191 -> 109
    //   303: iload 15
    //   305: istore 16
    //   307: goto -128 -> 179
    //
    // Exception table:
    //   from	to	target	type
    //   24	32	89	java/lang/Exception
    //   36	48	89	java/lang/Exception
    //   53	89	89	java/lang/Exception
    //   117	125	89	java/lang/Exception
    //   130	156	89	java/lang/Exception
    //   160	169	89	java/lang/Exception
    //   179	185	89	java/lang/Exception
    //   194	225	89	java/lang/Exception
    //   225	234	89	java/lang/Exception
    //   240	250	89	java/lang/Exception
    //   253	260	89	java/lang/Exception
    //   91	99	99	finally
    //   160	169	99	finally
    //   179	185	99	finally
    //   194	225	99	finally
    //   225	234	99	finally
    //   240	250	99	finally
    //   253	260	99	finally
    //   260	265	268	java/lang/Exception
    //   109	114	273	java/lang/Exception
    //   24	32	278	finally
    //   36	48	290	finally
    //   53	89	290	finally
    //   117	125	290	finally
    //   130	156	290	finally
  }

  private URL a()
  {
    try
    {
      URL localURL = new URL(this.a);
      return localURL;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private NetworkInfo b()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.c.getSystemService("connectivity")).getActiveNetworkInfo();
      return localNetworkInfo;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private String c()
  {
    try
    {
      NetworkInfo localNetworkInfo = b();
      if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
      {
        if (localNetworkInfo.getType() == 1)
          return "wifi";
        String str = localNetworkInfo.getExtraInfo().toLowerCase();
        return str;
      }
      return "none";
    }
    catch (Exception localException)
    {
    }
    return "none";
  }

  public final HttpResponse a(String paramString, c paramc)
  {
    b localb = b.a();
    HttpResponse localHttpResponse = null;
    if (localb == null)
      return localHttpResponse;
    while (true)
    {
      try
      {
        HttpParams localHttpParams = localb.b.getParams();
        if (Build.VERSION.SDK_INT < 11)
          continue;
        String str3 = c();
        if ((str3 == null) || (str3.contains("wap")))
          continue;
        localObject1 = null;
        if (localObject1 == null)
          continue;
        localHttpParams.setParameter("http.route.default-proxy", localObject1);
        new StringBuilder("requestUrl : ").append(this.a);
        if (!TextUtils.isEmpty(paramString))
          continue;
        localObject2 = new HttpGet(this.a);
        if (paramc == null)
          continue;
        ArrayList localArrayList = paramc.a();
        if (localArrayList == null)
          continue;
        Iterator localIterator = localArrayList.iterator();
        if (!localIterator.hasNext())
          continue;
        ((HttpUriRequest)localObject2).addHeader((Header)localIterator.next());
        continue;
      }
      catch (NetErrorException localNetErrorException)
      {
        throw localNetErrorException;
        URL localURL = a();
        if (localURL == null)
          break label608;
        "https".equalsIgnoreCase(localURL.getProtocol());
        String str4 = System.getProperty("https.proxyHost");
        String str5 = System.getProperty("https.proxyPort");
        if (TextUtils.isEmpty(str4))
          break label608;
        localObject1 = new HttpHost(str4, Integer.parseInt(str5));
        continue;
      }
      catch (ConnectTimeoutException localConnectTimeoutException)
      {
        if (localb == null)
          continue;
        localb.b();
        throw new NetErrorException();
        NetworkInfo localNetworkInfo = b();
        if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()) && (localNetworkInfo.getType() == 0))
        {
          String str2 = Proxy.getDefaultHost();
          int i = Proxy.getDefaultPort();
          if (str2 != null)
          {
            localObject1 = new HttpHost(str2, i);
            continue;
          }
        }
      }
      catch (SocketException localSocketException)
      {
        throw new NetErrorException();
        localObject2 = new HttpPost(this.a);
        if ((paramc == null) || (TextUtils.isEmpty(null)))
          continue;
        paramString = null + "=" + paramString;
        boolean bool = TextUtils.isEmpty(null);
        String str1 = null;
        if (!bool)
          continue;
        str1 = "application/octet-stream;binary/octet-stream";
        ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(paramString.getBytes("utf-8"));
        localByteArrayEntity.setContentType(str1);
        ((HttpPost)localObject2).setEntity(localByteArrayEntity);
        ((HttpUriRequest)localObject2).addHeader("Accept-Charset", "UTF-8");
        ((HttpUriRequest)localObject2).addHeader("Accept-Encoding", "gzip");
        ((HttpUriRequest)localObject2).addHeader("Connection", "Keep-Alive");
        ((HttpUriRequest)localObject2).addHeader("Keep-Alive", "timeout=180, max=100");
        continue;
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        Object localObject2;
        if (localb == null)
          continue;
        localb.b();
        throw new NetErrorException();
        localHttpResponse = localb.a((HttpUriRequest)localObject2);
        Header[] arrayOfHeader1 = localHttpResponse.getHeaders("X-Hostname");
        if ((arrayOfHeader1 == null) || (arrayOfHeader1.length <= 0) || (arrayOfHeader1[0] == null))
          continue;
        localHttpResponse.getHeaders("X-Hostname")[0].toString();
        Header[] arrayOfHeader2 = localHttpResponse.getHeaders("X-ExecuteTime");
        if ((arrayOfHeader2 == null) || (arrayOfHeader2.length <= 0) || (arrayOfHeader2[0] == null))
          break;
        localHttpResponse.getHeaders("X-ExecuteTime")[0].toString();
        return localHttpResponse;
      }
      catch (Exception localException)
      {
        throw new NetErrorException();
      }
      Object localObject1 = null;
      continue;
      label608: localObject1 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.d.a
 * JD-Core Version:    0.6.0
 */