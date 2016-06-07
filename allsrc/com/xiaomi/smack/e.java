package com.xiaomi.smack;

import java.util.concurrent.ThreadFactory;

final class e
  implements ThreadFactory
{
  e(b paramb)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "Smack Listener Processor (" + this.a.l + ")");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.e
 * JD-Core Version:    0.6.0
 */