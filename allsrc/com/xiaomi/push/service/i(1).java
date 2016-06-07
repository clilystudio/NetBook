package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.l;
import com.xiaomi.smack.w;

final class i extends e
{
  private R b = null;

  public i(XMPushService paramXMPushService, R paramR)
  {
    super(4);
    this.b = paramR;
  }

  public final void a()
  {
    try
    {
      this.b.a(u.c.a, 1, 16, null, null);
      XMPushService.d(this.c).a(this.b.h, this.b.b);
      this.b.a(u.c.b, 1, 16, null, null);
      XMPushService.d(this.c).a(this.b);
      return;
    }
    catch (w localw)
    {
      b.a(localw);
      this.c.a(10, localw);
    }
  }

  public final String b()
  {
    return "bind the client. " + this.b.h + ", " + this.b.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.i
 * JD-Core Version:    0.6.0
 */