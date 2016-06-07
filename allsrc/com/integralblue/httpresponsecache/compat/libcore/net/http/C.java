package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.integralblue.httpresponsecache.compat.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class C
{
  private static final Comparator<String> a = new D();
  private final List<String> b = new ArrayList(20);
  private String c;
  private int d = 1;
  private int e = -1;
  private String f;

  public C()
  {
  }

  public C(C paramC)
  {
    this.b.addAll(paramC.b);
    this.c = paramC.c;
    this.d = paramC.d;
    this.e = paramC.e;
    this.f = paramC.f;
  }

  public static C a(Map<String, List<String>> paramMap)
  {
    C localC = new C();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = (String)localEntry.getKey();
      List localList = (List)localEntry.getValue();
      if (str != null)
      {
        localC.a(str, localList);
        continue;
      }
      if (localList.isEmpty())
        continue;
      localC.a((String)localList.get(-1 + localList.size()));
    }
    return localC;
  }

  public final C a(Set<String> paramSet)
  {
    C localC = new C();
    for (int i = 0; i < this.b.size(); i += 2)
    {
      String str = (String)this.b.get(i);
      if (!paramSet.contains(str))
        continue;
      localC.a(str, (String)this.b.get(i + 1));
    }
    return localC;
  }

  public final String a()
  {
    return this.c;
  }

  public final String a(int paramInt)
  {
    int i = paramInt << 1;
    if ((i < 0) || (i >= this.b.size()))
      return null;
    return (String)this.b.get(i);
  }

  public final void a(String paramString)
  {
    String str1 = paramString.trim();
    this.c = str1;
    if ((str1 == null) || (!str1.startsWith("HTTP/")));
    String str2;
    int j;
    do
    {
      int i;
      do
      {
        return;
        str2 = str1.trim();
        i = 1 + str2.indexOf(" ");
      }
      while (i == 0);
      if (str2.charAt(i - 2) != '1')
        this.d = 0;
      j = i + 3;
      if (j > str2.length())
        j = str2.length();
      this.e = Integer.parseInt(str2.substring(i, j));
    }
    while (j + 1 > str2.length());
    this.f = str2.substring(j + 1);
  }

  public final void a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("fieldName == null");
    if (paramString2 == null)
    {
      d.a("Ignoring HTTP header field '" + paramString1 + "' because its value is null");
      return;
    }
    this.b.add(paramString1);
    this.b.add(paramString2.trim());
  }

  public final void a(String paramString, List<String> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      a(paramString, (String)localIterator.next());
  }

  public final int b()
  {
    if (this.d != -1)
      return this.d;
    return 1;
  }

  public final String b(int paramInt)
  {
    int i = 1 + (paramInt << 1);
    if ((i < 0) || (i >= this.b.size()))
      return null;
    return (String)this.b.get(i);
  }

  public final void b(String paramString)
  {
    int i = paramString.indexOf(":");
    if (i == -1)
    {
      a("", paramString);
      return;
    }
    a(paramString.substring(0, i), paramString.substring(i + 1));
  }

  public final void b(String paramString1, String paramString2)
  {
    c(paramString1);
    a(paramString1, paramString2);
  }

  public final int c()
  {
    return this.e;
  }

  public final void c(String paramString)
  {
    for (int i = 0; i < this.b.size(); i += 2)
    {
      if (!paramString.equalsIgnoreCase((String)this.b.get(i)))
        continue;
      this.b.remove(i);
      this.b.remove(i);
    }
  }

  public final String d()
  {
    return this.f;
  }

  public final String d(String paramString)
  {
    for (int i = -2 + this.b.size(); i >= 0; i -= 2)
      if (paramString.equalsIgnoreCase((String)this.b.get(i)))
        return (String)this.b.get(i + 1);
    return null;
  }

  public final int e()
  {
    return this.b.size() / 2;
  }

  public final String f()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append(this.c).append("\r\n");
    for (int i = 0; i < this.b.size(); i += 2)
      localStringBuilder.append((String)this.b.get(i)).append(": ").append((String)this.b.get(i + 1)).append("\r\n");
    localStringBuilder.append("\r\n");
    return localStringBuilder.toString();
  }

  public final Map<String, List<String>> g()
  {
    TreeMap localTreeMap = new TreeMap(a);
    for (int i = 0; i < this.b.size(); i += 2)
    {
      String str1 = (String)this.b.get(i);
      String str2 = (String)this.b.get(i + 1);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null)
        localArrayList.addAll(localList);
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
    }
    if (this.c != null)
      localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(this.c)));
    return Collections.unmodifiableMap(localTreeMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.C
 * JD-Core Version:    0.6.0
 */