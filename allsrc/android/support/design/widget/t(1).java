package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.design.R.styleable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import com.xiaomi.mistatistic.sdk.a.r;

public final class t extends ViewGroup.MarginLayoutParams
{
  r a;
  boolean b = false;
  public int c = 0;
  public int d = 0;
  public int e = -1;
  int f = -1;
  View g;
  View h;
  final Rect i = new Rect();
  private boolean j;
  private boolean k;
  private boolean l;

  public t(int paramInt1, int paramInt2)
  {
    super(-2, -2);
  }

  t(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout_LayoutParams);
    this.c = localTypedArray.getInteger(R.styleable.CoordinatorLayout_LayoutParams_android_layout_gravity, 0);
    this.f = localTypedArray.getResourceId(R.styleable.CoordinatorLayout_LayoutParams_layout_anchor, -1);
    this.d = localTypedArray.getInteger(R.styleable.CoordinatorLayout_LayoutParams_layout_anchorGravity, 0);
    this.e = localTypedArray.getInteger(R.styleable.CoordinatorLayout_LayoutParams_layout_keyline, -1);
    this.b = localTypedArray.hasValue(R.styleable.CoordinatorLayout_LayoutParams_layout_behavior);
    if (this.b)
      this.a = CoordinatorLayout.a(paramContext, paramAttributeSet, localTypedArray.getString(R.styleable.CoordinatorLayout_LayoutParams_layout_behavior));
    localTypedArray.recycle();
  }

  public t(t paramt)
  {
    super(paramt);
  }

  public t(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }

  public t(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }

  public final void a(r paramr)
  {
    if (this.a != paramr)
    {
      this.a = paramr;
      this.b = true;
    }
  }

  final void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  final boolean a()
  {
    if (this.a == null)
      this.j = false;
    return this.j;
  }

  final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView)
  {
    if (this.j)
      return true;
    boolean bool1 = this.j;
    if (this.a != null);
    for (boolean bool2 = this.a.b(paramCoordinatorLayout, paramView); ; bool2 = false)
    {
      boolean bool3 = bool2 | bool1;
      this.j = bool3;
      return bool3;
    }
  }

  final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    return (paramView2 == this.h) || ((this.a != null) && (this.a.d(paramCoordinatorLayout, paramView1, paramView2)));
  }

  final View b(CoordinatorLayout paramCoordinatorLayout, View paramView)
  {
    if (this.f == -1)
    {
      this.h = null;
      this.g = null;
      return null;
    }
    int m;
    View localView1;
    ViewParent localViewParent1;
    if (this.g != null)
    {
      if (this.g.getId() == this.f)
        break label121;
      m = 0;
      if (m != 0);
    }
    else
    {
      this.g = paramCoordinatorLayout.findViewById(this.f);
      if (this.g == null)
        break label252;
      localView1 = this.g;
      localViewParent1 = this.g.getParent();
      label82: if ((localViewParent1 == paramCoordinatorLayout) || (localViewParent1 == null))
        break label244;
      if (localViewParent1 != paramView)
        break label218;
      if (!paramCoordinatorLayout.isInEditMode())
        break label208;
      this.h = null;
      this.g = null;
    }
    while (true)
    {
      return this.g;
      label121: View localView2 = this.g;
      for (ViewParent localViewParent2 = this.g.getParent(); ; localViewParent2 = localViewParent2.getParent())
      {
        if (localViewParent2 == paramCoordinatorLayout)
          break label196;
        if ((localViewParent2 == null) || (localViewParent2 == paramView))
        {
          this.h = null;
          this.g = null;
          m = 0;
          break;
        }
        if (!(localViewParent2 instanceof View))
          continue;
        localView2 = (View)localViewParent2;
      }
      label196: this.h = localView2;
      m = 1;
      break;
      label208: throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
      label218: if ((localViewParent1 instanceof View))
        localView1 = (View)localViewParent1;
      localViewParent1 = localViewParent1.getParent();
      break label82;
      label244: this.h = localView1;
      continue;
      label252: if (!paramCoordinatorLayout.isInEditMode())
        break label272;
      this.h = null;
      this.g = null;
    }
    label272: throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + paramCoordinatorLayout.getResources().getResourceName(this.f) + " to anchor view " + paramView);
  }

  final void b()
  {
    this.j = false;
  }

  final void b(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  final void c()
  {
    this.k = false;
  }

  final boolean d()
  {
    return this.k;
  }

  final boolean e()
  {
    return this.l;
  }

  final void f()
  {
    this.l = false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.t
 * JD-Core Version:    0.6.0
 */