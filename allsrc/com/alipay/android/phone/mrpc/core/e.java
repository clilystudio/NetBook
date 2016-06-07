package com.alipay.android.phone.mrpc.core;

import android.net.SSLCertificateSocketFactory;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Security;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class e
  implements HttpClient
{
  private static long a = 160L;
  private static String[] b = { "text/", "application/xml", "application/json" };
  private static final HttpRequestInterceptor c = new h();
  private final HttpClient d;
  private volatile g e;

  private e(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    new IllegalStateException("AndroidHttpClient created and never closed");
    this.d = new i(this, paramClientConnectionManager, paramHttpParams);
  }

  public static e a(String paramString)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, true);
    HttpClientParams.setAuthenticating(localBasicHttpParams, false);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLCertificateSocketFactory.getHttpSocketFactory(30000, null), 443));
    ThreadSafeClientConnManager localThreadSafeClientConnManager = new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry);
    ConnManagerParams.setTimeout(localBasicHttpParams, 60000L);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(10));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 50);
    Security.setProperty("networkaddress.cache.ttl", "-1");
    HttpsURLConnection.setDefaultHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
    return new e(localThreadSafeClientConnManager, localBasicHttpParams);
  }

  public static InputStream a(HttpEntity paramHttpEntity)
  {
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null);
    String str;
    do
    {
      Header localHeader;
      do
      {
        return localInputStream;
        localHeader = paramHttpEntity.getContentEncoding();
      }
      while (localHeader == null);
      str = localHeader.getValue();
    }
    while (str == null);
    if (str.contains("gzip"));
    for (Object localObject = new GZIPInputStream(localInputStream); ; localObject = localInputStream)
      return localObject;
  }

  public static AbstractHttpEntity a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < a)
      return new ByteArrayEntity(paramArrayOfByte);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramArrayOfByte);
    localGZIPOutputStream.close();
    ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(localByteArrayOutputStream.toByteArray());
    localByteArrayEntity.setContentEncoding("gzip");
    new StringBuilder("gzip size:").append(paramArrayOfByte.length).append("->").append(localByteArrayEntity.getContentLength());
    return localByteArrayEntity;
  }

  public static void a(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Accept-Encoding", "gzip");
  }

  public static long b(String paramString)
  {
    return p.a(paramString);
  }

  public static void b(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Connection", "Keep-Alive");
  }

  private static boolean b(HttpUriRequest paramHttpUriRequest)
  {
    Header[] arrayOfHeader1 = paramHttpUriRequest.getHeaders("content-encoding");
    int i1;
    if (arrayOfHeader1 != null)
    {
      int n = arrayOfHeader1.length;
      i1 = 0;
      if (i1 < n)
        if (!"gzip".equalsIgnoreCase(arrayOfHeader1[i1].getValue()));
    }
    while (true)
    {
      return true;
      i1++;
      break;
      Header[] arrayOfHeader2 = paramHttpUriRequest.getHeaders("content-type");
      if (arrayOfHeader2 == null)
        continue;
      int i = arrayOfHeader2.length;
      for (int j = 0; j < i; j++)
      {
        Header localHeader = arrayOfHeader2[j];
        for (String str : b)
          if (localHeader.getValue().startsWith(str))
            return false;
      }
    }
  }

  public final void a(HttpRequestRetryHandler paramHttpRequestRetryHandler)
  {
    ((DefaultHttpClient)this.d).setHttpRequestRetryHandler(paramHttpRequestRetryHandler);
  }

  public final <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return this.d.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public final <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.d.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public final <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return this.d.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public final <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.d.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return this.d.execute(paramHttpHost, paramHttpRequest);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return this.d.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return this.d.execute(paramHttpUriRequest);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return this.d.execute(paramHttpUriRequest, paramHttpContext);
  }

  public final ClientConnectionManager getConnectionManager()
  {
    return this.d.getConnectionManager();
  }

  public final HttpParams getParams()
  {
    return this.d.getParams();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.e
 * JD-Core Version:    0.6.0
 */