package com.xiaomi.push.service;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class R
{
  public String a;
  public String b;
  public String c;
  public String d;
  public boolean e;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;
  public y k;
  public Context l;
  u.c m = u.c.a;
  private int n = 0;
  private List<S> o = new ArrayList();
  private XMPushService p;
  private b q = new b(this);

  public R(XMPushService paramXMPushService)
  {
    this.p = paramXMPushService;
    a(new T(this));
  }

  public final long a()
  {
    return 1000L * (()(20.0D * Math.random() - 10.0D) + 15 * (1 + this.n));
  }

  public final void a(S paramS)
  {
    this.o.add(paramS);
  }

  public final void a(u.c paramc, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    int i1 = 1;
    Iterator localIterator = this.o.iterator();
    while (localIterator.hasNext())
      ((S)localIterator.next()).a(paramc);
    Object[] arrayOfObject;
    if (this.m != paramc)
    {
      arrayOfObject = new Object[7];
      arrayOfObject[0] = this.m;
      arrayOfObject[i1] = paramc;
    }
    String str;
    switch (paramInt1)
    {
    default:
      str = "unknown";
      arrayOfObject[2] = str;
      arrayOfObject[3] = U.a(paramInt2);
      arrayOfObject[4] = paramString1;
      arrayOfObject[5] = paramString2;
      arrayOfObject[6] = this.h;
      com.xiaomi.a.a.a.b.a(String.format("update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s", arrayOfObject));
      this.m = paramc;
      if (this.k != null)
        break;
      com.xiaomi.a.a.a.b.c("status changed while the client dispatcher is missing");
    case 1:
    case 2:
    case 3:
    }
    do
    {
      return;
      str = "OPEN";
      break;
      str = "CLOSE";
      break;
      str = "KICK";
      break;
      if (paramInt1 == 2)
      {
        y.a(this.l, this, paramInt2);
        return;
      }
      if (paramInt1 != 3)
        continue;
      y.a(this.l, this, paramString2, paramString1);
      return;
    }
    while (paramInt1 != i1);
    if (paramc == u.c.c)
    {
      if ((i1 != 0) || (!"wait".equals(paramString2)))
        break label283;
      this.n = (1 + this.n);
    }
    while (true)
    {
      this.k.a(this.l, this, i1, paramInt2, paramString1);
      return;
      i1 = 0;
      break;
      label283: if (i1 == 0)
        continue;
      this.n = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.R
 * JD-Core Version:    0.6.0
 */