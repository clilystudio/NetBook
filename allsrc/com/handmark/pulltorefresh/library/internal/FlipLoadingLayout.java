package com.handmark.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Orientation;
import com.handmark.pulltorefresh.library.R.drawable;

@SuppressLint({"ViewConstructor"})
public class FlipLoadingLayout extends LoadingLayout
{
  private final Animation f;
  private final Animation g;

  public FlipLoadingLayout(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    super(paramContext, paramMode, paramOrientation, paramTypedArray);
    if (paramMode == PullToRefreshBase.Mode.PULL_FROM_START);
    int j;
    for (int i = -180; ; j = 180)
    {
      this.f = new RotateAnimation(0.0F, i, 1, 0.5F, 1, 0.5F);
      this.f.setInterpolator(a);
      this.f.setDuration(150L);
      this.f.setFillAfter(true);
      this.g = new RotateAnimation(i, 0.0F, 1, 0.5F, 1, 0.5F);
      this.g.setInterpolator(a);
      this.g.setDuration(150L);
      this.g.setFillAfter(true);
      return;
    }
  }

  protected final void a()
  {
    if (this.f == this.b.getAnimation())
      this.b.startAnimation(this.g);
  }

  protected final void a(float paramFloat)
  {
  }

  protected final void a(Drawable paramDrawable)
  {
    ViewGroup.LayoutParams localLayoutParams;
    Matrix localMatrix;
    float f1;
    if (paramDrawable != null)
    {
      int i = paramDrawable.getIntrinsicHeight();
      int j = paramDrawable.getIntrinsicWidth();
      localLayoutParams = this.b.getLayoutParams();
      int k = Math.max(i, j);
      localLayoutParams.height = k;
      localLayoutParams.width = k;
      this.b.requestLayout();
      this.b.setScaleType(ImageView.ScaleType.MATRIX);
      localMatrix = new Matrix();
      localMatrix.postTranslate((localLayoutParams.width - j) / 2.0F, (localLayoutParams.height - i) / 2.0F);
      int m = b.a[this.d.ordinal()];
      f1 = 0.0F;
      switch (m)
      {
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      localMatrix.postRotate(f1, localLayoutParams.width / 2.0F, localLayoutParams.height / 2.0F);
      this.b.setImageMatrix(localMatrix);
      return;
      if (this.e == PullToRefreshBase.Orientation.HORIZONTAL)
      {
        f1 = 90.0F;
        continue;
      }
      f1 = 180.0F;
      continue;
      PullToRefreshBase.Orientation localOrientation1 = this.e;
      PullToRefreshBase.Orientation localOrientation2 = PullToRefreshBase.Orientation.HORIZONTAL;
      f1 = 0.0F;
      if (localOrientation1 != localOrientation2)
        continue;
      f1 = 270.0F;
    }
  }

  protected final void b()
  {
    this.b.clearAnimation();
    this.b.setVisibility(4);
    m();
  }

  protected final void c()
  {
    this.b.startAnimation(this.f);
  }

  protected final void d()
  {
    this.b.clearAnimation();
    n();
    this.b.setVisibility(0);
  }

  protected final int e()
  {
    return R.drawable.ptr_flip;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.internal.FlipLoadingLayout
 * JD-Core Version:    0.6.0
 */