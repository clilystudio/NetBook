package com.nostra13.universalimageloader.core;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

final class l
{
  final g a;
  private Executor b;
  private Executor c;
  private Executor d;
  private final Map<Integer, String> e = Collections.synchronizedMap(new HashMap());
  private final Map<String, ReentrantLock> f = new WeakHashMap();
  private final AtomicBoolean g = new AtomicBoolean(false);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final AtomicBoolean i = new AtomicBoolean(false);
  private final Object j = new Object();

  l(g paramg)
  {
    this.a = paramg;
    this.b = paramg.e;
    this.c = paramg.f;
    this.d = a.a();
  }

  private void e()
  {
    if ((!this.a.g) && (((ExecutorService)this.b).isShutdown()))
      this.b = f();
    if ((!this.a.h) && (((ExecutorService)this.c).isShutdown()))
      this.c = f();
  }

  private Executor f()
  {
    return a.a(this.a.i, this.a.j, this.a.k);
  }

  final String a(com.nostra13.universalimageloader.core.c.a parama)
  {
    return (String)this.e.get(Integer.valueOf(parama.f()));
  }

  final AtomicBoolean a()
  {
    return this.g;
  }

  final ReentrantLock a(String paramString)
  {
    ReentrantLock localReentrantLock = (ReentrantLock)this.f.get(paramString);
    if (localReentrantLock == null)
    {
      localReentrantLock = new ReentrantLock();
      this.f.put(paramString, localReentrantLock);
    }
    return localReentrantLock;
  }

  final void a(LoadAndDisplayImageTask paramLoadAndDisplayImageTask)
  {
    this.d.execute(new m(this, paramLoadAndDisplayImageTask));
  }

  final void a(com.nostra13.universalimageloader.core.c.a parama, String paramString)
  {
    this.e.put(Integer.valueOf(parama.f()), paramString);
  }

  final void a(r paramr)
  {
    e();
    this.c.execute(paramr);
  }

  final void a(Runnable paramRunnable)
  {
    this.d.execute(paramRunnable);
  }

  final Object b()
  {
    return this.j;
  }

  final void b(com.nostra13.universalimageloader.core.c.a parama)
  {
    this.e.remove(Integer.valueOf(parama.f()));
  }

  final boolean c()
  {
    return this.h.get();
  }

  final boolean d()
  {
    return this.i.get();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.l
 * JD-Core Version:    0.6.0
 */