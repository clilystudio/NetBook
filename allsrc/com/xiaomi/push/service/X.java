package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;

public final class X
{
  private static int e = 300;
  private XMPushService a;
  private int b;
  private long c;
  private int d = 0;

  public X(XMPushService paramXMPushService)
  {
    this.a = paramXMPushService;
    this.b = 10;
    this.c = 0L;
  }

  public final void a()
  {
    this.c = System.currentTimeMillis();
    this.a.a(1);
    this.d = 0;
  }

  public final void a(boolean paramBoolean)
  {
    int i = 40;
    if (this.a.d())
    {
      if (paramBoolean)
      {
        this.a.a(1);
        XMPushService localXMPushService3 = this.a;
        XMPushService localXMPushService4 = this.a;
        localXMPushService4.getClass();
        localXMPushService3.a(new c(localXMPushService4));
        this.d = (1 + this.d);
      }
      do
        return;
      while (this.a.b(1));
      int j;
      if (this.d > 13)
        j = 300;
      while (true)
      {
        b.a("schedule reconnect in " + j + "s");
        XMPushService localXMPushService1 = this.a;
        XMPushService localXMPushService2 = this.a;
        localXMPushService2.getClass();
        localXMPushService1.a(new c(localXMPushService2), j * 1000);
        this.d = (1 + this.d);
        return;
        if (this.d > 7)
        {
          j = 60;
          continue;
        }
        if (this.d > 0)
        {
          j = 10;
          continue;
        }
        if (this.c == 0L)
        {
          j = 0;
          continue;
        }
        long l = System.currentTimeMillis() - this.c;
        if (l < 300000L)
        {
          if (this.b >= e)
          {
            j = this.b;
            continue;
          }
          j = this.b;
          this.b = (int)(1.5D * this.b);
          continue;
        }
        if (l < 900000L)
        {
          if (this.b < i)
            i = this.b;
          this.b = i;
          j = this.b;
          continue;
        }
        if (l < 1800000L)
        {
          if (this.b < 20);
          for (int k = this.b; ; k = 20)
          {
            this.b = k;
            j = this.b;
            break;
          }
        }
        this.b = 10;
        j = this.b;
      }
    }
    b.b("should not reconnect as no client or network.");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.X
 * JD-Core Version:    0.6.0
 */