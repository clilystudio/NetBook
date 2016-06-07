package com.squareup.okhttp.internal;

import com.squareup.okhttp.p;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

public final class a
{
  private final List<p> a;
  private int b = 0;
  private boolean c;
  private boolean d;

  public a(List<p> paramList)
  {
    this.a = paramList;
  }

  private boolean b(SSLSocket paramSSLSocket)
  {
    for (int i = this.b; i < this.a.size(); i++)
      if (((p)this.a.get(i)).a(paramSSLSocket))
        return true;
    return false;
  }

  public final p a(SSLSocket paramSSLSocket)
  {
    int i = this.b;
    int j = this.a.size();
    int k = i;
    p localp;
    if (k < j)
    {
      localp = (p)this.a.get(k);
      if (localp.a(paramSSLSocket))
        this.b = (k + 1);
    }
    while (true)
    {
      if (localp == null)
      {
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.d + ", modes=" + this.a + ", supported protocols=" + Arrays.toString(paramSSLSocket.getEnabledProtocols()));
        k++;
        break;
      }
      this.c = b(paramSSLSocket);
      b.b.a(localp, paramSSLSocket, this.d);
      return localp;
      localp = null;
    }
  }

  public final boolean a(IOException paramIOException)
  {
    this.d = true;
    if ((paramIOException instanceof ProtocolException));
    do
      return false;
    while (((paramIOException instanceof InterruptedIOException)) || (((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException))) || ((paramIOException instanceof SSLPeerUnverifiedException)) || ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException))) || (!this.c));
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.a
 * JD-Core Version:    0.6.0
 */