package uk.co.senab.photoview;

import android.graphics.Matrix;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.arcsoft.hpay100.a.a;

final class g
  implements Runnable
{
  private final float a;
  private final float b;
  private final long c;
  private final float d;
  private final float e;

  public g(d paramd, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.a = paramFloat3;
    this.b = paramFloat4;
    this.c = System.currentTimeMillis();
    this.d = paramFloat1;
    this.e = paramFloat2;
  }

  public final void run()
  {
    ImageView localImageView = this.f.c();
    if (localImageView == null);
    float f2;
    do
    {
      return;
      float f1 = Math.min(1.0F, 1.0F * (float)(System.currentTimeMillis() - this.c) / this.f.b);
      f2 = d.a.getInterpolation(f1);
      float f3 = (this.d + f2 * (this.e - this.d)) / this.f.g();
      d.b(this.f).postScale(f3, f3, this.a, this.b);
      d.c(this.f);
    }
    while (f2 >= 1.0F);
    a.a(localImageView, this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.g
 * JD-Core Version:    0.6.0
 */