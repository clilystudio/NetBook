package com.xiaomi.network;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public final class d
{
  private String a;
  private final ArrayList<c> b = new ArrayList();

  public d()
  {
  }

  public d(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("the host is empty");
    this.a = paramString;
  }

  public final c a()
  {
    monitorenter;
    while (true)
    {
      int i;
      try
      {
        i = -1 + this.b.size();
        if (i < 0)
          continue;
        c localc = (c)this.b.get(i);
        if (localc.a())
          continue;
        this.b.remove(i);
        break label86;
        if (TextUtils.equals(localc.a, f.a().b()))
        {
          f.a();
          localc.c();
          return localc;
          localc = null;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      label86: i--;
    }
  }

  public final d a(JSONObject paramJSONObject)
  {
    monitorenter;
    try
    {
      this.a = paramJSONObject.getString("host");
      JSONArray localJSONArray = paramJSONObject.getJSONArray("fbs");
      for (int i = 0; i < localJSONArray.length(); i++)
        this.b.add(new c(this.a).a(localJSONArray.getJSONObject(i)));
      return this;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(c paramc)
  {
    monitorenter;
    int i = 0;
    try
    {
      while (true)
      {
        if (i < this.b.size())
        {
          if (TextUtils.equals(((c)this.b.get(i)).a, paramc.a))
            this.b.set(i, paramc);
        }
        else
        {
          if (i >= this.b.size())
            this.b.add(paramc);
          return;
        }
        i++;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final ArrayList<c> b()
  {
    return this.b;
  }

  public final void c()
  {
    monitorenter;
    try
    {
      for (int i = -1 + this.b.size(); i >= 0; i--)
      {
        if (((c)this.b.get(i)).a())
          continue;
        this.b.remove(i);
      }
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final String d()
  {
    return this.a;
  }

  public final JSONObject e()
  {
    monitorenter;
    JSONObject localJSONObject;
    JSONArray localJSONArray;
    try
    {
      localJSONObject = new JSONObject();
      localJSONObject.put("host", this.a);
      localJSONArray = new JSONArray();
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        localJSONArray.put(((c)localIterator.next()).f());
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
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      localStringBuilder.append((c)localIterator.next());
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.d
 * JD-Core Version:    0.6.0
 */