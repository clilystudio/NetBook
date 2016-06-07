package com.koushikdutta.async.http.server;

import android.annotation.TargetApi;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.a.c;
import com.koushikdutta.async.http.b.e;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.regex.Pattern;

@TargetApi(5)
public class a
{
  private static Hashtable<String, String> d;
  private static Hashtable<Integer, String> e;
  ArrayList<com.koushikdutta.async.r> a = new ArrayList();
  Hashtable<String, ArrayList<g>> b = new Hashtable();
  private c c = new b(this);

  static
  {
    a.class.desiredAssertionStatus();
    d = new Hashtable();
    Hashtable localHashtable = new Hashtable();
    e = localHashtable;
    localHashtable.put(Integer.valueOf(200), "OK");
    e.put(Integer.valueOf(206), "Partial Content");
    e.put(Integer.valueOf(101), "Switching Protocols");
    e.put(Integer.valueOf(301), "Moved Permanently");
    e.put(Integer.valueOf(302), "Found");
    e.put(Integer.valueOf(404), "Not Found");
  }

  public a()
  {
    d.put("js", "application/javascript");
    d.put("json", "application/json");
    d.put("png", "image/png");
    d.put("jpg", "image/jpeg");
    d.put("html", "text/html");
    d.put("css", "text/css");
    d.put("mp4", "video/mp4");
    d.put("mov", "video/quicktime");
    d.put("wmv", "video/x-ms-wmv");
  }

  protected static com.koushikdutta.async.http.a.a a(e parame)
  {
    return new s(parame.d("Content-Type"));
  }

  public static String a(String paramString)
  {
    int i = paramString.lastIndexOf(".");
    String str1;
    if (i != -1)
    {
      String str2 = paramString.substring(i + 1);
      str1 = (String)d.get(str2);
      if (str1 == null);
    }
    while (str1 != null)
    {
      return str1;
      str1 = null;
    }
    return "text/plain";
  }

  private void a(String paramString1, String paramString2, r paramr)
  {
    g localg = new g(0);
    localg.a = Pattern.compile("^" + paramString2);
    localg.b = paramr;
    synchronized (this.b)
    {
      ArrayList localArrayList = (ArrayList)this.b.get(paramString1);
      if (localArrayList == null)
      {
        localArrayList = new ArrayList();
        this.b.put(paramString1, localArrayList);
      }
      localArrayList.add(localg);
      return;
    }
  }

  public static String b(int paramInt)
  {
    String str = (String)e.get(Integer.valueOf(paramInt));
    if (str == null)
      str = "Unknown";
    return str;
  }

  protected static void b()
  {
  }

  public final com.koushikdutta.async.r a(int paramInt)
  {
    return AsyncServer.a().a(null, 5000, this.c);
  }

  public final void a()
  {
    if (this.a != null)
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        ((com.koushikdutta.async.r)localIterator.next()).a();
    }
  }

  public final void a(String paramString, r paramr)
  {
    a("GET", paramString, paramr);
  }

  public final void b(String paramString, r paramr)
  {
    a("POST", paramString, paramr);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.a
 * JD-Core Version:    0.6.0
 */