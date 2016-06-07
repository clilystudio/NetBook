package com.xiaomi.network;

import java.util.Iterator;
import java.util.List;
import java.util.TimerTask;
import org.apache.thrift.e;

final class m extends TimerTask
{
  m(i parami)
  {
  }

  public final void run()
  {
    Iterator localIterator = i.a(this.a).iterator();
    while (localIterator.hasNext())
    {
      j localj = (j)localIterator.next();
      List localList = localj.a();
      double d = localj.b();
      if (localList == null)
        continue;
      try
      {
        if (localList.size() <= 0)
          continue;
        i.a(this.a, localList, d);
      }
      catch (e locale)
      {
        locale.printStackTrace();
      }
    }
    i.a(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.m
 * JD-Core Version:    0.6.0
 */