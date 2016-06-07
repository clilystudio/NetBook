package com.xiaomi.mistatistic.sdk.a;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

public final class A
{
  private static A a;
  private static long c = 30000L;
  private Handler b = new B(this, Looper.getMainLooper());

  public static A a()
  {
    if (a == null)
      a = new A();
    return a;
  }

  public final void a(Activity paramActivity, String paramString)
  {
    this.b.removeMessages(31415927);
    g.a().a(new C(this, paramActivity, paramString));
  }

  public final void b()
  {
    g.a().a(new b(this));
    this.b.sendEmptyMessageDelayed(31415927, c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.A
 * JD-Core Version:    0.6.0
 */