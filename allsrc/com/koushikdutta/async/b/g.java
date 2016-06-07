package com.koushikdutta.async.b;

import com.koushikdutta.async.a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class g<T> extends e
  implements c<T>
{
  private a a;
  private Exception b;
  private T c;
  private boolean d;
  private d<T> e;

  private boolean a(boolean paramBoolean)
  {
    if (!super.b())
      return false;
    monitorenter;
    try
    {
      this.b = new CancellationException();
      f();
      d locald = e();
      this.d = paramBoolean;
      monitorexit;
      c(locald);
      return true;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void c(d<T> paramd)
  {
    if ((paramd != null) && (!this.d))
      paramd.a(this.b, this.c);
  }

  private g<T> d(d<T> paramd)
  {
    monitorenter;
    try
    {
      this.e = paramd;
      if ((isDone()) || (isCancelled()));
      for (d locald = e(); ; locald = null)
      {
        monitorexit;
        c(locald);
        return this;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private T d()
  {
    if (this.b != null)
      throw new ExecutionException(this.b);
    return this.c;
  }

  private d<T> e()
  {
    d locald = this.e;
    this.e = null;
    return locald;
  }

  private void f()
  {
    if (this.a != null)
    {
      this.a.b();
      this.a = null;
    }
  }

  private a g()
  {
    if (this.a == null)
      this.a = new a();
    return this.a;
  }

  public final <C extends d<T>> C b(C paramC)
  {
    ((b)paramC).a(this);
    d(paramC);
    return paramC;
  }

  public final boolean b()
  {
    return a(this.d);
  }

  public final boolean b(Exception paramException, T paramT)
  {
    monitorenter;
    try
    {
      if (!super.c())
        return false;
      this.c = paramT;
      this.b = paramException;
      f();
      d locald = e();
      monitorexit;
      c(locald);
      return true;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final boolean c()
  {
    return b(null, null);
  }

  public boolean cancel(boolean paramBoolean)
  {
    return b();
  }

  public T get()
  {
    monitorenter;
    try
    {
      if ((isCancelled()) || (isDone()))
      {
        Object localObject2 = d();
        return localObject2;
      }
      a locala = g();
      monitorexit;
      locala.a();
      return d();
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    monitorenter;
    try
    {
      if ((isCancelled()) || (isDone()))
      {
        Object localObject2 = d();
        return localObject2;
      }
      a locala = g();
      monitorexit;
      if (!locala.a(paramLong, paramTimeUnit))
        throw new TimeoutException();
    }
    finally
    {
      monitorexit;
    }
    return d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.b.g
 * JD-Core Version:    0.6.0
 */