package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.R.styleable;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout.LayoutParams;

public final class g extends LinearLayout.LayoutParams
{
  int a = 1;
  Interpolator b;

  public g(int paramInt1, int paramInt2)
  {
    super(-1, -2);
  }

  public g(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout_LayoutParams);
    this.a = localTypedArray.getInt(R.styleable.AppBarLayout_LayoutParams_layout_scrollFlags, 0);
    if (localTypedArray.hasValue(R.styleable.AppBarLayout_LayoutParams_layout_scrollInterpolator))
      this.b = AnimationUtils.loadInterpolator(paramContext, localTypedArray.getResourceId(R.styleable.AppBarLayout_LayoutParams_layout_scrollInterpolator, 0));
    localTypedArray.recycle();
  }

  public g(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }

  public g(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }

  public g(LinearLayout.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.g
 * JD-Core Version:    0.6.0
 */