package android.support.v7.widget;

import android.view.animation.Interpolator;

final class ae
  implements Interpolator
{
  public final float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * (f * (f * f)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ae
 * JD-Core Version:    0.6.0
 */