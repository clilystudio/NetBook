package com.xiaomi.network;

import android.text.TextUtils;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public final class c
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  private long h;
  private ArrayList<k> i = new ArrayList();
  private String j;
  private String k;
  private double l = 0.1D;
  private long m = 86400000L;

  public c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("the host is empty");
    this.h = System.currentTimeMillis();
    this.i.add(new k(paramString, -1));
    this.a = f.a().b();
    this.b = paramString;
  }

  private void a(String paramString, int paramInt, long paramLong1, long paramLong2, Exception paramException)
  {
    a(paramString, new a(paramInt, paramLong1, paramLong2, paramException));
  }

  private void a(String paramString, a parama)
  {
    monitorenter;
    try
    {
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext())
      {
        k localk = (k)localIterator.next();
        if (!TextUtils.equals(paramString, localk.a))
          continue;
        localk.a(parama);
      }
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void c(String paramString)
  {
    monitorenter;
    try
    {
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext())
      {
        if (!TextUtils.equals(((k)localIterator.next()).a, paramString))
          continue;
        localIterator.remove();
      }
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  public final c a(JSONObject paramJSONObject)
  {
    monitorenter;
    try
    {
      this.a = paramJSONObject.optString("net");
      this.m = paramJSONObject.getLong("ttl");
      this.l = paramJSONObject.getDouble("pct");
      this.h = paramJSONObject.getLong("ts");
      this.d = paramJSONObject.optString("city");
      this.c = paramJSONObject.optString("prv");
      this.g = paramJSONObject.optString("cty");
      this.e = paramJSONObject.optString("isp");
      this.f = paramJSONObject.optString("ip");
      this.b = paramJSONObject.optString("host");
      this.j = paramJSONObject.optString("xf");
      JSONArray localJSONArray = paramJSONObject.getJSONArray("fbs");
      for (int n = 0; n < localJSONArray.length(); n++)
        a(new k().a(localJSONArray.getJSONObject(n)));
      return this;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final ArrayList<String> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("the url is empty.");
    URL localURL = new URL(paramString);
    ArrayList localArrayList;
    if (TextUtils.equals(localURL.getHost(), this.b))
    {
      localArrayList = new ArrayList();
      Iterator localIterator = b().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localArrayList.add(new URL(localURL.getProtocol(), str, localURL.getPort(), localURL.getFile()).toString());
      }
    }
    throw new IllegalArgumentException("the url is not supported by the fallback");
    return localArrayList;
  }

  public final void a(double paramDouble)
  {
    this.l = paramDouble;
  }

  public final void a(long paramLong)
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("the duration is invalid " + paramLong);
    this.m = paramLong;
  }

  public final void a(k paramk)
  {
    monitorenter;
    try
    {
      c(paramk.a);
      this.i.add(paramk);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void a(String paramString, long paramLong1, long paramLong2)
  {
    a(paramString, 0, paramLong1, 0L, null);
  }

  public final void a(String paramString, long paramLong1, long paramLong2, Exception paramException)
  {
    a(paramString, -1, paramLong1, 0L, paramException);
  }

  public final void a(String[] paramArrayOfString)
  {
    monitorenter;
    while (true)
    {
      int n;
      int i2;
      try
      {
        n = -1 + this.i.size();
        if (n < 0)
          continue;
        int i1 = paramArrayOfString.length;
        i2 = 0;
        if (i2 >= i1)
          break label175;
        String str = paramArrayOfString[i2];
        if (!TextUtils.equals(((k)this.i.get(n)).a, str))
          break label181;
        this.i.remove(n);
        break label175;
        Iterator localIterator = this.i.iterator();
        i3 = 0;
        if (!localIterator.hasNext())
          break label194;
        k localk = (k)localIterator.next();
        if (localk.b > i3)
        {
          i5 = localk.b;
          break label187;
          if (i4 >= paramArrayOfString.length)
            continue;
          a(new k(paramArrayOfString[i4], i3 + paramArrayOfString.length - i4));
          i4++;
          continue;
          return;
        }
      }
      finally
      {
        monitorexit;
      }
      int i5 = i3;
      break label187;
      label175: n--;
      continue;
      label181: i2++;
      continue;
      label187: int i3 = i5;
      continue;
      label194: int i4 = 0;
    }
  }

  public final boolean a()
  {
    return System.currentTimeMillis() - this.h < this.m;
  }

  public final ArrayList<String> b()
  {
    monitorenter;
    try
    {
      k[] arrayOfk = new k[this.i.size()];
      this.i.toArray(arrayOfk);
      Arrays.sort(arrayOfk);
      ArrayList localArrayList = new ArrayList();
      int n = arrayOfk.length;
      for (int i1 = 0; i1 < n; i1++)
        localArrayList.add(arrayOfk[i1].a);
      return localArrayList;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void b(String paramString)
  {
    monitorenter;
    try
    {
      a(new k(paramString));
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final String c()
  {
    monitorenter;
    try
    {
      String str;
      if (!TextUtils.isEmpty(this.k))
        str = this.k;
      while (true)
      {
        return str;
        if (TextUtils.isEmpty(this.e))
        {
          str = "hardcode_isp";
          continue;
        }
        String[] arrayOfString = new String[5];
        arrayOfString[0] = this.e;
        arrayOfString[1] = this.c;
        arrayOfString[2] = this.d;
        arrayOfString[3] = this.g;
        arrayOfString[4] = this.f;
        this.k = f.a(arrayOfString, "_");
        str = this.k;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final ArrayList<k> d()
  {
    return this.i;
  }

  public final double e()
  {
    if (this.l < 1.E-005D)
      return 0.1D;
    return this.l;
  }

  public final JSONObject f()
  {
    monitorenter;
    JSONObject localJSONObject;
    JSONArray localJSONArray;
    try
    {
      localJSONObject = new JSONObject();
      localJSONObject.put("net", this.a);
      localJSONObject.put("ttl", this.m);
      localJSONObject.put("pct", this.l);
      localJSONObject.put("ts", this.h);
      localJSONObject.put("city", this.d);
      localJSONObject.put("prv", this.c);
      localJSONObject.put("cty", this.g);
      localJSONObject.put("isp", this.e);
      localJSONObject.put("ip", this.f);
      localJSONObject.put("host", this.b);
      localJSONObject.put("xf", this.j);
      localJSONArray = new JSONArray();
      Iterator localIterator = this.i.iterator();
      while (localIterator.hasNext())
        localJSONArray.put(((k)localIterator.next()).b());
    }
    finally
    {
      monitorexit;
    }
    localJSONObject.put("fbs", localJSONArray);
    monitorexit;
    return localJSONObject;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append("\n");
    localStringBuilder.append(c());
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
    {
      k localk = (k)localIterator.next();
      localStringBuilder.append("\n");
      localStringBuilder.append(localk.toString());
    }
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.c
 * JD-Core Version:    0.6.0
 */