package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.l;
import com.xiaomi.smack.w;

final class h extends e
{
  public h(XMPushService paramXMPushService)
  {
    super(4);
  }

  public final void a()
  {
    if (this.b.f());
    try
    {
      XMPushService.d(this.b).c();
      return;
    }
    catch (w localw)
    {
      b.a(localw);
      this.b.a(10, localw);
    }
  }

  public final String b()
  {
    return "send ping..";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.h
 * JD-Core Version:    0.6.0
 */