package com.koushikdutta.async.http.server;

import com.koushikdutta.async.G;
import com.koushikdutta.async.http.a.b;
import com.koushikdutta.async.http.a.d;
import com.koushikdutta.async.http.b.e;
import com.koushikdutta.async.y;

final class k
  implements G
{
  k(i parami)
  {
  }

  public final void a(String paramString)
  {
    int i = 0;
    try
    {
      if (i.a(this.a).a() == null)
      {
        i.a(this.a).a(paramString);
        if (i.a(this.a).a().contains("HTTP/"))
          return;
        this.a.k();
        this.a.c.a(null);
        return;
      }
      if (!"\r".equals(paramString))
      {
        i.a(this.a).b(paramString);
        return;
      }
    }
    catch (Exception localException)
    {
      this.a.a(localException);
      return;
    }
    y localy = com.koushikdutta.async.http.a.a(this.a.c, i.a(this.a), true);
    i locali = this.a;
    String str1 = i.a(this.a).d("Content-Type");
    Object localObject = null;
    String[] arrayOfString;
    int k;
    if (str1 != null)
    {
      arrayOfString = str1.split(";");
      for (int j = 0; j < arrayOfString.length; j++)
        arrayOfString[j] = arrayOfString[j].trim();
      k = arrayOfString.length;
    }
    while (true)
    {
      localObject = null;
      String str2;
      if (i < k)
      {
        str2 = arrayOfString[i];
        if (!"application/x-www-form-urlencoded".equals(str2))
          break label348;
        localObject = new com.koushikdutta.async.http.a.k();
      }
      while (true)
      {
        locali.f = ((com.koushikdutta.async.http.a.a)localObject);
        if (this.a.f == null)
        {
          this.a.f = this.a.a(i.a(this.a));
          if (this.a.f == null)
            this.a.f = new s(i.a(this.a).d("Content-Type"));
        }
        this.a.f.a(localy, i.b(this.a));
        i.a(this.a, new com.koushikdutta.async.http.b.a(null, i.a(this.a)));
        this.a.b();
        return;
        label348: if ("application/json".equals(str2))
        {
          localObject = new b();
          continue;
        }
        if ("text/plain".equals(str2))
        {
          localObject = new com.koushikdutta.async.http.a.i();
          continue;
        }
        if (!"multipart/form-data".equals(str2))
          break;
        localObject = new d(arrayOfString);
      }
      i++;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.k
 * JD-Core Version:    0.6.0
 */