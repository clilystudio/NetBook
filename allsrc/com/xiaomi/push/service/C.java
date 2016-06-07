package com.xiaomi.push.service;

import android.content.Context;

public final class C
{
  public final String a;
  protected final String b;
  protected final String c;
  protected final String d;
  protected final String e;
  protected final String f;
  protected final int g;

  public C(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramInt;
  }

  public final R a(XMPushService paramXMPushService)
  {
    R localR = new R(paramXMPushService);
    localR.a = paramXMPushService.getPackageName();
    localR.b = this.a;
    localR.i = this.c;
    localR.c = this.b;
    localR.h = "5";
    localR.d = "XMPUSH-PASS";
    localR.e = false;
    localR.f = "sdk_ver:2";
    if (paramXMPushService.getPackageName().equals("com.xiaomi.xmsf"));
    for (String str = "1000271"; ; str = this.d)
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = "dev_id";
      arrayOfObject[1] = D.b(paramXMPushService);
      arrayOfObject[2] = "appid";
      arrayOfObject[3] = str;
      localR.g = String.format("%1$s:%2$s,%3$s:%4$s", arrayOfObject);
      localR.k = paramXMPushService.e();
      return localR;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.C
 * JD-Core Version:    0.6.0
 */