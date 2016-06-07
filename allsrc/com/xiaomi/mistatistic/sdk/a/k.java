package com.xiaomi.mistatistic.sdk.a;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayList;
import java.util.Iterator;

final class k extends HandlerThread
{
  public k(g paramg, String paramString)
  {
    super(paramString);
  }

  protected final void onLooperPrepared()
  {
    g.a(this.a, new Handler());
    synchronized (g.a(this.a))
    {
      boolean bool = g.a(this.a).isEmpty();
      ArrayList localArrayList2 = null;
      if (!bool)
      {
        localArrayList2 = (ArrayList)g.a(this.a).clone();
        g.a(this.a).clear();
      }
      if (localArrayList2 != null)
      {
        Iterator localIterator = localArrayList2.iterator();
        if (localIterator.hasNext())
          ((j)localIterator.next()).a();
      }
    }
    super.onLooperPrepared();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.k
 * JD-Core Version:    0.6.0
 */