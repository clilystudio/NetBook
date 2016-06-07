package com.koushikdutta.async;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.Semaphore;

public class ThreadQueue extends LinkedList<Runnable>
{
  private static final WeakHashMap<Thread, ThreadQueue> a = new WeakHashMap();
  Semaphore queueSemaphore = new Semaphore(0);
  a waiter$4a45d86d;

  static ThreadQueue getOrCreateThreadQueue(Thread paramThread)
  {
    synchronized (a)
    {
      ThreadQueue localThreadQueue = (ThreadQueue)a.get(paramThread);
      if (localThreadQueue == null)
      {
        localThreadQueue = new ThreadQueue();
        a.put(paramThread, localThreadQueue);
      }
      return localThreadQueue;
    }
  }

  static void release$579ee0f8(a parama)
  {
    synchronized (a)
    {
      Iterator localIterator = a.values().iterator();
      while (localIterator.hasNext())
      {
        ThreadQueue localThreadQueue = (ThreadQueue)localIterator.next();
        if (localThreadQueue.waiter$4a45d86d != parama)
          continue;
        localThreadQueue.queueSemaphore.release();
      }
    }
    monitorexit;
  }

  public boolean add(Runnable paramRunnable)
  {
    monitorenter;
    try
    {
      boolean bool = super.add(paramRunnable);
      return bool;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public Runnable remove()
  {
    monitorenter;
    try
    {
      if (isEmpty())
        return null;
      Runnable localRunnable = (Runnable)super.remove();
      return localRunnable;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean remove(Object paramObject)
  {
    monitorenter;
    try
    {
      boolean bool = super.remove(paramObject);
      return bool;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.ThreadQueue
 * JD-Core Version:    0.6.0
 */