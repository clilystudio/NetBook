package com.xiaomi.kenai.jbosh;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

final class j
{
  private static final Logger a = Logger.getLogger(j.class.getName());
  private final p b;
  private final Lock c = new ReentrantLock();
  private final Condition d = this.c.newCondition();
  private k e;

  j(p paramp)
  {
    if (paramp == null)
      throw new IllegalArgumentException("Request body cannot be null");
    this.b = paramp;
  }

  final p a()
  {
    return this.b;
  }

  final void a(k paramk)
  {
    this.c.lock();
    try
    {
      if (this.e != null)
        throw new IllegalStateException("HTTPResponse was already set");
    }
    finally
    {
      this.c.unlock();
    }
    this.e = paramk;
    this.d.signalAll();
    this.c.unlock();
  }

  final k b()
  {
    this.c.lock();
    try
    {
      while (true)
      {
        k localk1 = this.e;
        if (localk1 != null)
          break;
        try
        {
          this.d.await();
        }
        catch (InterruptedException localInterruptedException)
        {
          a.log(Level.FINEST, "Interrupted", localInterruptedException);
        }
      }
    }
    finally
    {
      this.c.unlock();
    }
    k localk2 = this.e;
    this.c.unlock();
    return localk2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.j
 * JD-Core Version:    0.6.0
 */