package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;

final class s extends e
{
  s(XMPushService paramXMPushService, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    super(4);
  }

  public final void a()
  {
    try
    {
      this.d.a(this.b, this.c);
      return;
    }
    catch (w localw)
    {
      b.a(localw);
      this.d.a(10, localw);
    }
  }

  public final String b()
  {
    return "send mi push message";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.s
 * JD-Core Version:    0.6.0
 */