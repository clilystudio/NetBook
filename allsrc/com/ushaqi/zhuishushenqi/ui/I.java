package com.ushaqi.zhuishushenqi.ui;

import android.graphics.Bitmap;
import android.view.ViewGroup.LayoutParams;
import com.nostra13.universalimageloader.core.d.a;

final class I
  implements a
{
  I(AutoScaleImageView paramAutoScaleImageView)
  {
  }

  public final void a(Bitmap paramBitmap)
  {
    float f = paramBitmap.getHeight() / paramBitmap.getWidth() * AutoScaleImageView.a(this.a);
    ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
    if (localLayoutParams != null)
    {
      localLayoutParams.height = (int)f;
      localLayoutParams.width = AutoScaleImageView.a(this.a);
      this.a.requestLayout();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.I
 * JD-Core Version:    0.6.0
 */