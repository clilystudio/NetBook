package com.ushaqi.zhuishushenqi.reader;

import android.view.animation.Interpolator;

final class N
  implements Interpolator
{
  N(PagerWidget paramPagerWidget)
  {
  }

  public final float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * (f * (f * f)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.N
 * JD-Core Version:    0.6.0
 */