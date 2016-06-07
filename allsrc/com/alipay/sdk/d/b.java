package com.alipay.sdk.d;

import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public final class b
{
  public static b a;
  final DefaultHttpClient b;

  private b(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.b = new DefaultHttpClient(paramClientConnectionManager, paramHttpParams);
  }

  private b(HttpParams paramHttpParams)
  {
    this.b = new DefaultHttpClient(paramHttpParams);
  }

  public static b a()
  {
    BasicHttpParams localBasicHttpParams;
    if (a == null)
    {
      localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, true);
      localBasicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
      ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 50);
      ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(30));
      ConnManagerParams.setTimeout(localBasicHttpParams, 1000L);
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
      HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 16384);
      HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
      HttpClientParams.setRedirecting(localBasicHttpParams, true);
      HttpClientParams.setAuthenticating(localBasicHttpParams, false);
      HttpProtocolParams.setUserAgent(localBasicHttpParams, "msp");
    }
    try
    {
      SSLSocketFactory localSSLSocketFactory = SSLSocketFactory.getSocketFactory();
      localSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
      Scheme localScheme1 = new Scheme("https", localSSLSocketFactory, 443);
      Scheme localScheme2 = new Scheme("http", PlainSocketFactory.getSocketFactory(), 80);
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(localScheme1);
      localSchemeRegistry.register(localScheme2);
      a = new b(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return a;
    }
    catch (Exception localException)
    {
      while (true)
        a = new b(localBasicHttpParams);
    }
  }

  public final HttpResponse a(HttpUriRequest paramHttpUriRequest)
  {
    try
    {
      HttpResponse localHttpResponse = this.b.execute(paramHttpUriRequest);
      return localHttpResponse;
    }
    catch (Exception localException)
    {
    }
    throw new Exception(localException);
  }

  public final void b()
  {
    ClientConnectionManager localClientConnectionManager = this.b.getConnectionManager();
    if (localClientConnectionManager != null)
    {
      localClientConnectionManager.shutdown();
      a = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.d.b
 * JD-Core Version:    0.6.0
 */