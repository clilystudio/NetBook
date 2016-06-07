package com.xiaomi.smack;

import android.util.Pair;
import com.xiaomi.a.a.a.b;
import com.xiaomi.push.service.R;
import com.xiaomi.push.service.U;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.smack.packet.e;
import com.xiaomi.smack.packet.f;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class l
{
  private static final AtomicInteger a = new AtomicInteger(0);
  public static boolean c = false;
  private LinkedList<Pair<Integer, Long>> b = new LinkedList();
  protected int d = 0;
  protected long e = -1L;
  protected final Map<p, m> f = new ConcurrentHashMap();
  protected final Map<p, m> g = new ConcurrentHashMap();
  protected com.xiaomi.smack.a.a h = null;
  protected Reader i;
  protected Writer j;
  protected String k = "";
  protected final int l = a.getAndIncrement();
  protected n m;
  protected XMPushService n;
  private final Collection<o> o = new CopyOnWriteArrayList();
  private int p = 2;
  private long q = 0L;

  static
  {
    try
    {
      c = Boolean.getBoolean("smack.debugEnabled");
      label23: t.a();
      return;
    }
    catch (Exception localException)
    {
      break label23;
    }
  }

  protected l(XMPushService paramXMPushService, n paramn)
  {
    this.m = paramn;
    this.n = paramXMPushService;
  }

  private static String a(int paramInt)
  {
    if (paramInt == 1)
      return "connected";
    if (paramInt == 0)
      return "connecting";
    if (paramInt == 2)
      return "disconnected";
    return "unknown";
  }

  public final void a(int paramInt1, int paramInt2, Exception paramException)
  {
    if (paramInt1 != this.p)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = a(this.p);
      arrayOfObject[1] = a(paramInt1);
      arrayOfObject[2] = U.a(paramInt2);
      b.a(String.format("update the connection status. %1$s -> %2$s : %3$s ", arrayOfObject));
    }
    LinkedList localLinkedList;
    if (com.xiaomi.a.a.c.a.b(this.n))
    {
      localLinkedList = this.b;
      monitorenter;
      if (paramInt1 != 1)
        break label155;
    }
    try
    {
      this.b.clear();
      while (true)
      {
        monitorexit;
        if (paramInt1 != 1)
          break;
        this.n.a(10);
        if (this.p != 0)
          b.a("try set connected while not connecting.");
        this.p = paramInt1;
        Iterator localIterator4 = this.o.iterator();
        while (localIterator4.hasNext())
          ((o)localIterator4.next()).b();
        label155: this.b.add(new Pair(Integer.valueOf(paramInt1), Long.valueOf(System.currentTimeMillis())));
        if (this.b.size() <= 6)
          continue;
        this.b.remove(0);
      }
    }
    finally
    {
      monitorexit;
    }
    if (paramInt1 == 0)
    {
      this.n.h();
      if (this.p != 2)
        b.a("try set connecting while not disconnected.");
      this.p = paramInt1;
      Iterator localIterator3 = this.o.iterator();
      while (localIterator3.hasNext())
        ((o)localIterator3.next()).c();
    }
    if (paramInt1 == 2)
    {
      this.n.a(10);
      if (this.p == 0)
      {
        Iterator localIterator2 = this.o.iterator();
        if (localIterator2.hasNext())
        {
          o localo = (o)localIterator2.next();
          if (paramException == null);
          for (Object localObject1 = new CancellationException("disconnect while connecting"); ; localObject1 = paramException)
          {
            localo.a((Exception)localObject1);
            break;
          }
        }
      }
      else if (this.p == 1)
      {
        Iterator localIterator1 = this.o.iterator();
        while (localIterator1.hasNext())
          ((o)localIterator1.next()).a();
      }
      this.p = paramInt1;
    }
  }

  public abstract void a(R paramR);

  public final void a(o paramo)
  {
    if (paramo == null);
    do
      return;
    while (this.o.contains(paramo));
    this.o.add(paramo);
  }

  public final void a(p paramp, com.xiaomi.smack.b.a parama)
  {
    if (paramp == null)
      throw new NullPointerException("Packet listener is null.");
    m localm = new m(paramp, parama);
    this.f.put(paramp, localm);
  }

  public abstract void a(e parame);

  public abstract void a(f paramf, int paramInt, Exception paramException);

  public final void a(String paramString)
  {
    this.k = paramString;
    a(1, 0, null);
  }

  public abstract void a(String paramString1, String paramString2);

  public abstract void a(e[] paramArrayOfe);

  public final boolean a(long paramLong)
  {
    return this.q >= paramLong;
  }

  protected void b()
  {
    if ((this.i == null) || (this.j == null));
    do
      return;
    while (!this.m.i());
    if (this.h == null)
      try
      {
        String str2 = System.getProperty("smack.debuggerClass");
        str1 = str2;
        localObject = null;
        if (str1 == null);
      }
      catch (Throwable localThrowable)
      {
        try
        {
          String str1;
          Class localClass = Class.forName(str1);
          localObject = localClass;
          if (localObject == null)
          {
            this.h = new com.xiaomi.b.a.a(this, this.j, this.i);
            this.i = this.h.a();
            this.j = this.h.b();
            return;
            localThrowable = localThrowable;
            str1 = null;
          }
        }
        catch (Exception localException2)
        {
          Object localObject;
          while (true)
          {
            localException2.printStackTrace();
            localObject = null;
          }
          try
          {
            Constructor localConstructor = localObject.getConstructor(new Class[] { l.class, Writer.class, Reader.class });
            Object[] arrayOfObject = new Object[3];
            arrayOfObject[0] = this;
            arrayOfObject[1] = this.j;
            arrayOfObject[2] = this.i;
            this.h = ((com.xiaomi.smack.a.a)localConstructor.newInstance(arrayOfObject));
            this.i = this.h.a();
            this.j = this.h.b();
            return;
          }
          catch (Exception localException1)
          {
            throw new IllegalArgumentException("Can't initialize the configured debugger!", localException1);
          }
        }
      }
    this.i = this.h.a(this.i);
    this.j = this.h.a(this.j);
  }

  public final void b(o paramo)
  {
    this.o.remove(paramo);
  }

  public abstract void c();

  protected final void c(e parame)
  {
    Iterator localIterator = this.g.values().iterator();
    while (localIterator.hasNext())
      ((m)localIterator.next()).a(parame);
  }

  public final String d()
  {
    return this.m.e();
  }

  public String e()
  {
    return this.m.h();
  }

  public final String f()
  {
    return this.m.f();
  }

  public final int g()
  {
    return this.m.g();
  }

  public final Collection<o> h()
  {
    return this.o;
  }

  public final boolean i()
  {
    return this.p == 0;
  }

  public final boolean j()
  {
    return this.p == 1;
  }

  public final int k()
  {
    return this.d;
  }

  public final void l()
  {
    this.d = 0;
  }

  public final long m()
  {
    return this.e;
  }

  public final void n()
  {
    this.e = -1L;
  }

  public final int o()
  {
    return this.p;
  }

  public final void p()
  {
    this.q = System.currentTimeMillis();
  }

  public final boolean q()
  {
    return System.currentTimeMillis() - this.q < t.c();
  }

  public final boolean r()
  {
    ArrayList localArrayList;
    synchronized (this.b)
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        if (System.currentTimeMillis() - ((Long)localPair.second).longValue() >= 1800000L)
          continue;
        localArrayList.add(localPair);
      }
    }
    this.b.clear();
    this.b.addAll(localArrayList);
    if (this.b.size() >= 6);
    for (int i1 = 1; ; i1 = 0)
    {
      monitorexit;
      return i1;
    }
  }

  public final void s()
  {
    synchronized (this.b)
    {
      this.b.clear();
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.l
 * JD-Core Version:    0.6.0
 */