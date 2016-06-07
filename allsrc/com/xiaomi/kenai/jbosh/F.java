package com.xiaomi.kenai.jbosh;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.a.a.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public final class F
{
  private static final int a;
  private static final int b;
  private static final boolean c;
  private final Set<K> d = new CopyOnWriteArraySet();
  private final Set<L> e = new CopyOnWriteArraySet();
  private final Set<M> f = new CopyOnWriteArraySet();
  private final ReentrantLock g = new ReentrantLock();
  private final Condition h = this.g.newCondition();
  private final Condition i = this.g.newCondition();
  private final Condition j = this.g.newCondition();
  private long k = 0L;
  private final I l;
  private final Runnable m = new G(this);
  private final l n = new l();
  private final m o = new m();
  private final ScheduledExecutorService p = Executors.newSingleThreadScheduledExecutor();
  private ThreadPoolExecutor q;
  private ScheduledFuture<?> r;
  private g s;
  private Queue<j> t = new LinkedList();
  private SortedSet<Long> u = new TreeSet();
  private Long v = Long.valueOf(-1L);
  private List<h> w = new ArrayList();
  private volatile long x = 0L;
  private volatile long y = 0L;
  private Context z;

  static
  {
    boolean bool1 = true;
    boolean bool2;
    String str;
    if (!F.class.desiredAssertionStatus())
    {
      bool2 = bool1;
      A = bool2;
      a = Integer.getInteger(F.class.getName() + ".emptyRequestDelay", 100).intValue();
      b = Integer.getInteger(F.class.getName() + ".pauseMargin", 500).intValue();
      str = F.class.getSimpleName() + ".assertionsEnabled";
      if (System.getProperty(str) != null)
        break label132;
      if (A)
        break label140;
    }
    while (true)
    {
      c = bool1;
      return;
      bool2 = false;
      break;
      label132: bool1 = Boolean.getBoolean(str);
      continue;
      label140: bool1 = false;
    }
  }

  private F(I paramI, Context paramContext)
  {
    this.l = paramI;
    this.z = paramContext.getApplicationContext();
    h();
    this.g.lock();
    try
    {
      this.n.a(this.l);
      this.q = new ThreadPoolExecutor(2, 2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
      return;
    }
    finally
    {
      this.g.unlock();
    }
    throw localObject;
  }

  public static F a(I paramI, Context paramContext)
  {
    if (paramI == null)
      throw new IllegalArgumentException("Client configuration may not be null");
    return new F(paramI, paramContext);
  }

  private void a(long paramLong)
  {
    g();
    if (paramLong < 0L)
      throw new IllegalArgumentException("Empty request delay must be >= 0 (was: " + paramLong + ")");
    f();
    if (!c())
      return;
    b.b("SMACK-BOSH: Scheduling empty request in " + paramLong + "ms");
    try
    {
      this.r = this.p.schedule(this.m, paramLong, TimeUnit.MILLISECONDS);
      return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      b.a("SMACK-BOSH: Could not schedule empty request", localRejectedExecutionException);
    }
  }

  private void a(j paramj)
  {
    this.t.add(paramj);
    this.q.execute(new H(this));
  }

  private void a(p paramp1, p paramp2)
  {
    g();
    if (!this.s.f());
    do
      return;
    while (paramp2.a(E.k) != null);
    String str = paramp2.a(E.b);
    if (str == null);
    for (Long localLong = Long.valueOf(Long.parseLong(paramp1.a(E.m))); ; localLong = Long.valueOf(Long.parseLong(str)))
    {
      Iterator localIterator = this.w.iterator();
      while (localIterator.hasNext())
      {
        if (Long.valueOf(Long.parseLong(((p)localIterator.next()).a(E.m))).compareTo(localLong) > 0)
          continue;
        localIterator.remove();
      }
      break;
    }
  }

  private void a(Throwable paramThrowable)
  {
    h();
    this.g.lock();
    try
    {
      ThreadPoolExecutor localThreadPoolExecutor = this.q;
      if (localThreadPoolExecutor == null)
        return;
      this.q.shutdownNow();
      this.q = null;
      this.g.unlock();
      if (paramThrowable == null)
      {
        h();
        Iterator localIterator2 = this.d.iterator();
        w localw2 = null;
        while (localIterator2.hasNext())
        {
          K localK2 = (K)localIterator2.next();
          if (localw2 == null)
            localw2 = w.b(this);
          try
          {
            localK2.a(localw2);
          }
          catch (Exception localException2)
          {
            b.a("SMACK-BOSH:Unhandled Exception", localException2);
          }
        }
      }
    }
    finally
    {
      this.g.unlock();
    }
    h();
    Iterator localIterator1 = this.d.iterator();
    w localw1 = null;
    while (localIterator1.hasNext())
    {
      K localK1 = (K)localIterator1.next();
      if (localw1 == null)
        localw1 = w.a(this, this.w, paramThrowable);
      try
      {
        localK1.a(localw1);
      }
      catch (Exception localException1)
      {
        b.a("SMACK-BOSH:Unhandled Exception", localException1);
      }
    }
    this.g.lock();
    try
    {
      f();
      this.t = null;
      this.s = null;
      this.u = null;
      this.w = null;
      this.h.signalAll();
      this.i.signalAll();
      this.j.signalAll();
      this.g.unlock();
      this.n.a();
      return;
    }
    finally
    {
      this.g.unlock();
    }
    throw localObject2;
  }

  private static boolean a(p paramp)
  {
    return "terminate".equals(paramp.a(E.r));
  }

  private long b(p paramp)
  {
    g();
    if ((this.s != null) && (this.s.e() != null));
    long l2;
    long l1;
    do
    {
      try
      {
        y localy = y.a(paramp.a(E.i));
        if (localy != null)
        {
          l2 = (int)TimeUnit.MILLISECONDS.convert(localy.b(), TimeUnit.SECONDS) - b;
          if (l2 < 0L)
          {
            int i1 = a;
            l2 = i1;
          }
          return l2;
        }
      }
      catch (aa localaa)
      {
        b.a("SMACK-BOSH: Could not extract", localaa);
      }
      g();
      z localz = this.s.d();
      l1 = a;
      if (localz == null)
        break;
      l2 = (int)TimeUnit.MILLISECONDS.convert(localz.b(), TimeUnit.SECONDS);
    }
    while (l2 > l1);
    return l1;
  }

  private void c(p paramp)
  {
    g();
    Long localLong1 = Long.valueOf(Long.parseLong(paramp.a(E.m)));
    if (this.v.equals(Long.valueOf(-1L)))
      this.v = localLong1;
    while (true)
    {
      return;
      this.u.add(localLong1);
      for (Long localLong2 = Long.valueOf(1L + this.v.longValue()); (!this.u.isEmpty()) && (localLong2.equals(this.u.first())); localLong2 = Long.valueOf(1L + localLong2.longValue()))
      {
        this.v = localLong2;
        this.u.remove(localLong2);
      }
    }
  }

  private boolean c()
  {
    g();
    return this.q != null;
  }

  private j d()
  {
    h();
    this.g.lock();
    try
    {
      while (true)
      {
        Queue localQueue = this.t;
        if (localQueue == null)
          return null;
        j localj = (j)this.t.poll();
        if (localj == null);
        try
        {
          this.h.await();
          if (localj == null)
            continue;
          this.g.unlock();
          return localj;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            b.a("Interrupted", localInterruptedException);
        }
      }
    }
    finally
    {
      this.g.unlock();
    }
    throw localObject;
  }

  private j d(p paramp)
  {
    Object localObject1 = null;
    g();
    String str = paramp.a(E.k);
    if (str == null)
      return null;
    Long localLong = Long.valueOf(Long.parseLong(str));
    Long.valueOf(Long.parseLong(paramp.a(E.p)));
    Iterator localIterator = this.w.iterator();
    Object localObject2;
    if ((localIterator.hasNext()) && (localObject1 == null))
    {
      localObject2 = (p)localIterator.next();
      if (!localLong.equals(Long.valueOf(Long.parseLong(((p)localObject2).a(E.m)))))
        break label171;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        throw new aa("Report of missing message with RID '" + str + "' but local copy of that request was not found");
      j localj = new j(localObject1);
      a(localj);
      this.h.signalAll();
      return localj;
      label171: localObject2 = localObject1;
    }
  }

  private void e(p paramp)
  {
    h();
    Iterator localIterator = this.e.iterator();
    ab localab = null;
    while (localIterator.hasNext())
    {
      L localL = (L)localIterator.next();
      if (localab == null)
        localab = ab.a(this, paramp);
      try
      {
        localL.a(localab);
      }
      catch (Exception localException)
      {
        b.a("SMACK-BOSH:Unhandled Exception", localException);
      }
    }
  }

  private boolean e()
  {
    return ((this.r != null) && (!this.r.isDone())) || (this.x > 0L);
  }

  private void f()
  {
    g();
    if (this.r != null)
    {
      this.r.cancel(false);
      this.r = null;
    }
  }

  private void f(p paramp)
  {
    h();
    Iterator localIterator = this.f.iterator();
    ab localab = null;
    while (localIterator.hasNext())
    {
      M localM = (M)localIterator.next();
      if (localab == null)
        localab = ab.b(this, paramp);
      try
      {
        localM.a(localab);
      }
      catch (Exception localException)
      {
        b.a("SMACK-BOSH:Unhandled Exception", localException);
      }
    }
  }

  private void g()
  {
    if ((c) && (!this.g.isHeldByCurrentThread()))
      throw new AssertionError("Lock is not held by current thread");
  }

  private void h()
  {
    if ((c) && (this.g.isHeldByCurrentThread()))
      throw new AssertionError("Lock is held by current thread");
  }

  private void i()
  {
    boolean bool = this.g.isHeldByCurrentThread();
    if (bool)
      this.g.unlock();
    try
    {
      Iterator localIterator = this.d.iterator();
      Object localObject2 = null;
      while (localIterator.hasNext())
      {
        K localK = (K)localIterator.next();
        if (localObject2 == null)
        {
          w localw = w.a(this);
          localObject2 = localw;
        }
        try
        {
          localK.a(localObject2);
        }
        catch (Exception localException)
        {
          b.a("SMACK-BOSH:Unhandled Exception", localException);
        }
      }
    }
    finally
    {
      if (bool)
        this.g.lock();
    }
    if (bool)
      this.g.lock();
  }

  public final void a()
  {
    a(new aa("Session explicitly closed by caller"));
  }

  public final void a(K paramK)
  {
    this.d.add(paramK);
  }

  public final void a(L paramL)
  {
    this.e.add(paramL);
  }

  public final void a(M paramM)
  {
    this.f.add(paramM);
  }

  public final void a(h paramh)
  {
    h();
    if (paramh == null)
      throw new IllegalArgumentException("Message body may not be null");
    this.g.lock();
    try
    {
      if ((!c()) && (!a(paramh)))
        throw new aa("Cannot send message when session is closed");
    }
    finally
    {
      this.g.unlock();
    }
    long l1 = this.o.a();
    if (TextUtils.isEmpty(paramh.e()))
      this.x = l1;
    g localg = this.s;
    h localh;
    if ((localg == null) && (this.t.isEmpty()))
    {
      g();
      i locali2 = i.a(paramh);
      locali2.a(E.q, this.l.b());
      locali2.a(E.u, this.l.d());
      locali2.a(E.s, C.b().toString());
      locali2.a(E.t, "300");
      locali2.a(E.f, "1");
      locali2.a(E.m, Long.toString(l1));
      g();
      String str1 = this.l.e();
      if (str1 != null)
        locali2.a(E.n, str1);
      g();
      String str2 = this.l.c();
      if (str2 != null)
        locali2.a(E.e, str2);
      locali2.a(E.b, "1");
      locali2.a(E.o, null);
      localh = locali2.a();
    }
    while (true)
    {
      j localj = new j(localh);
      a(localj);
      this.h.signalAll();
      f();
      this.g.unlock();
      p localp = localj.a();
      localj.a(this.n.a(localg, localp, this.z));
      e(localp);
      return;
      g();
      i locali1 = i.a(paramh);
      locali1.a(E.o, this.s.a().toString());
      locali1.a(E.m, Long.toString(l1));
      localh = locali1.a();
      if (!this.s.f())
        continue;
      this.w.add(localh);
    }
  }

  public final void b()
  {
    if (this.q == null);
    do
    {
      return;
      if ((System.currentTimeMillis() - this.y <= 30000L) || (this.q.getActiveCount() <= 1))
        continue;
      a(new aa("SMACK-BOSH: request timeout happened, reset connection"));
      return;
    }
    while ((this.q.getActiveCount() > 0) && (!e()));
    this.g.lock();
    try
    {
      a(0L);
      return;
    }
    finally
    {
      this.g.unlock();
    }
    throw localObject;
  }

  public final void b(h paramh)
  {
    if (paramh == null)
      throw new IllegalArgumentException("Message body may not be null");
    i locali = i.a(paramh);
    locali.a(E.r, "terminate");
    a(locali.a());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.F
 * JD-Core Version:    0.6.0
 */