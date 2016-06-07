package com.xiaomi.push.service;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class B extends Handler
{
  B(A paramA, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    A.a(this.a, true);
    A.a(this.a, System.currentTimeMillis());
    if ((paramMessage.obj instanceof e))
      ((e)paramMessage.obj).c();
    A.a(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.B
 * JD-Core Version:    0.6.0
 */