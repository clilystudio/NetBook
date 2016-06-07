package com.handmark.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.R.anim;
import com.handmark.pulltorefresh.library.R.dimen;
import com.handmark.pulltorefresh.library.R.drawable;

@SuppressLint({"ViewConstructor"})
public class IndicatorLayout extends FrameLayout
  implements Animation.AnimationListener
{
  private Animation a;
  private Animation b;
  private ImageView c;
  private final Animation d;
  private final Animation e;

  public IndicatorLayout(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext);
    this.c = new ImageView(paramContext);
    Drawable localDrawable = getResources().getDrawable(R.drawable.indicator_arrow);
    this.c.setImageDrawable(localDrawable);
    int i = getResources().getDimensionPixelSize(R.dimen.indicator_internal_padding);
    this.c.setPadding(i, i, i, i);
    addView(this.c);
    int j;
    int k;
    switch (c.a[paramMode.ordinal()])
    {
    default:
      j = R.anim.slide_in_from_top;
      k = R.anim.slide_out_to_top;
      setBackgroundResource(R.drawable.indicator_bg_top);
    case 1:
    }
    while (true)
    {
      this.a = AnimationUtils.loadAnimation(paramContext, j);
      this.a.setAnimationListener(this);
      this.b = AnimationUtils.loadAnimation(paramContext, k);
      this.b.setAnimationListener(this);
      LinearInterpolator localLinearInterpolator = new LinearInterpolator();
      this.d = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
      this.d.setInterpolator(localLinearInterpolator);
      this.d.setDuration(150L);
      this.d.setFillAfter(true);
      this.e = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
      this.e.setInterpolator(localLinearInterpolator);
      this.e.setDuration(150L);
      this.e.setFillAfter(true);
      return;
      j = R.anim.slide_in_from_bottom;
      k = R.anim.slide_out_to_bottom;
      setBackgroundResource(R.drawable.indicator_bg_bottom);
      this.c.setScaleType(ImageView.ScaleType.MATRIX);
      Matrix localMatrix = new Matrix();
      localMatrix.setRotate(180.0F, localDrawable.getIntrinsicWidth() / 2.0F, localDrawable.getIntrinsicHeight() / 2.0F);
      this.c.setImageMatrix(localMatrix);
    }
  }

  public final boolean a()
  {
    Animation localAnimation = getAnimation();
    if (localAnimation != null)
      if (this.a != localAnimation);
    do
    {
      return true;
      return false;
    }
    while (getVisibility() == 0);
    return false;
  }

  public final void b()
  {
    startAnimation(this.b);
  }

  public final void c()
  {
    this.c.clearAnimation();
    startAnimation(this.a);
  }

  public final void d()
  {
    this.c.startAnimation(this.d);
  }

  public final void e()
  {
    this.c.startAnimation(this.e);
  }

  public void onAnimationEnd(Animation paramAnimation)
  {
    if (paramAnimation == this.b)
    {
      this.c.clearAnimation();
      setVisibility(8);
    }
    while (true)
    {
      clearAnimation();
      return;
      if (paramAnimation != this.a)
        continue;
      setVisibility(0);
    }
  }

  public void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public void onAnimationStart(Animation paramAnimation)
  {
    setVisibility(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.internal.IndicatorLayout
 * JD-Core Version:    0.6.0
 */