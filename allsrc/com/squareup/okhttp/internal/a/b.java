package com.squareup.okhttp.internal.a;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public final class b
  implements HostnameVerifier
{
  public static final b a = new b();
  private static final Pattern b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

  public static List<String> a(X509Certificate paramX509Certificate)
  {
    List localList1 = a(paramX509Certificate, 7);
    List localList2 = a(paramX509Certificate, 2);
    ArrayList localArrayList = new ArrayList(localList1.size() + localList2.size());
    localArrayList.addAll(localList1);
    localArrayList.addAll(localList2);
    return localArrayList;
  }

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
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString1.startsWith(".")) || (paramString1.endsWith("..")));
    int i;
    do
    {
      String str2;
      do
      {
        String str1;
        do
        {
          do
            return false;
          while ((paramString2 == null) || (paramString2.length() == 0) || (paramString2.startsWith(".")) || (paramString2.endsWith("..")));
          if (!paramString1.endsWith("."))
            paramString1 = paramString1 + '.';
          if (!paramString2.endsWith("."))
            paramString2 = paramString2 + '.';
          str1 = paramString2.toLowerCase(Locale.US);
          if (!str1.contains("*"))
            return paramString1.equals(str1);
        }
        while ((!str1.startsWith("*.")) || (str1.indexOf('*', 1) != -1) || (paramString1.length() < str1.length()) || ("*.".equals(str1)));
        str2 = str1.substring(1);
      }
      while (!paramString1.endsWith(str2));
      i = paramString1.length() - str2.length();
    }
    while ((i > 0) && (paramString1.lastIndexOf('.', i - 1) != -1));
    return true;
  }

  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    while (true)
    {
      int i2;
      int m;
      int j;
      try
      {
        X509Certificate localX509Certificate = (X509Certificate)paramSSLSession.getPeerCertificates()[0];
        if (!b.matcher(paramString).matches())
          continue;
        List localList2 = a(localX509Certificate, 7);
        int i1 = localList2.size();
        i2 = 0;
        n = 0;
        if (i2 >= i1)
          break label197;
        if (!paramString.equalsIgnoreCase((String)localList2.get(i2)))
          break label200;
        m = 1;
        break label193;
        String str1 = paramString.toLowerCase(Locale.US);
        List localList1 = a(localX509Certificate, 2);
        int i = localList1.size();
        j = 0;
        k = 0;
        if (j >= i)
          continue;
        if (!a(str1, (String)localList1.get(j)))
          break label206;
        return true;
        if (k != 0)
          continue;
        String str2 = new a(localX509Certificate.getSubjectX500Principal()).a("cn");
        if (str2 == null)
          continue;
        boolean bool = a(str1, str2);
        return bool;
        m = 0;
      }
      catch (SSLException localSSLException)
      {
        return false;
      }
      label193: int n = m;
      label197: return n;
      label200: i2++;
      continue;
      label206: j++;
      int k = 1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.a.b
 * JD-Core Version:    0.6.0
 */