package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;
import com.xiaomi.xmpush.thrift.h;

final class J extends e
{
  J(int paramInt, XMPushService paramXMPushService, h paramh)
  {
    super(4);
  }

  public final void a()
  {
    try
    {
      h localh = H.a(this.b, this.c);
      this.b.a(localh);
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
    return "send ack message for message.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.J
 * JD-Core Version:    0.6.0
 */