package com.integralblue.httpresponsecache.compat.a.a.a;

import com.integralblue.httpresponsecache.compat.c;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public final class a
  implements HostnameVerifier
{
  private static List<String> a(X509Certificate paramX509Certificate, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Collection localCollection = paramX509Certificate.getSubjectAlternativeNames();
      if (localCollection == null)
        return Collections.emptyList();
      Iterator localIterator = localCollection.iterator();
      while (localIterator.hasNext())
      {
        List localList = (List)localIterator.next();
        if ((localList == null) || (localList.size() < 2))
          continue;
        Integer localInteger = (Integer)localList.get(0);
        if ((localInteger == null) || (localInteger.intValue() != paramInt))
          continue;
        String str = (String)localList.get(1);
        if (str == null)
          continue;
        localArrayList.add(str);
      }
    }
    catch (CertificateParsingException localCertificateParsingException)
    {
      return Collections.emptyList();
    }
    return localArrayList;
  }

  private static boolean a(String paramString1, String paramString2)
  {
    int i = 1;
    if ((paramString1 == null) || (c.a(paramString1)) || (paramString2 == null) || (c.a(paramString2)))
      i = 0;
    String str;
    int j;
    int k;
    int m;
    do
    {
      do
      {
        return i;
        str = paramString2.toLowerCase(Locale.US);
        if (!str.contains("*"))
          return paramString1.equals(str);
      }
      while ((str.startsWith("*.")) && (paramString1.regionMatches(0, str, 2, -2 + str.length())));
      j = str.indexOf('*');
      if (j > str.indexOf('.'))
        return false;
      if (!paramString1.regionMatches(0, str, 0, j))
        return false;
      k = str.length() - (j + 1);
      m = paramString1.length() - k;
      if ((paramString1.indexOf('.', j) < m) && (!paramString1.endsWith(".clients.google.com")))
        return false;
    }
    while (paramString1.regionMatches(m, str, j + 1, k));
    return false;
  }

  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    while (true)
    {
      int j;
      try
      {
        X509Certificate localX509Certificate = (X509Certificate)paramSSLSession.getPeerCertificates()[0];
        if (!com.integralblue.httpresponsecache.compat.java.net.b.a(paramString))
          continue;
        Iterator localIterator2 = a(localX509Certificate, 7).iterator();
        boolean bool2 = localIterator2.hasNext();
        k = 0;
        if (!bool2)
          break label183;
        if (!paramString.equalsIgnoreCase((String)localIterator2.next()))
          continue;
        j = 1;
        break label179;
        String str1 = paramString.toLowerCase(Locale.US);
        Iterator localIterator1 = a(localX509Certificate, 2).iterator();
        i = 0;
        if (!localIterator1.hasNext())
          continue;
        if (!a(str1, (String)localIterator1.next()))
          break label186;
        return true;
        if (i != 0)
          continue;
        String str2 = new b(localX509Certificate.getSubjectX500Principal()).a("cn");
        if (str2 == null)
          continue;
        boolean bool1 = a(str1, str2);
        return bool1;
        j = 0;
      }
      catch (SSLException localSSLException)
      {
        return false;
      }
      label179: int k = j;
      label183: return k;
      label186: int i = 1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.a.a.a.a
 * JD-Core Version:    0.6.0
 */