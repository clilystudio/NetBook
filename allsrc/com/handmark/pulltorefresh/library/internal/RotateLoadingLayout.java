package com.handmark.pulltorefresh.library.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Orientation;
import com.handmark.pulltorefresh.library.R.drawable;
import com.handmark.pulltorefresh.library.R.styleable;

public class RotateLoadingLayout extends LoadingLayout
{
  private final Animation f;
  private final Matrix g;
  private float h;
  private float i;
  private final boolean j;

  public RotateLoadingLayout(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    super(paramContext, paramMode, paramOrientation, paramTypedArray);
    this.j = paramTypedArray.getBoolean(R.styleable.PullToRefresh_ptrRotateDrawableWhilePulling, true);
    this.b.setScaleType(ImageView.ScaleType.MATRIX);
    this.g = new Matrix();
    this.b.setImageMatrix(this.g);
    this.f = new RotateAnimation(0.0F, 720.0F, 1, 0.5F, 1, 0.5F);
    this.f.setInterpolator(a);
    this.f.setDuration(1200L);
    this.f.setRepeatCount(-1);
    this.f.setRepeatMode(1);
  }

  protected final void a()
  {
  }

  protected final void a(float paramFloat)
  {
    float f1;
    if (this.j)
      f1 = 90.0F * paramFloat;
    while (true)
    {
      this.g.setRotate(f1, this.h, this.i);
      this.b.setImageMatrix(this.g);
      return;
      f1 = Math.max(0.0F, Math.min(180.0F, 360.0F * paramFloat - 180.0F));
    }
  }

  public final void a(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      this.h = Math.round(paramDrawable.getIntrinsicWidth() / 2.0F);
      this.i = Math.round(paramDrawable.getIntrinsicHeight() / 2.0F);
    }
  }

  protected final void b()
  {
    this.b.startAnimation(this.f);
  }

  protected final void c()
  {
  }

  protected final void d()
  {
    this.b.clearAnimation();
    if (this.g != null)
    {
      this.g.reset();
      this.b.setImageMatrix(this.g);
    }
  }

  protected final int e()
  {
    return R.drawable.default_ptr_rotate;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.internal.RotateLoadingLayout
 * JD-Core Version:    0.6.0
 */