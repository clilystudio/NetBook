package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.design.R.id;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class CollapsingToolbarLayout extends FrameLayout
{
  private boolean a;
  private int b;
  private Toolbar c;
  private View d;
  private int e;
  private int f;
  private int g;
  private int h;
  private final Rect i;
  private final k j;
  private Drawable k;
  private Drawable l;
  private int m;
  private boolean n;
  private au o;
  private h p;
  private int q;
  private WindowInsetsCompat r;

  public CollapsingToolbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = i1;
    this.i = new Rect();
    this.j = new k(this);
    this.j.c(80);
    this.j.a(a.c);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingToolbarLayout, paramInt, R.style.Widget_Design_CollapsingToolbar);
    int i2 = localTypedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
    this.h = i2;
    this.g = i2;
    this.f = i2;
    this.e = i2;
    int i6;
    label149: int i5;
    if (ViewCompat.getLayoutDirection(this) == i1)
    {
      if (localTypedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart))
      {
        i6 = localTypedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        if (i1 == 0)
          break label340;
        this.g = i6;
      }
      if (localTypedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd))
      {
        i5 = localTypedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        if (i1 == 0)
          break label349;
        this.e = i5;
      }
    }
    while (true)
    {
      if (localTypedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop))
        this.f = localTypedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
      if (localTypedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom))
        this.h = localTypedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
      int i3 = localTypedArray.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, R.style.TextAppearance_AppCompat_Title);
      this.j.f(i3);
      int i4 = localTypedArray.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
      this.j.e(i4);
      setContentScrim(localTypedArray.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
      setStatusBarScrim(localTypedArray.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
      this.b = localTypedArray.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
      localTypedArray.recycle();
      setWillNotDraw(false);
      ViewCompat.setOnApplyWindowInsetsListener(this, new l(this));
      return;
      i1 = 0;
      break;
      label340: this.e = i6;
      break label149;
      label349: this.g = i5;
    }
  }

  private void a()
  {
    if (!this.a)
      return;
    int i1 = getChildCount();
    int i2 = 0;
    Object localObject1 = null;
    View localView;
    Toolbar localToolbar;
    if (i2 < i1)
    {
      localView = getChildAt(i2);
      if ((localView instanceof Toolbar))
        if (this.b != -1)
          if (this.b == localView.getId())
            localToolbar = (Toolbar)localView;
    }
    while (true)
    {
      label64: if (localToolbar == null)
        label69: if (localObject1 != null)
        {
          this.c = localObject1;
          this.d = new View(getContext());
          this.c.addView(this.d, -1, -1);
          label106: this.a = false;
          return;
          if (localObject1 != null)
            break label161;
        }
      label161: for (Object localObject2 = (Toolbar)localView; ; localObject2 = localObject1)
      {
        i2++;
        localObject1 = localObject2;
        break;
        localToolbar = (Toolbar)localView;
        break label64;
        this.c = null;
        this.d = null;
        break label106;
        localObject1 = localToolbar;
        break label69;
      }
      localToolbar = null;
    }
  }

  private void a(int paramInt)
  {
    a();
    if (this.o == null)
    {
      this.o = aP.a();
      this.o.a(600);
      this.o.a(a.b);
      this.o.a(new m(this));
    }
    while (true)
    {
      this.o.a(this.m, paramInt);
      this.o.a();
      return;
      if (!this.o.b())
        continue;
      this.o.e();
    }
  }

  private static aO b(View paramView)
  {
    aO localaO = (aO)paramView.getTag(R.id.view_offset_helper);
    if (localaO == null)
    {
      localaO = new aO(paramView);
      paramView.setTag(R.id.view_offset_helper, localaO);
    }
    return localaO;
  }

  private n b()
  {
    return new n(super.generateDefaultLayoutParams());
  }

  private void b(int paramInt)
  {
    if (paramInt != this.m)
    {
      if ((this.k != null) && (this.c != null))
        ViewCompat.postInvalidateOnAnimation(this.c);
      this.m = paramInt;
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof n;
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    a();
    if ((this.c == null) && (this.k != null) && (this.m > 0))
    {
      this.k.mutate().setAlpha(this.m);
      this.k.draw(paramCanvas);
    }
    this.j.a(paramCanvas);
    if ((this.l != null) && (this.m > 0))
      if (this.r == null)
        break label139;
    label139: for (int i1 = this.r.getSystemWindowInsetTop(); ; i1 = 0)
    {
      if (i1 > 0)
      {
        this.l.setBounds(0, -this.q, getWidth(), i1 - this.q);
        this.l.mutate().setAlpha(this.m);
        this.l.draw(paramCanvas);
      }
      return;
    }
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    a();
    if ((paramView == this.c) && (this.k != null) && (this.m > 0))
    {
      this.k.mutate().setAlpha(this.m);
      this.k.draw(paramCanvas);
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }

  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new n(getContext(), paramAttributeSet);
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      if (this.p == null)
        this.p = new o(this, 0);
      ((AppBarLayout)localViewParent).a(this.p);
    }
  }

  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    if ((this.p != null) && ((localViewParent instanceof AppBarLayout)))
      ((AppBarLayout)localViewParent).b(this.p);
    super.onDetachedFromWindow();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i1 = 0;
    int i2 = getChildCount();
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((this.r != null) && (!ViewCompat.getFitsSystemWindows(localView)))
      {
        int i3 = this.r.getSystemWindowInsetTop();
        if (localView.getTop() < i3)
          localView.offsetTopAndBottom(i3);
      }
      b(localView).a();
      i1++;
    }
    if (this.d != null)
    {
      aI.a(this, this.d, this.i);
      this.j.b(this.i.left, paramInt4 - this.i.height(), this.i.right, paramInt4);
      this.j.a(paramInt1 + this.e, this.i.bottom + this.f, paramInt3 - this.g, paramInt4 - this.h);
      this.j.c();
    }
    if (this.c != null)
      setMinimumHeight(this.c.getHeight());
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    a();
    super.onMeasure(paramInt1, paramInt2);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.k != null)
      this.k.setBounds(0, 0, paramInt1, paramInt2);
  }

  public void setCollapsedTitleTextAppearance(int paramInt)
  {
    this.j.e(paramInt);
  }

  public void setCollapsedTitleTextColor(int paramInt)
  {
    this.j.a(paramInt);
  }

  public void setContentScrim(Drawable paramDrawable)
  {
    if (this.k != paramDrawable)
    {
      if (this.k != null)
        this.k.setCallback(null);
      this.k = paramDrawable;
      paramDrawable.setBounds(0, 0, getWidth(), getHeight());
      paramDrawable.setCallback(this);
      paramDrawable.mutate().setAlpha(this.m);
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }

  public void setContentScrimColor(int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }

  public void setContentScrimResource(int paramInt)
  {
    setContentScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }

  public void setExpandedTitleColor(int paramInt)
  {
    this.j.b(paramInt);
  }

  public void setExpandedTitleTextAppearance(int paramInt)
  {
    this.j.f(paramInt);
  }

  public void setStatusBarScrim(Drawable paramDrawable)
  {
    if (this.l != paramDrawable)
    {
      if (this.l != null)
        this.l.setCallback(null);
      this.l = paramDrawable;
      paramDrawable.setCallback(this);
      paramDrawable.mutate().setAlpha(this.m);
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }

  public void setStatusBarScrimColor(int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }

  public void setStatusBarScrimResource(int paramInt)
  {
    setStatusBarScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.j.a(paramCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout
 * JD-Core Version:    0.6.0
 */