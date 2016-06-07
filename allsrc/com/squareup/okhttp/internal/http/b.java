package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C;
import com.squareup.okhttp.I;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.d;
import java.net.Proxy.Type;
import java.net.URL;

public class b
{
  public final C a;
  public final I b;

  private b(C paramC, I paramI)
  {
    this.a = paramC;
    this.b = paramI;
  }

  static String a(C paramC, Proxy.Type paramType, Protocol paramProtocol)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramC.d());
    localStringBuilder.append(' ');
    int i;
    if ((!paramC.i()) && (paramType == Proxy.Type.HTTP))
    {
      i = 1;
      if (i == 0)
        break label82;
      localStringBuilder.append(paramC.a());
    }
    while (true)
    {
      localStringBuilder.append(' ');
      localStringBuilder.append(a(paramProtocol));
      return localStringBuilder.toString();
      i = 0;
      break;
      label82: localStringBuilder.append(a(paramC.a()));
    }
  }

  public static String a(Protocol paramProtocol)
  {
    if (paramProtocol == Protocol.HTTP_1_0)
      return "HTTP/1.0";
    return "HTTP/1.1";
  }

  public static String a(URL paramURL)
  {
    String str = paramURL.getFile();
    if (str == null)
      str = "/";
    do
      return str;
    while (str.startsWith("/"));
    return "/" + str;
  }

  public static boolean a(I paramI, C paramC)
  {
    switch (paramI.c())
    {
    default:
    case 302:
    case 307:
    case 200:
    case 203:
    case 204:
    case 300:
    case 301:
    case 308:
    case 404:
    case 405:
    case 410:
    case 414:
    case 501:
    }
    do
      return false;
    while (((paramI.b("Expires") == null) && (paramI.j().c() == -1) && (!paramI.j().e()) && (!paramI.j().d())) || (paramI.j().b()) || (paramC.h().b()));
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.b
 * JD-Core Version:    0.6.0
 */