package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.packet.d;
import com.xiaomi.smack.w;

public final class l extends e
{
  private XMPushService b = null;
  private d[] c;

  public l(XMPushService paramXMPushService, d[] paramArrayOfd)
  {
    super(4);
    this.b = paramXMPushService;
    this.c = paramArrayOfd;
  }

  public final void a()
  {
    try
    {
      this.b.a(this.c);
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
    return "batch send message.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.l
 * JD-Core Version:    0.6.0
 */