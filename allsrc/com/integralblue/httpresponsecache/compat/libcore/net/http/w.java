package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.b.h;
import java.io.InputStream;
import java.net.SecureCacheResponse;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;

final class w extends SecureCacheResponse
{
  private final u a;
  private final h b;
  private final InputStream c;

  public w(u paramu, h paramh)
  {
    this.a = paramu;
    this.b = paramh;
    this.c = p.a(paramh);
  }

  public final InputStream getBody()
  {
    return this.c;
  }

  public final String getCipherSuite()
  {
    return u.c(this.a);
  }

  public final Map<String, List<String>> getHeaders()
  {
    return u.b(this.a).g();
  }

  public final List<Certificate> getLocalCertificateChain()
  {
    if ((u.e(this.a) == null) || (u.e(this.a).length == 0))
      return null;
    return Arrays.asList((Object[])u.e(this.a).clone());
  }

  public final Principal getLocalPrincipal()
  {
    if ((u.e(this.a) == null) || (u.e(this.a).length == 0))
      return null;
    return ((X509Certificate)u.e(this.a)[0]).getSubjectX500Principal();
  }

  public final Principal getPeerPrincipal()
  {
    if ((u.d(this.a) == null) || (u.d(this.a).length == 0))
      throw new SSLPeerUnverifiedException(null);
    return ((X509Certificate)u.d(this.a)[0]).getSubjectX500Principal();
  }

  public final List<Certificate> getServerCertificateChain()
  {
    if ((u.d(this.a) == null) || (u.d(this.a).length == 0))
      throw new SSLPeerUnverifiedException(null);
    return Arrays.asList((Object[])u.d(this.a).clone());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.w
 * JD-Core Version:    0.6.0
 */