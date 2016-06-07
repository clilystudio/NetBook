package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

final class j
{
  public static final j a = new j();
  private final int b;
  private final HashMap<i, List<h>> c = new HashMap();

  private j()
  {
    String str1 = System.getProperty("http.keepAlive");
    if ((str1 != null) && (!Boolean.parseBoolean(str1)))
    {
      this.b = 0;
      return;
    }
    String str2 = System.getProperty("http.maxConnections");
    if (str2 != null);
    for (int i = Integer.parseInt(str2); ; i = 5)
    {
      this.b = i;
      return;
    }
  }

  public final h a(i parami, int paramInt)
  {
    synchronized (this.c)
    {
      List localList = (List)this.c.get(parami);
      while (localList != null)
      {
        h localh = (h)localList.remove(-1 + localList.size());
        if (localList.isEmpty())
        {
          this.c.remove(parami);
          localList = null;
        }
        if (localh.h())
          return localh;
      }
      return new h(parami, paramInt, 0);
    }
  }

  public final void a(h paramh)
  {
    i locali;
    if ((this.b > 0) && (paramh.h()))
      locali = paramh.d();
    synchronized (this.c)
    {
      Object localObject2 = (List)this.c.get(locali);
      if (localObject2 == null)
      {
        localObject2 = new ArrayList();
        this.c.put(locali, localObject2);
      }
      if (((List)localObject2).size() < this.b)
      {
        paramh.g();
        ((List)localObject2).add(paramh);
        return;
      }
      paramh.a();
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.j
 * JD-Core Version:    0.6.0
 */