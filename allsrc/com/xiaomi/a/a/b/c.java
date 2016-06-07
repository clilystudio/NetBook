package com.xiaomi.a.a.b;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class c extends Thread
{
  private final LinkedBlockingQueue<d> a = new LinkedBlockingQueue();

  public c(b paramb)
  {
    super("PackageProcessor");
  }

  public final void a(d paramd)
  {
    this.a.add(paramd);
  }

  public final void run()
  {
    while (!b.a(this.b))
      try
      {
        b.a(this.b, (d)this.a.poll(1L, TimeUnit.SECONDS));
        if (b.b(this.b) == null)
          continue;
        Message localMessage1 = b.c(this.b).obtainMessage(0, b.b(this.b));
        b.c(this.b).sendMessage(localMessage1);
        b.b(this.b).a();
        Message localMessage2 = b.c(this.b).obtainMessage(1, b.b(this.b));
        b.c(this.b).sendMessage(localMessage2);
      }
      catch (InterruptedException localInterruptedException)
      {
        com.xiaomi.a.a.a.b.a(localInterruptedException);
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.a.a.b.c
 * JD-Core Version:    0.6.0
 */