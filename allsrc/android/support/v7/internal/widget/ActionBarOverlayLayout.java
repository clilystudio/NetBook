package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.internal.view.menu.v;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

public class ActionBarOverlayLayout extends ViewGroup
  implements NestedScrollingParent, C
{
  private static int[] C;
  private final Runnable A = new h(this);
  private final Runnable B = new i(this);
  private final NestedScrollingParentHelper D;
  private int a;
  private int b = 0;
  private ContentFrameLayout c;
  private ActionBarContainer d;
  private ActionBarContainer e;
  private D f;
  private Drawable g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private int m;
  private int n;
  private final Rect o = new Rect();
  private final Rect p = new Rect();
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private j u;
  private ScrollerCompat v;
  private ViewPropertyAnimatorCompat w;
  private ViewPropertyAnimatorCompat x;
  private final ViewPropertyAnimatorListener y = new f(this);
  private final ViewPropertyAnimatorListener z = new g(this);

  static
  {
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = R.attr.actionBarSize;
    arrayOfInt[1] = 16842841;
    C = arrayOfInt;
  }

  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    this.D = new NestedScrollingParentHelper(this);
  }

  private void a(Context paramContext)
  {
    int i1 = 1;
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(C);
    this.a = localTypedArray.getDimensionPixelSize(0, 0);
    this.g = localTypedArray.getDrawable(i1);
    if (this.g == null)
    {
      int i2 = i1;
      setWillNotDraw(i2);
      localTypedArray.recycle();
      if (paramContext.getApplicationInfo().targetSdkVersion >= 19)
        break label87;
    }
    while (true)
    {
      this.h = i1;
      this.v = ScrollerCompat.create(paramContext);
      return;
      int i3 = 0;
      break;
      label87: i1 = 0;
    }
  }

  private static boolean a(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    k localk = (k)paramView.getLayoutParams();
    int i1 = localk.leftMargin;
    int i2 = paramRect.left;
    int i3 = 0;
    if (i1 != i2)
    {
      localk.leftMargin = paramRect.left;
      i3 = 1;
    }
    if ((paramBoolean2) && (localk.topMargin != paramRect.top))
    {
      localk.topMargin = paramRect.top;
      i3 = 1;
    }
    if (localk.rightMargin != paramRect.right)
    {
      localk.rightMargin = paramRect.right;
      i3 = 1;
    }
    if ((paramBoolean3) && (localk.bottomMargin != paramRect.bottom))
    {
      localk.bottomMargin = paramRect.bottom;
      return true;
    }
    return i3;
  }

  private void h()
  {
    View localView;
    if (this.c == null)
    {
      this.c = ((ContentFrameLayout)findViewById(R.id.action_bar_activity_content));
      this.e = ((ActionBarContainer)findViewById(R.id.action_bar_container));
      localView = findViewById(R.id.action_bar);
      if (!(localView instanceof D))
        break label75;
    }
    for (D localD = (D)localView; ; localD = ((Toolbar)localView).o())
    {
      this.f = localD;
      this.d = ((ActionBarContainer)findViewById(R.id.split_action_bar));
      return;
      label75: if (!(localView instanceof Toolbar))
        break;
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + localView.getClass().getSimpleName());
  }

  private void i()
  {
    removeCallbacks(this.A);
    removeCallbacks(this.B);
    if (this.w != null)
      this.w.cancel();
    if (this.x != null)
      this.x.cancel();
  }

  public final void a(int paramInt)
  {
    h();
    switch (paramInt)
    {
    default:
      return;
    case 2:
      this.f.e();
      return;
    case 5:
      this.f.f();
      return;
    case 9:
    }
    setOverlayMode(true);
  }

  public final boolean a()
  {
    return this.i;
  }

  public final boolean b()
  {
    h();
    return this.f.g();
  }

  public final boolean c()
  {
    h();
    return this.f.h();
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof k;
  }

  public final boolean d()
  {
    h();
    return this.f.i();
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((this.g != null) && (!this.h))
      if (this.e.getVisibility() != 0)
        break label82;
    label82: for (int i1 = (int)(0.5F + (this.e.getBottom() + ViewCompat.getTranslationY(this.e))); ; i1 = 0)
    {
      this.g.setBounds(0, i1, getWidth(), i1 + this.g.getIntrinsicHeight());
      this.g.draw(paramCanvas);
      return;
    }
  }

  public final boolean e()
  {
    h();
    return this.f.j();
  }

  public final boolean f()
  {
    h();
    return this.f.k();
  }

  protected boolean fitSystemWindows(Rect paramRect)
  {
    h();
    ViewCompat.getWindowSystemUiVisibility(this);
    boolean bool = a(this.e, paramRect, true, true, false, true);
    if (this.d != null)
      bool |= a(this.d, paramRect, true, false, true, true);
    this.r.set(paramRect);
    ae.a(this, this.r, this.o);
    if (!this.p.equals(this.o))
    {
      this.p.set(this.o);
      bool = true;
    }
    if (bool)
      requestLayout();
    return true;
  }

  public final void g()
  {
    h();
    this.f.m();
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new k(paramLayoutParams);
  }

  public int getNestedScrollAxes()
  {
    return this.D.getNestedScrollAxes();
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    a(getContext());
    ViewCompat.requestApplyInsets(this);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    i();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i2 = getPaddingLeft();
    getPaddingRight();
    int i3 = getPaddingTop();
    int i4 = paramInt4 - paramInt2 - getPaddingBottom();
    int i5 = 0;
    if (i5 < i1)
    {
      View localView = getChildAt(i5);
      k localk;
      int i6;
      int i7;
      int i8;
      if (localView.getVisibility() != 8)
      {
        localk = (k)localView.getLayoutParams();
        i6 = localView.getMeasuredWidth();
        i7 = localView.getMeasuredHeight();
        i8 = i2 + localk.leftMargin;
        if (localView != this.d)
          break label143;
      }
      label143: for (int i9 = i4 - i7 - localk.bottomMargin; ; i9 = i3 + localk.topMargin)
      {
        localView.layout(i8, i9, i6 + i8, i7 + i9);
        i5++;
        break;
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    h();
    measureChildWithMargins(this.e, paramInt1, 0, paramInt2, 0);
    k localk1 = (k)this.e.getLayoutParams();
    int i1 = Math.max(0, this.e.getMeasuredWidth() + localk1.leftMargin + localk1.rightMargin);
    int i2 = Math.max(0, this.e.getMeasuredHeight() + localk1.topMargin + localk1.bottomMargin);
    int i3 = ae.a(0, ViewCompat.getMeasuredState(this.e));
    int i15;
    int i4;
    int i5;
    if (this.d != null)
    {
      measureChildWithMargins(this.d, paramInt1, 0, paramInt2, 0);
      k localk3 = (k)this.d.getLayoutParams();
      int i14 = Math.max(i1, this.d.getMeasuredWidth() + localk3.leftMargin + localk3.rightMargin);
      i15 = Math.max(i2, this.d.getMeasuredHeight() + localk3.topMargin + localk3.bottomMargin);
      i4 = ae.a(i3, ViewCompat.getMeasuredState(this.d));
      i5 = i14;
    }
    for (int i6 = i15; ; i6 = i2)
    {
      int i7;
      int i8;
      if ((0x100 & ViewCompat.getWindowSystemUiVisibility(this)) != 0)
      {
        i7 = 1;
        if (i7 == 0)
          break label525;
        i8 = this.a;
        if ((this.j) && (this.e.a() != null))
          i8 += this.a;
      }
      while (true)
      {
        label242: this.q.set(this.o);
        this.s.set(this.r);
        Rect localRect4;
        if ((!this.i) && (i7 == 0))
        {
          Rect localRect3 = this.q;
          localRect3.top = (i8 + localRect3.top);
          localRect4 = this.q;
        }
        label525: Rect localRect2;
        for (localRect4.bottom = localRect4.bottom; ; localRect2.bottom = localRect2.bottom)
        {
          a(this.c, this.q, true, true, true, true);
          if (!this.t.equals(this.s))
          {
            this.t.set(this.s);
            this.c.a(this.s);
          }
          measureChildWithMargins(this.c, paramInt1, 0, paramInt2, 0);
          k localk2 = (k)this.c.getLayoutParams();
          int i9 = Math.max(i5, this.c.getMeasuredWidth() + localk2.leftMargin + localk2.rightMargin);
          int i10 = Math.max(i6, this.c.getMeasuredHeight() + localk2.topMargin + localk2.bottomMargin);
          int i11 = ae.a(i4, ViewCompat.getMeasuredState(this.c));
          int i12 = i9 + (getPaddingLeft() + getPaddingRight());
          int i13 = Math.max(i10 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
          setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i12, getSuggestedMinimumWidth()), paramInt1, i11), ViewCompat.resolveSizeAndState(i13, paramInt2, i11 << 16));
          return;
          i7 = 0;
          break;
          if (this.e.getVisibility() == 8)
            break label587;
          i8 = this.e.getMeasuredHeight();
          break label242;
          Rect localRect1 = this.s;
          localRect1.top = (i8 + localRect1.top);
          localRect2 = this.s;
        }
        label587: i8 = 0;
      }
      i4 = i3;
      i5 = i1;
    }
  }

  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((!this.k) || (!paramBoolean))
      return false;
    this.v.fling(0, 0, 0, (int)paramFloat2, 0, 0, -2147483648, 2147483647);
    int i1 = this.v.getFinalY();
    int i2 = this.e.getHeight();
    int i3 = 0;
    if (i1 > i2)
      i3 = 1;
    if (i3 != 0)
    {
      i();
      this.B.run();
    }
    while (true)
    {
      this.l = true;
      return true;
      i();
      this.A.run();
    }
  }

  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
  }

  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.m = (paramInt2 + this.m);
    setActionBarHideOffset(this.m);
  }

  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.D.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    if (this.e != null);
    for (int i1 = -(int)ViewCompat.getTranslationY(this.e); ; i1 = 0)
    {
      this.m = i1;
      i();
      if (this.u != null)
        this.u.h();
      return;
    }
  }

  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (this.e.getVisibility() != 0))
      return false;
    return this.k;
  }

  public void onStopNestedScroll(View paramView)
  {
    if ((this.k) && (!this.l))
    {
      if (this.m <= this.e.getHeight())
      {
        i();
        postDelayed(this.A, 600L);
      }
    }
    else
      return;
    i();
    postDelayed(this.B, 600L);
  }

  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    boolean bool1 = true;
    if (Build.VERSION.SDK_INT >= 16)
      super.onWindowSystemUiVisibilityChanged(paramInt);
    h();
    int i1 = paramInt ^ this.n;
    this.n = paramInt;
    boolean bool2;
    boolean bool3;
    if ((paramInt & 0x4) == 0)
    {
      bool2 = bool1;
      if ((paramInt & 0x100) == 0)
        break label122;
      bool3 = bool1;
      label51: if (this.u != null)
      {
        j localj = this.u;
        if (bool3)
          break label128;
        label69: localj.h(bool1);
        if ((!bool2) && (bool3))
          break label133;
        this.u.f();
      }
    }
    while (true)
    {
      if (((i1 & 0x100) != 0) && (this.u != null))
        ViewCompat.requestApplyInsets(this);
      return;
      bool2 = false;
      break;
      label122: bool3 = false;
      break label51;
      label128: bool1 = false;
      break label69;
      label133: this.u.g();
    }
  }

  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    this.b = paramInt;
    if (this.u != null)
      this.u.b(paramInt);
  }

  public void setActionBarHideOffset(int paramInt)
  {
    i();
    int i1 = this.e.getHeight();
    int i2 = Math.max(0, Math.min(paramInt, i1));
    ViewCompat.setTranslationY(this.e, -i2);
    if ((this.d != null) && (this.d.getVisibility() != 8))
    {
      int i3 = (int)(i2 / i1 * this.d.getHeight());
      ViewCompat.setTranslationY(this.d, i3);
    }
  }

  public void setActionBarVisibilityCallback(j paramj)
  {
    this.u = paramj;
    if (getWindowToken() != null)
    {
      this.u.b(this.b);
      if (this.n != 0)
      {
        onWindowSystemUiVisibilityChanged(this.n);
        ViewCompat.requestApplyInsets(this);
      }
    }
  }

  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.k)
    {
      this.k = paramBoolean;
      if (!paramBoolean)
      {
        i();
        setActionBarHideOffset(0);
      }
    }
  }

  public void setIcon(int paramInt)
  {
    h();
    this.f.a(paramInt);
  }

  public void setIcon(Drawable paramDrawable)
  {
    h();
    this.f.a(paramDrawable);
  }

  public void setLogo(int paramInt)
  {
    h();
    this.f.b(paramInt);
  }

  public void setMenu(Menu paramMenu, v paramv)
  {
    h();
    this.f.a(paramMenu, paramv);
  }

  public void setMenuPrepared()
  {
    h();
    this.f.l();
  }

  public void setOverlayMode(boolean paramBoolean)
  {
    this.i = paramBoolean;
    if ((paramBoolean) && (getContext().getApplicationInfo().targetSdkVersion < 19));
    for (boolean bool = true; ; bool = false)
    {
      this.h = bool;
      return;
    }
  }

  public void setShowingForActionMode(boolean paramBoolean)
  {
  }

  public void setUiOptions(int paramInt)
  {
  }

  public void setWindowCallback(Window.Callback paramCallback)
  {
    h();
    this.f.a(paramCallback);
  }

  public void setWindowTitle(CharSequence paramCharSequence)
  {
    h();
    this.f.a(paramCharSequence);
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarOverlayLayout
 * JD-Core Version:    0.6.0
 */