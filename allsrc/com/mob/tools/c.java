package com.mob.tools;

import android.os.Handler.Callback;
import android.os.Message;

final class c
  implements Handler.Callback
{
  c(a parama, Runnable paramRunnable)
  {
  }

  public final boolean handleMessage(Message paramMessage)
  {
    this.a.run();
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.c
 * JD-Core Version:    0.6.0
 */