package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.b.h;
import java.io.InputStream;
import java.net.CacheResponse;
import java.util.List;
import java.util.Map;

final class v extends CacheResponse
{
  private final u a;
  private final h b;
  private final InputStream c;

  public v(u paramu, h paramh)
  {
    this.a = paramu;
    this.b = paramh;
    this.c = p.a(paramh);
  }

  public final InputStream getBody()
  {
    return this.c;
  }

  public final Map<String, List<String>> getHeaders()
  {
    return u.b(this.a).g();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.v
 * JD-Core Version:    0.6.0
 */