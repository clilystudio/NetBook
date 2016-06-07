package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

public final class o extends URLStreamHandler
{
  protected final int getDefaultPort()
  {
    return 80;
  }

  protected final URLConnection openConnection(URL paramURL)
  {
    return new HttpURLConnectionImpl(paramURL, getDefaultPort());
  }

  protected final URLConnection openConnection(URL paramURL, Proxy paramProxy)
  {
    if ((paramURL == null) || (paramProxy == null))
      throw new IllegalArgumentException("url == null || proxy == null");
    return new HttpURLConnectionImpl(paramURL, getDefaultPort(), paramProxy);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.o
 * JD-Core Version:    0.6.0
 */