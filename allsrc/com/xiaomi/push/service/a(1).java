package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.l;
import com.xiaomi.smack.w;

final class a extends e
{
  private R b = null;

  public a(XMPushService paramXMPushService, R paramR)
  {
    super(9);
    this.b = paramR;
  }

  public final void a()
  {
    try
    {
      if (!this.c.f())
      {
        b.c("trying bind while the connection is not created, quit!");
        return;
      }
      if (this.b.m == u.c.a)
      {
        this.b.a(u.c.b, 0, 0, null, null);
        XMPushService.d(this.c).a(this.b);
        return;
      }
    }
    catch (w localw)
    {
      b.a(localw);
      this.c.a(10, localw);
      return;
    }
    b.a("trying duplicate bind, ingore! " + this.b.m);
  }

  public final String b()
  {
    return "bind the client. " + this.b.h + ", " + this.b.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.a
 * JD-Core Version:    0.6.0
 */