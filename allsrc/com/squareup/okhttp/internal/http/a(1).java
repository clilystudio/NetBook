package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.squareup.okhttp.I;
import com.squareup.okhttp.b;
import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class a
  implements b
{
  public static final b a = new a();

  private static InetAddress a(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT))
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    return InetAddress.getByName(paramURL.getHost());
  }

  public final C a(Proxy paramProxy, I paramI)
  {
    List localList = paramI.i();
    C localC = paramI.a();
    URL localURL = localC.a();
    int i = localList.size();
    for (int j = 0; j < i; j++)
    {
      com.squareup.okhttp.l locall = (com.squareup.okhttp.l)localList.get(j);
      if (!"Basic".equalsIgnoreCase(locall.a()))
        continue;
      PasswordAuthentication localPasswordAuthentication = Authenticator.requestPasswordAuthentication(localURL.getHost(), a(paramProxy, localURL), com.squareup.okhttp.internal.l.a(localURL), localURL.getProtocol(), locall.b(), locall.a(), localURL, Authenticator.RequestorType.SERVER);
      if (localPasswordAuthentication == null)
        continue;
      String str = com.arcsoft.hpay100.a.a.h(localPasswordAuthentication.getUserName(), new String(localPasswordAuthentication.getPassword()));
      return localC.g().a("Authorization", str).a();
    }
    return null;
  }

  public final C b(Proxy paramProxy, I paramI)
  {
    List localList = paramI.i();
    C localC = paramI.a();
    URL localURL = localC.a();
    int i = localList.size();
    for (int j = 0; j < i; j++)
    {
      com.squareup.okhttp.l locall = (com.squareup.okhttp.l)localList.get(j);
      if (!"Basic".equalsIgnoreCase(locall.a()))
        continue;
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
      PasswordAuthentication localPasswordAuthentication = Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), a(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), locall.b(), locall.a(), localURL, Authenticator.RequestorType.PROXY);
      if (localPasswordAuthentication == null)
        continue;
      String str = com.arcsoft.hpay100.a.a.h(localPasswordAuthentication.getUserName(), new String(localPasswordAuthentication.getPassword()));
      return localC.g().a("Proxy-Authorization", str).a();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.a
 * JD-Core Version:    0.6.0
 */