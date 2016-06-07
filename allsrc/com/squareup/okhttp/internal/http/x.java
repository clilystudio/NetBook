package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.L;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.t;
import java.net.Socket;
import javax.net.ssl.SSLSocket;

public final class x
{
  public final Socket a;
  public final Protocol b;
  public final t c;

  public x(L paramL, Socket paramSocket)
  {
    this.a = paramSocket;
    this.b = null;
    this.c = null;
  }

  public x(L paramL, SSLSocket paramSSLSocket, Protocol paramProtocol, t paramt)
  {
    this.a = paramSSLSocket;
    this.b = paramProtocol;
    this.c = paramt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.x
 * JD-Core Version:    0.6.0
 */