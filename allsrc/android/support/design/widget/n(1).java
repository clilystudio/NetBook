package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.R.styleable;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;

public final class n extends FrameLayout.LayoutParams
{
  int a = 0;
  float b = 0.5F;

  public n(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingAppBarLayout_LayoutParams);
    this.a = localTypedArray.getInt(R.styleable.CollapsingAppBarLayout_LayoutParams_layout_collapseMode, 0);
    this.b = localTypedArray.getFloat(R.styleable.CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier, 0.5F);
    localTypedArray.recycle();
  }

  public n(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }

  public n(FrameLayout.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.n
 * JD-Core Version:    0.6.0
 */