package com.squareup.okhttp;

import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.l;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class n
{
  private static final n a;
  private final int b;
  private final long c;
  private final LinkedList<m> d = new LinkedList();
  private Executor e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), l.a("OkHttp ConnectionPool", true));
  private final Runnable f = new o(this);

  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    long l;
    if (str2 != null)
      l = Long.parseLong(str2);
    while ((str1 != null) && (!Boolean.parseBoolean(str1)))
    {
      a = new n(0, l);
      return;
      l = 300000L;
    }
    if (str3 != null)
    {
      a = new n(Integer.parseInt(str3), l);
      return;
    }
    a = new n(5, l);
  }

  private n(int paramInt, long paramLong)
  {
    this.b = paramInt;
    this.c = (1000L * (paramLong * 1000L));
  }

  public static n a()
  {
    return a;
  }

  private boolean b()
  {
    monitorenter;
    while (true)
    {
      ArrayList localArrayList;
      int i;
      long l2;
      m localm2;
      long l4;
      try
      {
        if (this.d.isEmpty())
          return false;
        localArrayList = new ArrayList();
        i = 0;
        long l1 = System.nanoTime();
        l2 = this.c;
        ListIterator localListIterator1 = this.d.listIterator(this.d.size());
        if (!localListIterator1.hasPrevious())
          break label158;
        localm2 = (m)localListIterator1.previous();
        l4 = localm2.h() + this.c - l1;
        if ((l4 <= 0L) || (!localm2.d()))
        {
          localListIterator1.remove();
          localArrayList.add(localm2);
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      long l5;
      int i1;
      label158: int m;
      if (localm2.g())
      {
        int n = i + 1;
        l5 = Math.min(l2, l4);
        i1 = n;
        break label342;
        ListIterator localListIterator2 = this.d.listIterator(this.d.size());
        if ((localListIterator2.hasPrevious()) && (i > this.b))
        {
          m localm1 = (m)localListIterator2.previous();
          if (localm1.g())
          {
            localArrayList.add(localm1);
            localListIterator2.remove();
            m = i - 1;
            break label356;
          }
        }
        else
        {
          boolean bool = localArrayList.isEmpty();
          if (!bool);
        }
      }
      try
      {
        long l3 = l2 / 1000000L;
        wait(l3, (int)(l2 - 1000000L * l3));
        monitorexit;
        return true;
        label277: monitorexit;
        int j = localArrayList.size();
        for (int k = 0; k < j; k++)
          l.a(((m)localArrayList.get(k)).c());
        return true;
        m = i;
        break label356;
        long l7 = l2;
        i1 = i;
        l5 = l7;
        label342: long l6 = l5;
        i = i1;
        l2 = l6;
        continue;
        label356: i = m;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label277;
      }
    }
  }

  private void c(m paramm)
  {
    boolean bool = this.d.isEmpty();
    this.d.addFirst(paramm);
    if (bool)
    {
      this.e.execute(this.f);
      return;
    }
    notifyAll();
  }

  public final m a(a parama)
  {
    monitorenter;
    while (true)
    {
      try
      {
        ListIterator localListIterator = this.d.listIterator(this.d.size());
        if (localListIterator.hasPrevious())
        {
          localm = (m)localListIterator.previous();
          if ((!localm.b().a.equals(parama)) || (!localm.d()) || (System.nanoTime() - localm.h() >= this.c))
            continue;
          localListIterator.remove();
          boolean bool = localm.j();
          if (bool)
            continue;
          try
          {
            g.a().a(localm.c());
            if ((localm == null) || (!localm.j()))
              continue;
            this.d.addFirst(localm);
            monitorexit;
            return localm;
          }
          catch (SocketException localSocketException)
          {
            l.a(localm.c());
            g.a();
            g.a("Unable to tagSocket(): " + localSocketException);
          }
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      m localm = null;
    }
  }

  final void a(m paramm)
  {
    if (paramm.j());
    do
      return;
    while (!paramm.a());
    if (!paramm.d())
    {
      l.a(paramm.c());
      return;
    }
    try
    {
      g.a().b(paramm.c());
      monitorenter;
      try
      {
        c(paramm);
        paramm.l();
        paramm.f();
        return;
      }
      finally
      {
        monitorexit;
      }
    }
    catch (SocketException localSocketException)
    {
      g.a();
      g.a("Unable to untagSocket(): " + localSocketException);
      l.a(paramm.c());
    }
  }

  final void b(m paramm)
  {
    if (!paramm.j())
      throw new IllegalArgumentException();
    if (!paramm.d())
      return;
    monitorenter;
    try
    {
      c(paramm);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.n
 * JD-Core Version:    0.6.0
 */