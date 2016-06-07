package com.squareup.okhttp.internal.http;

import android.support.design.widget.am;
import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.squareup.okhttp.I;
import com.squareup.okhttp.b;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.l;
import com.squareup.okhttp.u;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class r
{
  public static final String a;
  public static final String b;
  public static final String c;
  private static final Comparator<String> d = new s();
  private static String e;

  static
  {
    g.a();
    e = g.b();
    a = e + "-Sent-Millis";
    b = e + "-Received-Millis";
    c = e + "-Selected-Protocol";
  }

  public static long a(C paramC)
  {
    return a(paramC.e());
  }

  public static long a(I paramI)
  {
    return a(paramI.f());
  }

  public static long a(u paramu)
  {
    return b(paramu.a("Content-Length"));
  }

  public static C a(b paramb, I paramI, Proxy paramProxy)
  {
    if (paramI.c() == 407)
      return paramb.b(paramProxy, paramI);
    return paramb.a(paramProxy, paramI);
  }

  public static Map<String, List<String>> a(u paramu, String paramString)
  {
    TreeMap localTreeMap = new TreeMap(d);
    int i = paramu.a();
    for (int j = 0; j < i; j++)
    {
      String str1 = paramu.a(j);
      String str2 = paramu.b(j);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null)
        localArrayList.addAll(localList);
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
    }
    return Collections.unmodifiableMap(localTreeMap);
  }

  public static void a(D paramD, Map<String, List<String>> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str1 = (String)localEntry.getKey();
      if (((!"Cookie".equalsIgnoreCase(str1)) && (!"Cookie2".equalsIgnoreCase(str1))) || (((List)localEntry.getValue()).isEmpty()))
        continue;
      List localList = (List)localEntry.getValue();
      if (localList.size() == 1);
      StringBuilder localStringBuilder;
      for (String str2 = (String)localList.get(0); ; str2 = localStringBuilder.toString())
      {
        paramD.b(str1, str2);
        break;
        localStringBuilder = new StringBuilder();
        int i = localList.size();
        for (int j = 0; j < i; j++)
        {
          if (j > 0)
            localStringBuilder.append("; ");
          localStringBuilder.append((String)localList.get(j));
        }
      }
    }
  }

  static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }

  private static long b(String paramString)
  {
    if (paramString == null)
      return -1L;
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return -1L;
  }

  public static List<l> b(u paramu, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramu.a();
    for (int j = 0; j < i; j++)
    {
      if (!paramString.equalsIgnoreCase(paramu.a(j)))
        continue;
      String str1 = paramu.b(j);
      int k = 0;
      while (k < str1.length())
      {
        int m = am.a(str1, k, " ");
        String str2 = str1.substring(k, m).trim();
        int n = am.a(str1, m);
        if (!str1.regionMatches(true, n, "realm=\"", 0, 7))
          break;
        int i1 = n + 7;
        int i2 = am.a(str1, i1, "\"");
        String str3 = str1.substring(i1, i2);
        k = am.a(str1, 1 + am.a(str1, i2 + 1, ","));
        localArrayList.add(new l(str2, str3));
      }
    }
    return localArrayList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.r
 * JD-Core Version:    0.6.0
 */