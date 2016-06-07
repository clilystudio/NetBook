package android.support.v4.animation;

import android.animation.ValueAnimator;

class HoneycombMr1AnimatorCompatProvider
  implements AnimatorProvider
{
  public ValueAnimatorCompat emptyValueAnimator()
  {
    return new HoneycombMr1AnimatorCompatProvider.HoneycombValueAnimatorCompat(ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F }));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.animation.HoneycombMr1AnimatorCompatProvider
 * JD-Core Version:    0.6.0
 */