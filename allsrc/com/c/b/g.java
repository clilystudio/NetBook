package com.c.b;

import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

final class g extends a
{
  private final WeakReference<ViewPropertyAnimator> a;

  g(View paramView)
  {
    this.a = new WeakReference(paramView.animate());
  }

  public final a a(float paramFloat)
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.rotation(paramFloat);
    return this;
  }

  public final a a(long paramLong)
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.setDuration(150L);
    return this;
  }

  public final a a(Interpolator paramInterpolator)
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.setInterpolator(paramInterpolator);
    return this;
  }

  public final void a()
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.start();
  }

  public final a b(float paramFloat)
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.translationY(paramFloat);
    return this;
  }

  public final a b(long paramLong)
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.setStartDelay(paramLong);
    return this;
  }

  public final a c(float paramFloat)
  {
    ViewPropertyAnimator localViewPropertyAnimator = (ViewPropertyAnimator)this.a.get();
    if (localViewPropertyAnimator != null)
      localViewPropertyAnimator.alpha(paramFloat);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.g
 * JD-Core Version:    0.6.0
 */