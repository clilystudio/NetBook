package android.support.v7.internal.view;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public final class h
{
  private final ArrayList<ViewPropertyAnimatorCompat> a = new ArrayList();
  private long b = -1L;
  private Interpolator c;
  private ViewPropertyAnimatorListener d;
  private boolean e;
  private final ViewPropertyAnimatorListenerAdapter f = new i(this);

  public final h a(long paramLong)
  {
    if (!this.e)
      this.b = 250L;
    return this;
  }

  public final h a(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    if (!this.e)
      this.a.add(paramViewPropertyAnimatorCompat);
    return this;
  }

  public final h a(ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    if (!this.e)
      this.d = paramViewPropertyAnimatorListener;
    return this;
  }

  public final h a(Interpolator paramInterpolator)
  {
    if (!this.e)
      this.c = paramInterpolator;
    return this;
  }

  public final void a()
  {
    if (this.e)
      return;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat)localIterator.next();
      if (this.b >= 0L)
        localViewPropertyAnimatorCompat.setDuration(this.b);
      if (this.c != null)
        localViewPropertyAnimatorCompat.setInterpolator(this.c);
      if (this.d != null)
        localViewPropertyAnimatorCompat.setListener(this.f);
      localViewPropertyAnimatorCompat.start();
    }
    this.e = true;
  }

  public final void b()
  {
    if (!this.e)
      return;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((ViewPropertyAnimatorCompat)localIterator.next()).cancel();
    this.e = false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.h
 * JD-Core Version:    0.6.0
 */