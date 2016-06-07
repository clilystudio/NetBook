package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class X
{
  private static X a;
  private final Object b = new Object();
  private final Handler c = new Handler(Looper.getMainLooper(), new Y(this));
  private Z d;

  static X a()
  {
    if (a == null)
      a = new X();
    return a;
  }

  private static boolean a(Z paramZ)
  {
    return (K)Z.a(paramZ).get() != null;
  }

  private void b(Z paramZ)
  {
    this.c.removeCallbacksAndMessages(paramZ);
    this.c.sendMessageDelayed(Message.obtain(this.c, 0, paramZ), 2750);
  }

  private boolean f(K paramK)
  {
    return (this.d != null) && (this.d.a(paramK));
  }

  public final void a(K paramK)
  {
    synchronized (this.b)
    {
      if (f(paramK))
        a(this.d);
      return;
    }
  }

  public final void b(K paramK)
  {
    synchronized (this.b)
    {
      if (f(paramK))
        this.d = null;
      return;
    }
  }

  public final void c(K paramK)
  {
    synchronized (this.b)
    {
      if (f(paramK))
        b(this.d);
      return;
    }
  }

  public final void d(K paramK)
  {
    synchronized (this.b)
    {
      if (f(paramK))
        this.c.removeCallbacksAndMessages(this.d);
      return;
    }
  }

  public final void e(K paramK)
  {
    synchronized (this.b)
    {
      if (f(paramK))
        b(this.d);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.X
 * JD-Core Version:    0.6.0
 */