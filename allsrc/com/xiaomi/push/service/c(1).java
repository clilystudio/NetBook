package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;

public final class c extends e
{
  c(XMPushService paramXMPushService)
  {
    super(1);
  }

  public final void a()
  {
    if (this.b.d())
    {
      XMPushService.g(this.b);
      return;
    }
    b.a("should not connect. quit the job.");
  }

  public final String b()
  {
    return "do reconnect..";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.c
 * JD-Core Version:    0.6.0
 */