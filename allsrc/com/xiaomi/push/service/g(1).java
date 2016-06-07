package com.xiaomi.push.service;

final class g extends e
{
  private com.xiaomi.smack.packet.e b = null;

  public g(XMPushService paramXMPushService, com.xiaomi.smack.packet.e parame)
  {
    super(8);
    this.b = parame;
  }

  public final void a()
  {
    XMPushService.f(this.c).a(this.b);
  }

  public final String b()
  {
    return "receive a message.";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.g
 * JD-Core Version:    0.6.0
 */