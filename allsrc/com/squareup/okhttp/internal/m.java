package com.squareup.okhttp.internal;

import java.util.concurrent.ThreadFactory;

final class m
  implements ThreadFactory
{
  m(String paramString, boolean paramBoolean)
  {
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable, this.a);
    localThread.setDaemon(this.b);
    return localThread;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.m
 * JD-Core Version:    0.6.0
 */