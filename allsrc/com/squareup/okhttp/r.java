package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class r
{
  private int a = 64;
  private int b = 5;
  private ExecutorService c;
  private final Deque<h> d = new ArrayDeque();
  private final Deque<h> e = new ArrayDeque();
  private final Deque<f> f = new ArrayDeque();

  private ExecutorService a()
  {
    monitorenter;
    try
    {
      if (this.c == null)
        this.c = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), l.a("OkHttp Dispatcher", false));
      ExecutorService localExecutorService = this.c;
      return localExecutorService;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void b()
  {
    if (this.e.size() >= this.a);
    label16: 
    do
    {
      Iterator localIterator;
      do
      {
        return;
        break label16;
        continue;
        while (this.d.isEmpty());
        localIterator = this.d.iterator();
      }
      while (!localIterator.hasNext());
      h localh = (h)localIterator.next();
      if (c(localh) >= this.b)
        continue;
      localIterator.remove();
      this.e.add(localh);
      a().execute(localh);
    }
    while (this.e.size() < this.a);
  }

  private int c(h paramh)
  {
    Iterator localIterator = this.e.iterator();
    int i = 0;
    if (localIterator.hasNext())
      if (!((h)localIterator.next()).a().equals(paramh.a()))
        break label56;
    label56: for (int j = i + 1; ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  final void a(f paramf)
  {
    monitorenter;
    try
    {
      this.f.add(paramf);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  final void a(h paramh)
  {
    monitorenter;
    try
    {
      if ((this.e.size() < this.a) && (c(paramh) < this.b))
      {
        this.e.add(paramh);
        a().execute(paramh);
      }
      while (true)
      {
        return;
        this.d.add(paramh);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  final void b(f paramf)
  {
    monitorenter;
    try
    {
      if (!this.f.remove(paramf))
        throw new AssertionError("Call wasn't in-flight!");
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
  }

  final void b(h paramh)
  {
    monitorenter;
    try
    {
      if (!this.e.remove(paramh))
        throw new AssertionError("AsyncCall wasn't running!");
    }
    finally
    {
      monitorexit;
    }
    b();
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.r
 * JD-Core Version:    0.6.0
 */