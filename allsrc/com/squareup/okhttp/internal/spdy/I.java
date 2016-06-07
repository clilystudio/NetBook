package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import java.net.Socket;

public final class I
{
  private String a;
  private Socket b;
  private o c = o.a;
  private Protocol d = Protocol.SPDY_3;
  private u e = u.a;
  private boolean f;

  public I(String paramString, boolean paramBoolean, Socket paramSocket)
  {
    this.a = paramString;
    this.f = true;
    this.b = paramSocket;
  }

  public final A a()
  {
    return new A(this, 0);
  }

  public final I a(Protocol paramProtocol)
  {
    this.d = paramProtocol;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.I
 * JD-Core Version:    0.6.0
 */