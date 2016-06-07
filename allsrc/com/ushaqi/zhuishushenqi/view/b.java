package com.ushaqi.zhuishushenqi.view;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import uk.co.senab.photoview.d;

final class b
  implements ViewTreeObserver.OnPreDrawListener
{
  b(CropView paramCropView)
  {
  }

  public final boolean onPreDraw()
  {
    float f1 = this.a.getWidth();
    float f2 = f1 / CropView.a(this.a);
    if (f2 >= this.a.getHeight())
    {
      f1 *= this.a.getHeight() / f2;
      f2 = this.a.getHeight();
    }
    float f3 = Math.min(f1, f2);
    float f4 = CropView.b(this.a) / f3;
    CropView.c(this.a).d(f4);
    this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    CropView.c(this.a).a(f4, false);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.view.b
 * JD-Core Version:    0.6.0
 */