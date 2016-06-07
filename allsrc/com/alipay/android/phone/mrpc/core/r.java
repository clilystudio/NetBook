package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy;
import java.util.concurrent.TimeUnit;

public final class r
  implements c
{
  private static r b = null;
  private static final ThreadFactory i = new t();
  Context a;
  private ThreadPoolExecutor c;
  private e d;
  private long e;
  private long f;
  private long g;
  private int h;

  private r(Context paramContext)
  {
    this.a = paramContext;
    this.d = e.a("android");
    this.c = new ThreadPoolExecutor(10, 11, 3L, TimeUnit.SECONDS, new ArrayBlockingQueue(20), i, new ThreadPoolExecutor.CallerRunsPolicy());
    try
    {
      this.c.allowCoreThreadTimeOut(true);
      label66: CookieSyncManager.createInstance(this.a);
      CookieManager.getInstance().setAcceptCookie(true);
      return;
    }
    catch (Exception localException)
    {
      break label66;
    }
  }

  public static final r a(Context paramContext)
  {
    if (b != null)
      return b;
    return b(paramContext);
  }

  private static final r b(Context paramContext)
  {
    monitorenter;
    try
    {
      r localr;
      if (b != null)
        localr = b;
      while (true)
      {
        return localr;
        localr = new r(paramContext);
        b = localr;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final e a()
  {
    return this.d;
  }

  public final Future<z> a(y paramy)
  {
    long l1 = 0L;
    String str;
    Object[] arrayOfObject;
    long l2;
    if (x.a(this.a))
    {
      str = "HttpManager" + hashCode() + ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times";
      arrayOfObject = new Object[9];
      arrayOfObject[0] = Integer.valueOf(this.c.getActiveCount());
      arrayOfObject[1] = Long.valueOf(this.c.getCompletedTaskCount());
      arrayOfObject[2] = Long.valueOf(this.c.getTaskCount());
      if (this.g != l1)
        break label218;
      l2 = l1;
      arrayOfObject[3] = Long.valueOf(l2);
      if (this.h != 0)
        break label239;
    }
    while (true)
    {
      arrayOfObject[4] = Long.valueOf(l1);
      arrayOfObject[5] = Long.valueOf(this.e);
      arrayOfObject[6] = Long.valueOf(this.f);
      arrayOfObject[7] = Long.valueOf(this.g);
      arrayOfObject[8] = Integer.valueOf(this.h);
      String.format(str, arrayOfObject);
      w localw = new w(this, (u)paramy);
      s locals = new s(this, localw, localw);
      this.c.execute(locals);
      return locals;
      label218: l2 = 1000L * this.e / this.g >> 10;
      break;
      label239: l1 = this.f / this.h;
    }
  }

  public final void a(long paramLong)
  {
    this.e = (paramLong + this.e);
  }

  public final void b(long paramLong)
  {
    this.f = (paramLong + this.f);
    this.h = (1 + this.h);
  }

  public final void c(long paramLong)
  {
    this.g = (paramLong + this.g);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.r
 * JD-Core Version:    0.6.0
 */