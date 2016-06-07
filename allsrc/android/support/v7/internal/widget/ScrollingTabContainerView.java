package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.widget.G;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.widget.HorizontalScrollView;
import com.alipay.sdk.b.b;

public class ScrollingTabContainerView extends HorizontalScrollView
  implements y
{
  Runnable a;
  int b;
  protected ViewPropertyAnimatorCompat c;
  private L d;
  private LinearLayoutCompat e;
  private SpinnerCompat f;
  private boolean g;
  private int h;
  private int i;
  private int j;

  static
  {
    new DecelerateInterpolator();
  }

  public ScrollingTabContainerView(Context paramContext)
  {
    super(paramContext);
    new ScrollingTabContainerView.VisibilityAnimListener(this);
    setHorizontalScrollBarEnabled(false);
    b localb = b.a(paramContext);
    setContentHeight(localb.f());
    this.h = localb.h();
    LinearLayoutCompat localLinearLayoutCompat = new LinearLayoutCompat(getContext(), null, R.attr.actionBarTabBarStyle);
    localLinearLayoutCompat.setMeasureWithLargestChildEnabled(true);
    localLinearLayoutCompat.setGravity(17);
    localLinearLayoutCompat.setLayoutParams(new G(-2, -1));
    this.e = localLinearLayoutCompat;
    addView(this.e, new ViewGroup.LayoutParams(-2, -1));
  }

  private boolean a()
  {
    return (this.f != null) && (this.f.getParent() == this);
  }

  private boolean b()
  {
    if (!a())
      return false;
    removeView(this.f);
    addView(this.e, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.f.n);
    return false;
  }

  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.a != null)
      post(this.a);
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    b localb = b.a(getContext());
    setContentHeight(localb.f());
    this.h = localb.h();
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null)
      removeCallbacks(this.a);
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 1;
    int m = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    label72: label87: int i1;
    if (m == 1073741824)
    {
      bool = k;
      setFillViewport(bool);
      int n = this.e.getChildCount();
      if ((n <= k) || ((m != 1073741824) && (m != -2147483648)))
        break label339;
      if (n <= 2)
        break label326;
      this.b = (int)(0.4F * View.MeasureSpec.getSize(paramInt1));
      this.b = Math.min(this.b, this.h);
      i1 = View.MeasureSpec.makeMeasureSpec(this.i, 1073741824);
      if ((bool) || (!this.g))
        break label347;
      label110: if (k == 0)
        break label360;
      this.e.measure(0, i1);
      if (this.e.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1))
        break label352;
      if (!a())
      {
        if (this.f == null)
        {
          SpinnerCompat localSpinnerCompat = new SpinnerCompat(getContext(), null, R.attr.actionDropDownStyle);
          localSpinnerCompat.setLayoutParams(new G(-2, -1));
          localSpinnerCompat.a(this);
          this.f = localSpinnerCompat;
        }
        removeView(this.e);
        addView(this.f, new ViewGroup.LayoutParams(-2, -1));
        if (this.f.a == null)
          this.f.a(new K(this, 0));
        if (this.a != null)
        {
          removeCallbacks(this.a);
          this.a = null;
        }
        this.f.setSelection(this.j);
      }
    }
    while (true)
    {
      int i2 = getMeasuredWidth();
      super.onMeasure(paramInt1, i1);
      int i3 = getMeasuredWidth();
      if ((bool) && (i2 != i3))
        setTabSelected(this.j);
      return;
      bool = false;
      break;
      label326: this.b = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label72;
      label339: this.b = -1;
      break label87;
      label347: k = 0;
      break label110;
      label352: b();
      continue;
      label360: b();
    }
  }

  public void setAllowCollapse(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void setContentHeight(int paramInt)
  {
    this.i = paramInt;
    requestLayout();
  }

  public void setTabSelected(int paramInt)
  {
    this.j = paramInt;
    int k = this.e.getChildCount();
    int m = 0;
    if (m < k)
    {
      View localView1 = this.e.getChildAt(m);
      if (m == paramInt);
      for (boolean bool = true; ; bool = false)
      {
        localView1.setSelected(bool);
        if (bool)
        {
          View localView2 = this.e.getChildAt(paramInt);
          if (this.a != null)
            removeCallbacks(this.a);
          this.a = new J(this, localView2);
          post(this.a);
        }
        m++;
        break;
      }
    }
    if ((this.f != null) && (paramInt >= 0))
      this.f.setSelection(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ScrollingTabContainerView
 * JD-Core Version:    0.6.0
 */