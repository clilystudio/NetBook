package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.view.h;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

abstract class AbsActionBarView extends ViewGroup
{
  private static final Interpolator h = new DecelerateInterpolator();
  protected final Context a;
  protected ActionMenuView b;
  protected ActionMenuPresenter c;
  protected ViewGroup d;
  protected boolean e;
  protected int f;
  protected ViewPropertyAnimatorCompat g;
  private AbsActionBarView.VisibilityAnimListener i = new AbsActionBarView.VisibilityAnimListener(this);

  AbsActionBarView(Context paramContext)
  {
    this(paramContext, null);
  }

  AbsActionBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  AbsActionBarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedValue localTypedValue = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, localTypedValue, true)) && (localTypedValue.resourceId != 0))
    {
      this.a = new ContextThemeWrapper(paramContext, localTypedValue.resourceId);
      return;
    }
    this.a = paramContext;
  }

  protected static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean)
      return paramInt1 - paramInt2;
    return paramInt1 + paramInt2;
  }

  protected static int a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, -2147483648), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth());
  }

  protected static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int j = paramView.getMeasuredWidth();
    int k = paramView.getMeasuredHeight();
    int m = paramInt2 + (paramInt3 - k) / 2;
    if (paramBoolean)
      paramView.layout(paramInt1 - j, m, paramInt1, k + m);
    while (true)
    {
      if (paramBoolean)
        j = -j;
      return j;
      paramView.layout(paramInt1, m, paramInt1 + j, k + m);
    }
  }

  public void a(int paramInt)
  {
    if (this.g != null)
      this.g.cancel();
    if (paramInt == 0)
    {
      if (getVisibility() != 0)
      {
        ViewCompat.setAlpha(this, 0.0F);
        if ((this.d != null) && (this.b != null))
          ViewCompat.setAlpha(this.b, 0.0F);
      }
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat3 = ViewCompat.animate(this).alpha(1.0F);
      localViewPropertyAnimatorCompat3.setDuration(200L);
      localViewPropertyAnimatorCompat3.setInterpolator(h);
      if ((this.d != null) && (this.b != null))
      {
        h localh2 = new h();
        ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat4 = ViewCompat.animate(this.b).alpha(1.0F);
        localViewPropertyAnimatorCompat4.setDuration(200L);
        localh2.a(this.i.a(localViewPropertyAnimatorCompat3, paramInt));
        localh2.a(localViewPropertyAnimatorCompat3).a(localViewPropertyAnimatorCompat4);
        localh2.a();
        return;
      }
      localViewPropertyAnimatorCompat3.setListener(this.i.a(localViewPropertyAnimatorCompat3, paramInt));
      localViewPropertyAnimatorCompat3.start();
      return;
    }
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat1 = ViewCompat.animate(this).alpha(0.0F);
    localViewPropertyAnimatorCompat1.setDuration(200L);
    localViewPropertyAnimatorCompat1.setInterpolator(h);
    if ((this.d != null) && (this.b != null))
    {
      h localh1 = new h();
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat2 = ViewCompat.animate(this.b).alpha(0.0F);
      localViewPropertyAnimatorCompat2.setDuration(200L);
      localh1.a(this.i.a(localViewPropertyAnimatorCompat1, paramInt));
      localh1.a(localViewPropertyAnimatorCompat1).a(localViewPropertyAnimatorCompat2);
      localh1.a();
      return;
    }
    localViewPropertyAnimatorCompat1.setListener(this.i.a(localViewPropertyAnimatorCompat1, paramInt));
    localViewPropertyAnimatorCompat1.start();
  }

  public boolean a()
  {
    if (this.c != null)
      return this.c.f();
    return false;
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
    setContentHeight(localTypedArray.getLayoutDimension(R.styleable.ActionBar_height, 0));
    localTypedArray.recycle();
    if (this.c != null)
      this.c.e();
  }

  public void setContentHeight(int paramInt)
  {
    this.f = paramInt;
    requestLayout();
  }

  public void setSplitToolbar(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public void setSplitView(ViewGroup paramViewGroup)
  {
    this.d = paramViewGroup;
  }

  public void setSplitWhenNarrow(boolean paramBoolean)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.AbsActionBarView
 * JD-Core Version:    0.6.0
 */