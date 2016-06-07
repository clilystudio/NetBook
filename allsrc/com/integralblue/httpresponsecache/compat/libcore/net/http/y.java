package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Proxy;
import java.net.SecureCacheResponse;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

final class y extends HttpsURLConnection
{
  private final z a;

  protected y(URL paramURL, int paramInt)
  {
    super(paramURL);
    this.a = new z(this, paramURL, paramInt, 0);
  }

  protected y(URL paramURL, int paramInt, Proxy paramProxy)
  {
    super(paramURL);
    this.a = new z(this, paramURL, paramInt, paramProxy, 0);
  }

  private void b()
  {
    if (this.a.g() == null)
      throw new IllegalStateException("Connection has not yet been established");
  }

  final m a()
  {
    return this.a.a();
  }

  public final void addRequestProperty(String paramString1, String paramString2)
  {
    this.a.addRequestProperty(paramString1, paramString2);
  }

  public final void connect()
  {
    this.connected = true;
    this.a.connect();
  }

  public final void disconnect()
  {
    this.a.disconnect();
  }

  public final boolean getAllowUserInteraction()
  {
    return this.a.getAllowUserInteraction();
  }

  public final String getCipherSuite()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.f();
    if (localSecureCacheResponse != null)
      return localSecureCacheResponse.getCipherSuite();
    b();
    return this.a.g().getSession().getCipherSuite();
  }

  public final int getConnectTimeout()
  {
    return this.a.getConnectTimeout();
  }

  public final Object getContent()
  {
    return this.a.getContent();
  }

  public final Object getContent(Class[] paramArrayOfClass)
  {
    return this.a.getContent(paramArrayOfClass);
  }

  public final String getContentEncoding()
  {
    return this.a.getContentEncoding();
  }

  public final int getContentLength()
  {
    return this.a.getContentLength();
  }

  public final String getContentType()
  {
    return this.a.getContentType();
  }

  public final long getDate()
  {
    return this.a.getDate();
  }

  public final boolean getDefaultUseCaches()
  {
    return this.a.getDefaultUseCaches();
  }

  public final boolean getDoInput()
  {
    return this.a.getDoInput();
  }

  public final boolean getDoOutput()
  {
    return this.a.getDoOutput();
  }

  public final InputStream getErrorStream()
  {
    return this.a.getErrorStream();
  }

  public final long getExpiration()
  {
    return this.a.getExpiration();
  }

  public final String getHeaderField(int paramInt)
  {
    return this.a.getHeaderField(paramInt);
  }

  public final String getHeaderField(String paramString)
  {
    return this.a.getHeaderField(paramString);
  }

  public final long getHeaderFieldDate(String paramString, long paramLong)
  {
    return this.a.getHeaderFieldDate(paramString, paramLong);
  }

  public final int getHeaderFieldInt(String paramString, int paramInt)
  {
    return this.a.getHeaderFieldInt(paramString, paramInt);
  }

  public final String getHeaderFieldKey(int paramInt)
  {
    return this.a.getHeaderFieldKey(paramInt);
  }

  public final Map<String, List<String>> getHeaderFields()
  {
    return this.a.getHeaderFields();
  }

  public final long getIfModifiedSince()
  {
    return this.a.getIfModifiedSince();
  }

  public final InputStream getInputStream()
  {
    return this.a.getInputStream();
  }

  public final boolean getInstanceFollowRedirects()
  {
    return this.a.getInstanceFollowRedirects();
  }

  public final long getLastModified()
  {
    return this.a.getLastModified();
  }

  public final Certificate[] getLocalCertificates()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.f();
    if (localSecureCacheResponse != null)
    {
      List localList = localSecureCacheResponse.getLocalCertificateChain();
      if (localList != null)
        return (Certificate[])localList.toArray(new Certificate[localList.size()]);
      return null;
    }
    b();
    return this.a.g().getSession().getLocalCertificates();
  }

  public final Principal getLocalPrincipal()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.f();
    if (localSecureCacheResponse != null)
      return localSecureCacheResponse.getLocalPrincipal();
    b();
    return this.a.g().getSession().getLocalPrincipal();
  }

  public final OutputStream getOutputStream()
  {
    return this.a.getOutputStream();
  }

  public final Principal getPeerPrincipal()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.f();
    if (localSecureCacheResponse != null)
      return localSecureCacheResponse.getPeerPrincipal();
    b();
    return this.a.g().getSession().getPeerPrincipal();
  }

  public final Permission getPermission()
  {
    return this.a.getPermission();
  }

  public final int getReadTimeout()
  {
    return this.a.getReadTimeout();
  }

  public final String getRequestMethod()
  {
    return this.a.getRequestMethod();
  }

  public final Map<String, List<String>> getRequestProperties()
  {
    return this.a.getRequestProperties();
  }

  public final String getRequestProperty(String paramString)
  {
    return this.a.getRequestProperty(paramString);
  }

  public final int getResponseCode()
  {
    return this.a.getResponseCode();
  }

  public final String getResponseMessage()
  {
    return this.a.getResponseMessage();
  }

  public final Certificate[] getServerCertificates()
  {
    SecureCacheResponse localSecureCacheResponse = this.a.f();
    if (localSecureCacheResponse != null)
    {
      List localList = localSecureCacheResponse.getServerCertificateChain();
      if (localList != null)
        return (Certificate[])localList.toArray(new Certificate[localList.size()]);
      return null;
    }
    b();
    return this.a.g().getSession().getPeerCertificates();
  }

  public final URL getURL()
  {
    return this.a.getURL();
  }

  public final boolean getUseCaches()
  {
    return this.a.getUseCaches();
  }

  public final void setAllowUserInteraction(boolean paramBoolean)
  {
    this.a.setAllowUserInteraction(paramBoolean);
  }

  public final void setChunkedStreamingMode(int paramInt)
  {
    this.a.setChunkedStreamingMode(paramInt);
  }

  public final void setConnectTimeout(int paramInt)
  {
    this.a.setConnectTimeout(paramInt);
  }

  public final void setDefaultUseCaches(boolean paramBoolean)
  {
    this.a.setDefaultUseCaches(paramBoolean);
  }

  public final void setDoInput(boolean paramBoolean)
  {
    this.a.setDoInput(paramBoolean);
  }

  public final void setDoOutput(boolean paramBoolean)
  {
    this.a.setDoOutput(paramBoolean);
  }

  public final void setFixedLengthStreamingMode(int paramInt)
  {
    this.a.setFixedLengthStreamingMode(paramInt);
  }

  public final void setIfModifiedSince(long paramLong)
  {
    this.a.setIfModifiedSince(paramLong);
  }

  public final void setInstanceFollowRedirects(boolean paramBoolean)
  {
    this.a.setInstanceFollowRedirects(paramBoolean);
  }

  public final void setReadTimeout(int paramInt)
  {
    this.a.setReadTimeout(paramInt);
  }

  public final void setRequestMethod(String paramString)
  {
    this.a.setRequestMethod(paramString);
  }

  public final void setRequestProperty(String paramString1, String paramString2)
  {
    this.a.setRequestProperty(paramString1, paramString2);
  }

  public final void setUseCaches(boolean paramBoolean)
  {
    this.a.setUseCaches(paramBoolean);
  }

  public final String toString()
  {
    return this.a.toString();
  }

  public final boolean usingProxy()
  {
    return this.a.usingProxy();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.y
 * JD-Core Version:    0.6.0
 */