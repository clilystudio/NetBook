package com.mob.tools.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.mob.tools.e;
import com.mob.tools.log.d;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class b
  implements ServiceConnection
{
  private boolean a = false;
  private final BlockingQueue<IBinder> b = new LinkedBlockingQueue();

  private b(a parama)
  {
  }

  public final IBinder a()
  {
    if (this.a)
      throw new IllegalStateException();
    this.a = true;
    return (IBinder)this.b.poll(1500L, TimeUnit.MILLISECONDS);
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.b.put(paramIBinder);
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.b
 * JD-Core Version:    0.6.0
 */