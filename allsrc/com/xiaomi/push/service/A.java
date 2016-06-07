package com.xiaomi.push.service;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Pair;
import com.xiaomi.a.a.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class A extends HandlerThread
{
  private volatile long a = 0L;
  private volatile boolean b = false;
  private volatile Handler c;
  private List<Pair<e, Long>> d = new ArrayList();

  public A(String paramString)
  {
    super(paramString);
  }

  public final void a(int paramInt)
  {
    if (this.c != null)
      this.c.removeMessages(paramInt);
  }

  public final void a(int paramInt, Object paramObject)
  {
    if (this.c != null)
      this.c.removeMessages(paramInt, paramObject);
  }

  public final void a(e parame, long paramLong)
  {
    synchronized (this.d)
    {
      if (this.c != null)
      {
        Message localMessage = Message.obtain();
        localMessage.what = parame.a;
        localMessage.obj = parame;
        this.c.sendMessageDelayed(localMessage, paramLong);
        return;
      }
      b.a("the job is pended, the controller is not ready.");
      this.d.add(new Pair(parame, Long.valueOf(paramLong)));
    }
  }

  public final boolean a()
  {
    return (this.b) && (System.currentTimeMillis() - this.a > 600000L);
  }

  public final boolean b(int paramInt)
  {
    if (this.c != null)
      return this.c.hasMessages(paramInt);
    return false;
  }

  protected final void onLooperPrepared()
  {
    this.c = new B(this, getLooper());
    synchronized (this.d)
    {
      Iterator localIterator = this.d.iterator();
      if (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        b.a("executing the pending job.");
        a((e)localPair.first, ((Long)localPair.second).longValue());
      }
    }
    this.d.clear();
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.A
 * JD-Core Version:    0.6.0
 */