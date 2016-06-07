package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.net.URL;

final class B extends m
{
  public B(HttpURLConnectionImpl paramHttpURLConnectionImpl, C paramC, h paramh)
  {
    super(paramHttpURLConnectionImpl, "CONNECT", paramC, paramh, null);
  }

  protected final C r()
  {
    E localE = g();
    URL localURL = this.a.getURL();
    C localC = new C();
    localC.a("CONNECT " + localURL.getHost() + ":" + a.a(localURL) + " HTTP/1.1");
    String str1 = localE.l();
    if (str1 == null)
      str1 = a(localURL);
    localC.b("Host", str1);
    String str2 = localE.k();
    if (str2 == null)
      str2 = u();
    localC.b("User-Agent", str2);
    String str3 = localE.p();
    if (str3 != null)
      localC.b("Proxy-Authorization", str3);
    localC.b("Proxy-Connection", "Keep-Alive");
    return localC;
  }

  protected final boolean v()
  {
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.B
 * JD-Core Version:    0.6.0
 */