package com.mob.tools.a;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public final class r extends org.apache.http.conn.ssl.SSLSocketFactory
{
  private SSLContext a = SSLContext.getInstance("TLS");

  public r(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    s locals = new s(this);
    this.a.init(null, new TrustManager[] { locals }, null);
  }

  public final Socket createSocket()
  {
    return this.a.getSocketFactory().createSocket();
  }

  public final Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return this.a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.r
 * JD-Core Version:    0.6.0
 */