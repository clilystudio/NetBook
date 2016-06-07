package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;
import com.xiaomi.xmpush.thrift.c;
import com.xiaomi.xmpush.thrift.h;

final class M extends e
{
  M(int paramInt, XMPushService paramXMPushService, h paramh, String paramString)
  {
    super(4);
  }

  public final void a()
  {
    try
    {
      h localh = H.a(this.b, this.c);
      c localc = new c();
      localc.a(this.c.m().a());
      localc.a(this.c.m().c());
      localh.a(localc);
      localh.m().a("absent_target_package", this.d);
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
    return "send app absent ack message for message.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.M
 * JD-Core Version:    0.6.0
 */