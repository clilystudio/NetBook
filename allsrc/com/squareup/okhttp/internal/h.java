package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;

final class h extends g
{
  private final f<Socket> a;
  private final f<Socket> b;
  private final Method c;
  private final Method d;
  private final f<Socket> e;
  private final f<Socket> f;

  public h(f<Socket> paramf1, f<Socket> paramf2, Method paramMethod1, Method paramMethod2, f<Socket> paramf3, f<Socket> paramf4)
  {
    this.a = paramf1;
    this.b = paramf2;
    this.c = paramMethod1;
    this.d = paramMethod2;
    this.e = paramf3;
    this.f = paramf4;
  }

  public final void a(Socket paramSocket)
  {
    if (this.c == null)
      return;
    try
    {
      this.c.invoke(null, new Object[] { paramSocket });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
    }
    throw new RuntimeException(localInvocationTargetException.getCause());
  }

  public final void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    IOException localIOException;
    try
    {
      paramSocket.connect(paramInetSocketAddress, paramInt);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      localIOException = new IOException("Exception in connect");
      localIOException.initCause(localSecurityException);
    }
    throw localIOException;
  }

  public final void a(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList)
  {
    if (paramString != null)
    {
      f localf1 = this.a;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Boolean.valueOf(true);
      localf1.a(paramSSLSocket, arrayOfObject2);
      this.b.a(paramSSLSocket, new Object[] { paramString });
    }
    if ((this.f != null) && (this.f.a(paramSSLSocket)))
    {
      Object[] arrayOfObject1 = new Object[1];
      okio.f localf = new okio.f();
      int i = paramList.size();
      for (int j = 0; j < i; j++)
      {
        Protocol localProtocol = (Protocol)paramList.get(j);
        if (localProtocol == Protocol.HTTP_1_0)
          continue;
        localf.b(localProtocol.toString().length());
        localf.a(localProtocol.toString());
      }
      arrayOfObject1[0] = localf.o();
      this.f.b(paramSSLSocket, arrayOfObject1);
    }
  }

  public final String b(SSLSocket paramSSLSocket)
  {
    if (this.e == null)
      return null;
    if (!this.e.a(paramSSLSocket))
      return null;
    byte[] arrayOfByte = (byte[])this.e.b(paramSSLSocket, new Object[0]);
    if (arrayOfByte != null)
      return new String(arrayOfByte, l.c);
    return null;
  }

  public final void b(Socket paramSocket)
  {
    if (this.d == null)
      return;
    try
    {
      this.d.invoke(null, new Object[] { paramSocket });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
    }
    throw new RuntimeException(localInvocationTargetException.getCause());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.h
 * JD-Core Version:    0.6.0
 */