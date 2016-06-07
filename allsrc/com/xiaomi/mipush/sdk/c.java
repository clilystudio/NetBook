package com.xiaomi.mipush.sdk;

import android.content.Intent;

public final class c
{
  private PushMessageReceiver a;
  private Intent b;

  public c(Intent paramIntent, PushMessageReceiver paramPushMessageReceiver)
  {
    this.a = paramPushMessageReceiver;
    this.b = paramIntent;
  }

  public final PushMessageReceiver a()
  {
    return this.a;
  }

  public final Intent b()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.c
 * JD-Core Version:    0.6.0
 */