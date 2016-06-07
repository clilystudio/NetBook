package com.iflytek.common.c;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;

public final class e
{
  public static final ExecutorService a;
  private static final BlockingQueue b = new LinkedBlockingQueue(1);
  private static final ThreadFactory c = new f();

  static
  {
    a = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, b, c, new ThreadPoolExecutor.DiscardPolicy());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.c.e
 * JD-Core Version:    0.6.0
 */