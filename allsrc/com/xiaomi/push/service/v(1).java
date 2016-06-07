package com.xiaomi.push.service;

import com.xiaomi.smack.l;
import com.xiaomi.smack.packet.f;
import com.xiaomi.smack.packet.f.b;

final class v extends e
{
  v(XMPushService paramXMPushService, int paramInt)
  {
    super(2);
  }

  public final void a()
  {
    if (XMPushService.d(this.b) != null)
    {
      XMPushService.d(this.b).a(new f(f.b.b), 15, null);
      XMPushService.a(this.b, null);
    }
  }

  public final String b()
  {
    return "disconnect for service destroy.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.v
 * JD-Core Version:    0.6.0
 */