package com.xiaomi.smack.packet;

public final class j
{
  public static final j a;
  public static final j b;
  private String c;

  static
  {
    new j("internal-server-error");
    new j("forbidden");
    new j("bad-request");
    new j("conflict");
    a = new j("feature-not-implemented");
    new j("gone");
    new j("item-not-found");
    new j("jid-malformed");
    new j("not-acceptable");
    new j("not-allowed");
    new j("not-authorized");
    new j("payment-required");
    new j("recipient-unavailable");
    new j("redirect");
    new j("registration-required");
    new j("remote-server-error");
    new j("remote-server-not-found");
    b = new j("remote-server-timeout");
    new j("resource-constraint");
    new j("service-unavailable");
    new j("subscription-required");
    new j("undefined-condition");
    new j("unexpected-request");
    new j("request-timeout");
  }

  private j(String paramString)
  {
    this.c = paramString;
  }

  public final String toString()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.j
 * JD-Core Version:    0.6.0
 */