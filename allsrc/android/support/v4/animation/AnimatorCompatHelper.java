package android.support.v4.animation;

import android.os.Build.VERSION;

public abstract class AnimatorCompatHelper
{
  static AnimatorProvider IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      IMPL = new HoneycombMr1AnimatorCompatProvider();
      return;
    }
    IMPL = new DonutAnimatorCompatProvider();
  }

  public static ValueAnimatorCompat emptyValueAnimator()
  {
    return IMPL.emptyValueAnimator();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.animation.AnimatorCompatHelper
 * JD-Core Version:    0.6.0
 */