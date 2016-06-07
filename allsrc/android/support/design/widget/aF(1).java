package android.support.design.widget;

import android.animation.ValueAnimator;
import android.view.animation.Interpolator;

final class aF extends aA
{
  private ValueAnimator a = new ValueAnimator();

  public final void a()
  {
    this.a.start();
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    this.a.setFloatValues(new float[] { paramFloat1, paramFloat2 });
  }

  public final void a(int paramInt)
  {
    this.a.setDuration(paramInt);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.a.setIntValues(new int[] { paramInt1, paramInt2 });
  }

  public final void a(aB paramaB)
  {
    this.a.addListener(new aH(this, paramaB));
  }

  public final void a(aC paramaC)
  {
    this.a.addUpdateListener(new aG(this, paramaC));
  }

  public final void a(Interpolator paramInterpolator)
  {
    this.a.setInterpolator(paramInterpolator);
  }

  public final boolean b()
  {
    return this.a.isRunning();
  }

  public final int c()
  {
    return ((Integer)this.a.getAnimatedValue()).intValue();
  }

  public final float d()
  {
    return ((Float)this.a.getAnimatedValue()).floatValue();
  }

  public final void e()
  {
    this.a.cancel();
  }

  public final float f()
  {
    return this.a.getAnimatedFraction();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aF
 * JD-Core Version:    0.6.0
 */