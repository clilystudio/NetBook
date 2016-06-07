package com.koushikdutta.async.http.b;

import android.net.Uri;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;

public final class h
{
  private final e a;
  private Set<String> b = Collections.emptySet();

  public h(Uri paramUri, e parame)
  {
    this.a = parame;
    i locali = new i(this);
    int i = 0;
    if (i < parame.d())
    {
      String str1 = parame.a(i);
      String str2 = parame.b(i);
      if ("Cache-Control".equalsIgnoreCase(str1))
        a.a(str2, locali);
      while (true)
      {
        i++;
        break;
        if ("Date".equalsIgnoreCase(str1))
        {
          c.a(str2);
          continue;
        }
        if ("Expires".equalsIgnoreCase(str1))
        {
          c.a(str2);
          continue;
        }
        if ("Last-Modified".equalsIgnoreCase(str1))
        {
          c.a(str2);
          continue;
        }
        if ("ETag".equalsIgnoreCase(str1))
          continue;
        if ("Pragma".equalsIgnoreCase(str1))
        {
          if (!str2.equalsIgnoreCase("no-cache"))
            continue;
          continue;
        }
        if ("Age".equalsIgnoreCase(str1))
        {
          a.a(str2);
          continue;
        }
        if ("Vary".equalsIgnoreCase(str1))
        {
          if (this.b.isEmpty())
            this.b = new TreeSet(String.CASE_INSENSITIVE_ORDER);
          for (String str3 : str2.split(","))
            this.b.add(str3.trim());
          continue;
        }
        if (("Content-Encoding".equalsIgnoreCase(str1)) || ("Transfer-Encoding".equalsIgnoreCase(str1)))
          continue;
        if ("Content-Length".equalsIgnoreCase(str1))
        {
          try
          {
            Long.parseLong(str2);
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          continue;
        }
        if (("Connection".equalsIgnoreCase(str1)) || ("Proxy-Authenticate".equalsIgnoreCase(str1)) || ("WWW-Authenticate".equalsIgnoreCase(str1)))
          continue;
        if ("X-Android-Sent-Millis".equalsIgnoreCase(str1))
        {
          Long.parseLong(str2);
          continue;
        }
        if (!"X-Android-Received-Millis".equalsIgnoreCase(str1))
          continue;
        Long.parseLong(str2);
      }
    }
  }

  public final e a()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.b.h
 * JD-Core Version:    0.6.0
 */