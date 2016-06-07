package com.nostra13.universalimageloader.core.assist.deque;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

abstract class d
  implements Iterator<E>
{
  private c<E> a;
  private E b;
  private c<E> c;

  d(LinkedBlockingDeque paramLinkedBlockingDeque)
  {
    ReentrantLock localReentrantLock = paramLinkedBlockingDeque.lock;
    localReentrantLock.lock();
    try
    {
      this.a = a();
      if (this.a == null);
      for (Object localObject2 = null; ; localObject2 = this.a.a)
      {
        this.b = localObject2;
        return;
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }

  private void b()
  {
    ReentrantLock localReentrantLock = this.d.lock;
    localReentrantLock.lock();
    while (true)
    {
      c localc1;
      try
      {
        localObject2 = this.a;
        localc1 = a((c)localObject2);
        if (localc1 != null)
          continue;
        localc1 = null;
        this.a = localc1;
        c localc2 = this.a;
        Object localObject3 = null;
        if (localc2 != null)
          continue;
        this.b = localObject3;
        return;
        if (localc1.a != null)
          continue;
        if (localc1 == localObject2)
        {
          localc1 = a();
          continue;
          localObject3 = this.a.a;
          continue;
        }
      }
      finally
      {
        localReentrantLock.unlock();
      }
      Object localObject2 = localc1;
    }
  }

  abstract c<E> a();

  abstract c<E> a(c<E> paramc);

  public boolean hasNext()
  {
    return this.a != null;
  }

  public E next()
  {
    if (this.a == null)
      throw new NoSuchElementException();
    this.c = this.a;
    Object localObject = this.b;
    b();
    return localObject;
  }

  public void remove()
  {
    c localc = this.c;
    if (localc == null)
      throw new IllegalStateException();
    this.c = null;
    ReentrantLock localReentrantLock = this.d.lock;
    localReentrantLock.lock();
    try
    {
      if (localc.a != null)
        this.d.unlink$2f314fad(localc);
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.deque.d
 * JD-Core Version:    0.6.0
 */