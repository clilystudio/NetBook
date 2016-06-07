package com.xiaomi.kenai.jbosh;

import android.content.Context;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.HttpHost;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

class l
{
  private final Lock a = new ReentrantLock();
  private I b;
  private HttpClient c;

  l()
  {
    HttpClient.class.getName();
  }

  private HttpClient b(I paramI)
  {
    monitorenter;
    try
    {
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 100);
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
      if ((paramI != null) && (paramI.f() != null) && (paramI.g() != 0))
        localBasicHttpParams.setParameter("http.route.default-proxy", new HttpHost(paramI.f(), paramI.g()));
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      SSLSocketFactory localSSLSocketFactory = SSLSocketFactory.getSocketFactory();
      localSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      localSchemeRegistry.register(new Scheme("https", localSSLSocketFactory, 443));
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      localDefaultHttpClient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(0, false));
      return localDefaultHttpClient;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public k a(g paramg, p paramp, Context paramContext)
  {
    this.a.lock();
    try
    {
      if (this.c == null)
        this.c = b(this.b);
      HttpClient localHttpClient = this.c;
      HttpParams localHttpParams = localHttpClient.getParams();
      HttpConnectionParams.setConnectionTimeout(localHttpParams, 10000);
      if (paramg != null)
        HttpConnectionParams.setSoTimeout(localHttpParams, (int)(1000L * (30 + ((Integer)paramg.b().a()).intValue())));
      I localI = this.b;
      return new k(localHttpClient, localI, paramp, paramContext);
    }
    finally
    {
      this.a.unlock();
    }
    throw localObject;
  }

  public void a()
  {
    this.a.lock();
    try
    {
      if (this.c != null)
        this.c.getConnectionManager().shutdown();
      return;
    }
    finally
    {
      this.b = null;
      this.c = null;
      this.a.unlock();
    }
    throw localObject;
  }

  public void a(I paramI)
  {
    this.a.lock();
    try
    {
      this.b = paramI;
      this.c = b(paramI);
      return;
    }
    finally
    {
      this.a.unlock();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.l
 * JD-Core Version:    0.6.0
 */