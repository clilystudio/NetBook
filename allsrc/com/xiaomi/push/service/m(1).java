package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;

public final class m extends e
{
  private XMPushService b = null;
  private com.xiaomi.smack.packet.e c;

  public m(XMPushService paramXMPushService, com.xiaomi.smack.packet.e parame)
  {
    super(4);
    this.b = paramXMPushService;
    this.c = parame;
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
    return "send a message.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.m
 * JD-Core Version:    0.6.0
 */