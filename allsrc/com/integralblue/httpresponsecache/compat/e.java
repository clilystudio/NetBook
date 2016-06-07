package com.integralblue.httpresponsecache.compat;

import com.integralblue.httpresponsecache.compat.libcore.net.http.o;
import com.integralblue.httpresponsecache.compat.libcore.net.http.x;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;

public final class e
  implements URLStreamHandlerFactory
{
  public final URLStreamHandler createURLStreamHandler(String paramString)
  {
    if (paramString.equals("http"))
      return new o();
    if (paramString.equals("https"))
      return new x();
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.e
 * JD-Core Version:    0.6.0
 */