package com.koushikdutta.async;

import java.util.concurrent.Semaphore;

final class k
  implements Runnable
{
  k(AsyncServer paramAsyncServer, Runnable paramRunnable, Semaphore paramSemaphore)
  {
  }

  public final void run()
  {
    this.a.run();
    this.b.release();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.k
 * JD-Core Version:    0.6.0
 */