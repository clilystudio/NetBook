package com.koushikdutta.async;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public class a
{
  Semaphore a = new Semaphore(0);

  public void a()
  {
    ThreadQueue localThreadQueue = ThreadQueue.getOrCreateThreadQueue(Thread.currentThread());
    a locala = localThreadQueue.waiter$4a45d86d;
    localThreadQueue.waiter$4a45d86d = this;
    Semaphore localSemaphore = localThreadQueue.queueSemaphore;
    boolean bool2;
    do
    {
      try
      {
        boolean bool1 = this.a.tryAcquire();
        if (bool1)
          return;
        while (true)
        {
          Runnable localRunnable = localThreadQueue.remove();
          if (localRunnable == null)
            break;
          localRunnable.run();
        }
      }
      finally
      {
        localThreadQueue.waiter$4a45d86d = locala;
      }
      localSemaphore.acquire(Math.max(1, localSemaphore.availablePermits()));
      bool2 = this.a.tryAcquire();
    }
    while (!bool2);
    localThreadQueue.waiter$4a45d86d = locala;
  }

  public boolean a(long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = TimeUnit.MILLISECONDS.convert(paramLong, paramTimeUnit);
    ThreadQueue localThreadQueue = ThreadQueue.getOrCreateThreadQueue(Thread.currentThread());
    a locala = localThreadQueue.waiter$4a45d86d;
    localThreadQueue.waiter$4a45d86d = this;
    Semaphore localSemaphore = localThreadQueue.queueSemaphore;
    long l2;
    long l3;
    do
    {
      try
      {
        boolean bool1 = this.a.tryAcquire();
        if (bool1)
          return true;
        l2 = System.currentTimeMillis();
        while (true)
        {
          Runnable localRunnable = localThreadQueue.remove();
          if (localRunnable == null)
            break;
          localRunnable.run();
        }
      }
      finally
      {
        localThreadQueue.waiter$4a45d86d = locala;
      }
      boolean bool2 = localSemaphore.tryAcquire(Math.max(1, localSemaphore.availablePermits()), l1, TimeUnit.MILLISECONDS);
      if (!bool2)
      {
        localThreadQueue.waiter$4a45d86d = locala;
        return false;
      }
      boolean bool3 = this.a.tryAcquire();
      if (bool3)
      {
        localThreadQueue.waiter$4a45d86d = locala;
        return true;
      }
      l3 = System.currentTimeMillis();
    }
    while (l3 - l2 < l1);
    localThreadQueue.waiter$4a45d86d = locala;
    return false;
  }

  public void b()
  {
    this.a.release();
    ThreadQueue.release$579ee0f8(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.a
 * JD-Core Version:    0.6.0
 */