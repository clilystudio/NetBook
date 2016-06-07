package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.l;
import com.xiaomi.smack.w;

final class k extends e
{
  private R b = null;
  private int c;
  private String d;
  private String e;

  public k(XMPushService paramXMPushService, R paramR, int paramInt, String paramString1, String paramString2)
  {
    super(9);
    this.b = paramR;
    this.c = paramInt;
    this.d = paramString1;
    this.e = paramString2;
  }

  public final void a()
  {
    if ((this.b.m != u.c.a) && (XMPushService.d(this.f) != null));
    try
    {
      XMPushService.d(this.f).a(this.b.h, this.b.b);
      this.b.a(u.c.a, this.c, 0, this.e, this.d);
      return;
    }
    catch (w localw)
    {
      while (true)
      {
        b.a(localw);
        this.f.a(10, localw);
      }
    }
  }

  public final String b()
  {
    return "unbind the channel. " + this.b.h + ", " + this.b.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.k
 * JD-Core Version:    0.6.0
 */