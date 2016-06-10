package com.clilystudio.netbook.umeng.update;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class c extends Handler
{
  c(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if ((paramMessage.what == 0) && (k.b()))
      b.a(b.a(), (UpdateResponse)paramMessage.obj, k.f());
    b.b(null);
    if (b.b() != null)
      b.b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.c
 * JD-Core Version:    0.6.0
 */