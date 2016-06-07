package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.integralblue.httpresponsecache.compat.libcore.b.a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.CacheResponse;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class n extends CacheResponse
{
  public final InputStream getBody()
  {
    return new ByteArrayInputStream(a.a);
  }

  public final Map<String, List<String>> getHeaders()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(null, Collections.singletonList("HTTP/1.1 504 Gateway Timeout"));
    return localHashMap;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.n
 * JD-Core Version:    0.6.0
 */