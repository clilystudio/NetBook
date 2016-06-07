package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;
import com.xiaomi.xmpush.thrift.h;

final class I extends e
{
  I(int paramInt, XMPushService paramXMPushService, h paramh)
  {
    super(4);
  }

  public final void a()
  {
    try
    {
      this.b.a(this.b.a(this.c.j(), this.c.h()));
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
    return "send app absent message.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.I
 * JD-Core Version:    0.6.0
 */