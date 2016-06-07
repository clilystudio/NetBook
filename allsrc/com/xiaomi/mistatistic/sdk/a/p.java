package com.xiaomi.mistatistic.sdk.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class p extends Handler
{
  p(o paramo, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1023:
    }
    g.b().a(new q(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.p
 * JD-Core Version:    0.6.0
 */