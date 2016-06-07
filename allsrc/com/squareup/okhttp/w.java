package com.squareup.okhttp;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okio.f;

public final class w
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final int f;
  private final List<String> g;
  private final String h;

  private w(x paramx)
  {
    this.b = paramx.a;
    this.c = d(paramx.b);
    this.d = d(paramx.c);
    this.e = paramx.d;
    this.f = paramx.a();
    a(paramx.e);
    if (paramx.f != null);
    for (List localList = a(paramx.f); ; localList = null)
    {
      this.g = localList;
      if (paramx.g != null)
        d(paramx.g);
      this.h = paramx.toString();
      return;
    }
  }

  static int a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9'))
      return paramChar - '0';
    if ((paramChar >= 'a') && (paramChar <= 'f'))
      return 10 + (paramChar - 'a');
    if ((paramChar >= 'A') && (paramChar <= 'F'))
      return 10 + (paramChar - 'A');
    return -1;
  }

  public static int a(String paramString)
  {
    if (paramString.equals("http"))
      return 80;
    if (paramString.equals("https"))
      return 443;
    return -1;
  }

  public static w a(URL paramURL)
  {
    return c(paramURL.toString());
  }

  static String a(String paramString, int paramInt1, int paramInt2)
  {
    for (int i = paramInt1; i < paramInt2; i++)
    {
      if (paramString.charAt(i) != '%')
        continue;
      f localf = new f();
      localf.a(paramString, paramInt1, i);
      if (i < paramInt2)
      {
        int j = paramString.codePointAt(i);
        if ((j == 37) && (i + 2 < paramInt2))
        {
          int k = a(paramString.charAt(i + 1));
          int m = a(paramString.charAt(i + 2));
          if ((k != -1) && (m != -1))
          {
            localf.b(m + (k << 4));
            i += 2;
          }
        }
        while (true)
        {
          i += Character.charCount(j);
          break;
          localf.a(j);
        }
      }
      return localf.m();
    }
    return paramString.substring(paramInt1, paramInt2);
  }

  static String a(String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = paramInt1;
    while (i < paramInt2)
    {
      int j = paramString1.codePointAt(i);
      if ((j < 32) || (j >= 127) || (paramString2.indexOf(j) != -1) || ((j == 37) && (!paramBoolean1)) || ((paramBoolean2) && (j == 43)))
      {
        f localf = new f();
        localf.a(paramString1, paramInt1, i);
        a(localf, paramString1, i, paramInt2, paramString2, paramBoolean1, paramBoolean2);
        return localf.m();
      }
      i += Character.charCount(j);
    }
    return paramString1.substring(paramInt1, paramInt2);
  }

  private static List<String> a(List<String> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      if (str1 != null);
      for (String str2 = d(str1); ; str2 = null)
      {
        localArrayList.add(str2);
        break;
      }
    }
    return Collections.unmodifiableList(localArrayList);
  }

  static void a(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      paramStringBuilder.append('/');
      paramStringBuilder.append((String)paramList.get(j));
    }
  }

  static void a(f paramf, String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    f localf = null;
    if (paramInt1 < paramInt2)
    {
      int i = paramString1.codePointAt(paramInt1);
      String str;
      if ((!paramBoolean1) || ((i != 9) && (i != 10) && (i != 12) && (i != 13)))
      {
        if ((!paramBoolean2) || (i != 43))
          break label94;
        if (!paramBoolean1)
          break label87;
        str = "%20";
        label69: paramf.a(str);
      }
      while (true)
      {
        paramInt1 += Character.charCount(i);
        break;
        label87: str = "%2B";
        break label69;
        label94: if ((i < 32) || (i >= 127) || (paramString2.indexOf(i) != -1) || ((i == 37) && (!paramBoolean1)))
        {
          if (localf == null)
            localf = new f();
          localf.a(i);
          while (!localf.d())
          {
            int j = 0xFF & localf.f();
            paramf.b(37);
            paramf.b(a[(0xF & j >> 4)]);
            paramf.b(a[(j & 0xF)]);
          }
          continue;
        }
        paramf.a(i);
      }
    }
  }

  private static int b(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    for (int i = paramInt1; ; i++)
    {
      if (i < paramInt2)
      {
        if (paramString2.indexOf(paramString1.charAt(i)) == -1)
          continue;
        paramInt2 = i;
      }
      return paramInt2;
    }
  }

  static List<String> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i <= paramString.length())
    {
      int j = paramString.indexOf('&', i);
      if (j == -1)
        j = paramString.length();
      int k = paramString.indexOf('=', i);
      if ((k == -1) || (k > j))
      {
        localArrayList.add(paramString.substring(i, j));
        localArrayList.add(null);
      }
      while (true)
      {
        i = j + 1;
        break;
        localArrayList.add(paramString.substring(i, k));
        localArrayList.add(paramString.substring(k + 1, j));
      }
    }
    return localArrayList;
  }

  static void b(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j += 2)
    {
      String str1 = (String)paramList.get(j);
      String str2 = (String)paramList.get(j + 1);
      if (j > 0)
        paramStringBuilder.append('&');
      paramStringBuilder.append(str1);
      if (str2 == null)
        continue;
      paramStringBuilder.append('=');
      paramStringBuilder.append(str2);
    }
  }

  public static w c(String paramString)
  {
    return new x().a(null, paramString);
  }

  private static String d(String paramString)
  {
    return a(paramString, 0, paramString.length());
  }

  public final URL a()
  {
    try
    {
      URL localURL = new URL(this.h);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    throw new RuntimeException(localMalformedURLException);
  }

  public final URI b()
  {
    try
    {
      URI localURI = new URI(this.h);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
    }
    throw new IllegalStateException("not valid as a java.net.URI: " + this.h);
  }

  public final boolean c()
  {
    return this.b.equals("https");
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof w)) && (((w)paramObject).h.equals(this.h));
  }

  public final int hashCode()
  {
    return this.h.hashCode();
  }

  public final String toString()
  {
    return this.h;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.w
 * JD-Core Version:    0.6.0
 */