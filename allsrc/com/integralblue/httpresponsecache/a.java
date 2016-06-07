package com.integralblue.httpresponsecache;

import com.b.c;
import com.integralblue.httpresponsecache.compat.e;
import com.integralblue.httpresponsecache.compat.java.net.ResponseSource;
import com.integralblue.httpresponsecache.compat.libcore.net.http.p;
import java.io.Closeable;
import java.io.File;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

public final class a extends ResponseCache
  implements com.integralblue.httpresponsecache.compat.java.net.a, Closeable
{
  private static boolean a = false;
  private final p b;

  private a(File paramFile, long paramLong)
  {
    this.b = new p(paramFile, paramLong);
  }

  public static a a(File paramFile, long paramLong)
  {
    ResponseCache localResponseCache = ResponseCache.getDefault();
    a locala;
    if ((localResponseCache instanceof a))
    {
      locala = (a)localResponseCache;
      if (locala == null)
        break label78;
      c localc = locala.b.b();
      if ((!localc.a().equals(paramFile)) || (localc.b() != 209715200L) || (localc.c()))
        break label73;
    }
    label73: label78: 
    do
    {
      return locala;
      locala = null;
      break;
      com.arcsoft.hpay100.a.a.b(locala);
      locala = new a(paramFile, 209715200L);
      ResponseCache.setDefault(locala);
      HttpsURLConnection.setDefaultHostnameVerifier(new com.integralblue.httpresponsecache.compat.a.a.a.a());
    }
    while (a);
    a = true;
    URL.setURLStreamHandlerFactory(new e());
    return locala;
  }

  public final void a()
  {
    this.b.a();
  }

  public final void a(ResponseSource paramResponseSource)
  {
    this.b.a(paramResponseSource);
  }

  public final void a(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
  {
    this.b.a(paramCacheResponse, paramHttpURLConnection);
  }

  public final void close()
  {
    if (ResponseCache.getDefault() == this)
      ResponseCache.setDefault(null);
    this.b.b().close();
  }

  public final CacheResponse get(URI paramURI, String paramString, Map<String, List<String>> paramMap)
  {
    return this.b.get(paramURI, paramString, paramMap);
  }

  public final CacheRequest put(URI paramURI, URLConnection paramURLConnection)
  {
    return this.b.put(paramURI, paramURLConnection);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.a
 * JD-Core Version:    0.6.0
 */