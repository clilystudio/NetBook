package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class t
{
  private final String a;
  private final List<Certificate> b;
  private final List<Certificate> c;

  private t(String paramString, List<Certificate> paramList1, List<Certificate> paramList2)
  {
    this.a = paramString;
    this.b = paramList1;
    this.c = paramList2;
  }

  public static t a(SSLSession paramSSLSession)
  {
    String str = paramSSLSession.getCipherSuite();
    if (str == null)
      throw new IllegalStateException("cipherSuite == null");
    try
    {
      Certificate[] arrayOfCertificate3 = paramSSLSession.getPeerCertificates();
      arrayOfCertificate1 = arrayOfCertificate3;
      if (arrayOfCertificate1 != null)
      {
        localList1 = l.a(arrayOfCertificate1);
        Certificate[] arrayOfCertificate2 = paramSSLSession.getLocalCertificates();
        if (arrayOfCertificate2 == null)
          break label89;
        localList2 = l.a(arrayOfCertificate2);
        return new t(str, localList1, localList2);
      }
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      while (true)
      {
        Certificate[] arrayOfCertificate1 = null;
        continue;
        List localList1 = Collections.emptyList();
        continue;
        label89: List localList2 = Collections.emptyList();
      }
    }
  }

  public final String a()
  {
    return this.a;
  }

  public final List<Certificate> b()
  {
    return this.b;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof t));
    t localt;
    do
    {
      return false;
      localt = (t)paramObject;
    }
    while ((!this.a.equals(localt.a)) || (!this.b.equals(localt.b)) || (!this.c.equals(localt.c)));
    return true;
  }

  public final int hashCode()
  {
    return 31 * (31 * (527 + this.a.hashCode()) + this.b.hashCode()) + this.c.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.t
 * JD-Core Version:    0.6.0
 */