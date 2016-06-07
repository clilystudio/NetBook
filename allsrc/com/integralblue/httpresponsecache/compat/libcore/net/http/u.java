package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.integralblue.httpresponsecache.compat.c;
import com.integralblue.httpresponsecache.compat.libcore.a.b;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URI;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;

final class u
{
  private final String a;
  private final C b;
  private final String c;
  private final C d;
  private final String e;
  private final Certificate[] f;
  private final Certificate[] g;

  public u(InputStream paramInputStream)
  {
    try
    {
      this.a = b.c(paramInputStream);
      this.c = b.c(paramInputStream);
      this.b = new C();
      int j = a(paramInputStream);
      for (int k = 0; k < j; k++)
        this.b.b(b.c(paramInputStream));
      this.d = new C();
      this.d.a(b.c(paramInputStream));
      int m = a(paramInputStream);
      while (i < m)
      {
        this.d.b(b.c(paramInputStream));
        i++;
      }
      if (!a())
        break label206;
      String str = b.c(paramInputStream);
      if (!c.a(str))
        throw new IOException("expected \"\" but was \"" + str + "\"");
    }
    finally
    {
      paramInputStream.close();
    }
    this.e = b.c(paramInputStream);
    this.f = b(paramInputStream);
    for (this.g = b(paramInputStream); ; this.g = null)
    {
      paramInputStream.close();
      return;
      label206: this.e = null;
      this.f = null;
    }
  }

  public u(URI paramURI, C paramC, HttpURLConnection paramHttpURLConnection)
  {
    this.a = paramURI.toString();
    this.b = paramC;
    this.c = paramHttpURLConnection.getRequestMethod();
    this.d = C.a(paramHttpURLConnection.getHeaderFields());
    HttpsURLConnection localHttpsURLConnection;
    if (a())
    {
      localHttpsURLConnection = (HttpsURLConnection)paramHttpURLConnection;
      this.e = localHttpsURLConnection.getCipherSuite();
    }
    try
    {
      Certificate[] arrayOfCertificate2 = localHttpsURLConnection.getServerCertificates();
      arrayOfCertificate1 = arrayOfCertificate2;
      this.f = arrayOfCertificate1;
      this.g = localHttpsURLConnection.getLocalCertificates();
      return;
      this.e = null;
      this.f = null;
      this.g = null;
      return;
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      while (true)
        Certificate[] arrayOfCertificate1 = null;
    }
  }

  public u(URI paramURI, C paramC, HttpURLConnection paramHttpURLConnection, String paramString)
  {
    this.a = paramURI.toString();
    this.b = paramC;
    this.c = paramHttpURLConnection.getRequestMethod();
    this.d = C.a(paramHttpURLConnection.getHeaderFields());
    this.d.b("Content-Encoding", paramString);
    HttpsURLConnection localHttpsURLConnection;
    if (a())
    {
      localHttpsURLConnection = (HttpsURLConnection)paramHttpURLConnection;
      this.e = localHttpsURLConnection.getCipherSuite();
    }
    try
    {
      Certificate[] arrayOfCertificate2 = localHttpsURLConnection.getServerCertificates();
      arrayOfCertificate1 = arrayOfCertificate2;
      this.f = arrayOfCertificate1;
      this.g = localHttpsURLConnection.getLocalCertificates();
      return;
      this.e = null;
      this.f = null;
      this.g = null;
      return;
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      while (true)
        Certificate[] arrayOfCertificate1 = null;
    }
  }

  private static int a(InputStream paramInputStream)
  {
    String str = b.c(paramInputStream);
    try
    {
      int i = Integer.parseInt(str);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    throw new IOException("expected an int but was \"" + str + "\"");
  }

  private static String a(String paramString)
  {
    if ((paramString != null) && (paramString.contains("chapter2")) && (paramString.contains("t=")))
      paramString = paramString.replaceAll("(.+)(\\?.*t\\=.*)", "$1");
    return paramString;
  }

  private static void a(Writer paramWriter, Certificate[] paramArrayOfCertificate)
  {
    if (paramArrayOfCertificate == null)
      paramWriter.write("-1\n");
    while (true)
    {
      return;
      try
      {
        paramWriter.write(Integer.toString(paramArrayOfCertificate.length) + '\n');
        int i = paramArrayOfCertificate.length;
        for (int j = 0; j < i; j++)
        {
          String str = com.integralblue.httpresponsecache.compat.libcore.a.a.b(paramArrayOfCertificate[j].getEncoded());
          paramWriter.write(str + '\n');
        }
      }
      catch (CertificateEncodingException localCertificateEncodingException)
      {
      }
    }
    throw new IOException(localCertificateEncodingException.toString());
  }

  private boolean a()
  {
    return this.a.startsWith("https://");
  }

  private Certificate[] b(InputStream paramInputStream)
  {
    int i = a(paramInputStream);
    Certificate[] arrayOfCertificate;
    if (i == -1)
      arrayOfCertificate = null;
    while (true)
    {
      return arrayOfCertificate;
      try
      {
        CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
        arrayOfCertificate = new Certificate[i];
        for (int j = 0; j < arrayOfCertificate.length; j++)
          arrayOfCertificate[j] = localCertificateFactory.generateCertificate(new ByteArrayInputStream(com.integralblue.httpresponsecache.compat.libcore.a.a.a(c.a(b.c(paramInputStream), com.integralblue.httpresponsecache.compat.a.b))));
      }
      catch (CertificateException localCertificateException)
      {
      }
    }
    throw new IOException(localCertificateException.toString());
  }

  public final void a(com.b.a parama)
  {
    int i = 0;
    BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(parama.a(0), com.integralblue.httpresponsecache.compat.a.a));
    localBufferedWriter.write(this.a + '\n');
    localBufferedWriter.write(this.c + '\n');
    localBufferedWriter.write(Integer.toString(this.b.e()) + '\n');
    for (int j = 0; j < this.b.e(); j++)
      localBufferedWriter.write(this.b.a(j) + ": " + this.b.b(j) + '\n');
    localBufferedWriter.write(this.d.a() + '\n');
    localBufferedWriter.write(Integer.toString(this.d.e()) + '\n');
    while (i < this.d.e())
    {
      localBufferedWriter.write(this.d.a(i) + ": " + this.d.b(i) + '\n');
      i++;
    }
    if (a())
    {
      localBufferedWriter.write(10);
      localBufferedWriter.write(this.e + '\n');
      a(localBufferedWriter, this.f);
      a(localBufferedWriter, this.g);
    }
    localBufferedWriter.close();
  }

  public final boolean a(URI paramURI, String paramString, Map<String, List<String>> paramMap)
  {
    return (a(paramURI.toString()).equals(a(this.a))) && (this.c.equals(paramString)) && (new G(paramURI, this.d).a(this.b.g(), paramMap));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.u
 * JD-Core Version:    0.6.0
 */