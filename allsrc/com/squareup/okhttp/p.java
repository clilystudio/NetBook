package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class p
{
  public static final p a;
  public static final p b;
  public static final p c;
  private static final CipherSuite[] f;
  final boolean d;
  final boolean e;
  private final String[] g;
  private final String[] h;

  static
  {
    CipherSuite[] arrayOfCipherSuite = new CipherSuite[14];
    arrayOfCipherSuite[0] = CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[1] = CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[2] = CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[3] = CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[4] = CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[5] = CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[6] = CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[7] = CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[8] = CipherSuite.TLS_DHE_DSS_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[9] = CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[10] = CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256;
    arrayOfCipherSuite[11] = CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA;
    arrayOfCipherSuite[12] = CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA;
    arrayOfCipherSuite[13] = CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA;
    f = arrayOfCipherSuite;
    q localq1 = new q(true).a(f);
    TlsVersion[] arrayOfTlsVersion1 = new TlsVersion[3];
    arrayOfTlsVersion1[0] = TlsVersion.TLS_1_2;
    arrayOfTlsVersion1[1] = TlsVersion.TLS_1_1;
    arrayOfTlsVersion1[2] = TlsVersion.TLS_1_0;
    a = localq1.a(arrayOfTlsVersion1).a(true).a();
    q localq2 = new q(a);
    TlsVersion[] arrayOfTlsVersion2 = new TlsVersion[1];
    arrayOfTlsVersion2[0] = TlsVersion.TLS_1_0;
    b = localq2.a(arrayOfTlsVersion2).a(true).a();
    c = new q(false).a();
  }

  private p(q paramq)
  {
    this.d = q.a(paramq);
    this.g = q.b(paramq);
    this.h = q.c(paramq);
    this.e = q.d(paramq);
  }

  private static boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    int i = 1;
    if ((paramArrayOfString1 == null) || (paramArrayOfString2 == null) || (paramArrayOfString1.length == 0) || (paramArrayOfString2.length == 0))
      i = 0;
    label49: label92: 
    while (true)
    {
      return i;
      int j = paramArrayOfString1.length;
      int k = 0;
      if (k >= j)
        break;
      String str = paramArrayOfString1[k];
      int m = paramArrayOfString2.length;
      int n = 0;
      if (n < m)
        if (!l.a(str, paramArrayOfString2[n]));
      for (int i1 = i; ; i1 = 0)
      {
        if (i1 != 0)
          break label92;
        k++;
        break;
        n++;
        break label49;
      }
    }
    return false;
  }

  private List<TlsVersion> b()
  {
    TlsVersion[] arrayOfTlsVersion = new TlsVersion[this.h.length];
    for (int i = 0; i < this.h.length; i++)
      arrayOfTlsVersion[i] = TlsVersion.forJavaName(this.h[i]);
    return l.a(arrayOfTlsVersion);
  }

  final void a(SSLSocket paramSSLSocket, boolean paramBoolean)
  {
    String[] arrayOfString1 = this.g;
    String[] arrayOfString2 = null;
    if (arrayOfString1 != null)
    {
      String[] arrayOfString7 = paramSSLSocket.getEnabledCipherSuites();
      arrayOfString2 = (String[])l.a(String.class, this.g, arrayOfString7);
    }
    String[] arrayOfString3;
    if ((paramBoolean) && (Arrays.asList(paramSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")))
      if (arrayOfString2 != null)
      {
        arrayOfString3 = new String[1 + arrayOfString2.length];
        System.arraycopy(arrayOfString2, 0, arrayOfString3, 0, arrayOfString2.length);
        arrayOfString3[(-1 + arrayOfString3.length)] = "TLS_FALLBACK_SCSV";
      }
    while (true)
    {
      String[] arrayOfString4 = paramSSLSocket.getEnabledProtocols();
      String[] arrayOfString5 = (String[])l.a(String.class, this.h, arrayOfString4);
      p localp = new q(this).a(arrayOfString3).b(arrayOfString5).a();
      paramSSLSocket.setEnabledProtocols(localp.h);
      String[] arrayOfString6 = localp.g;
      if (arrayOfString6 != null)
        paramSSLSocket.setEnabledCipherSuites(arrayOfString6);
      return;
      arrayOfString2 = paramSSLSocket.getEnabledCipherSuites();
      break;
      arrayOfString3 = arrayOfString2;
    }
  }

  public final boolean a()
  {
    return this.e;
  }

  public final boolean a(SSLSocket paramSSLSocket)
  {
    if (!this.d);
    while (true)
    {
      return false;
      String[] arrayOfString1 = paramSSLSocket.getEnabledProtocols();
      if (!a(this.h, arrayOfString1))
        continue;
      if (this.g != null)
        break;
      if (paramSSLSocket.getEnabledCipherSuites().length > 0)
        return true;
    }
    String[] arrayOfString2 = paramSSLSocket.getEnabledCipherSuites();
    return a(this.g, arrayOfString2);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof p));
    p localp;
    do
    {
      return false;
      if (paramObject == this)
        return true;
      localp = (p)paramObject;
    }
    while ((this.d != localp.d) || ((this.d) && ((!Arrays.equals(this.g, localp.g)) || (!Arrays.equals(this.h, localp.h)) || (this.e != localp.e))));
    return true;
  }

  public final int hashCode()
  {
    int i = 17;
    int j;
    if (this.d)
    {
      j = 31 * (31 * (527 + Arrays.hashCode(this.g)) + Arrays.hashCode(this.h));
      if (!this.e)
        break label51;
    }
    label51: for (int k = 0; ; k = 1)
    {
      i = k + j;
      return i;
    }
  }

  public final String toString()
  {
    if (this.d)
    {
      List localList;
      if (this.g == null)
      {
        localList = null;
        if (localList != null)
          break label117;
      }
      label117: for (String str = "[use default]"; ; str = localList.toString())
      {
        return "ConnectionSpec(cipherSuites=" + str + ", tlsVersions=" + b() + ", supportsTlsExtensions=" + this.e + ")";
        CipherSuite[] arrayOfCipherSuite = new CipherSuite[this.g.length];
        for (int i = 0; i < this.g.length; i++)
          arrayOfCipherSuite[i] = CipherSuite.forJavaName(this.g[i]);
        localList = l.a(arrayOfCipherSuite);
        break;
      }
    }
    return "ConnectionSpec()";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.p
 * JD-Core Version:    0.6.0
 */