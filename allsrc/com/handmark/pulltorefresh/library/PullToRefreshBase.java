package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.design.widget.K;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.handmark.pulltorefresh.library.internal.LoadingLayout;

public abstract class PullToRefreshBase<T extends View> extends LinearLayout
{
  private int a;
  T b;
  private float c;
  private float d;
  private float e;
  private float f;
  private boolean g = false;
  private PullToRefreshBase.State h = PullToRefreshBase.State.RESET;
  private PullToRefreshBase.Mode i = PullToRefreshBase.Mode.getDefault();
  private PullToRefreshBase.Mode j;
  private FrameLayout k;
  private boolean l = true;
  private boolean m = false;
  private boolean n = true;
  private boolean o = true;
  private boolean p = true;
  private Interpolator q;
  private PullToRefreshBase.AnimationStyle r = PullToRefreshBase.AnimationStyle.getDefault();
  private LoadingLayout s;
  private LoadingLayout t;
  private k<T> u;
  private K<T> v;
  private K<T> w;
  private PullToRefreshBase<T>.m x;

  public PullToRefreshBase(Context paramContext)
  {
    super(paramContext);
    b(paramContext, null);
  }

  public PullToRefreshBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }

  public PullToRefreshBase(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext);
    this.i = paramMode;
    b(paramContext, null);
  }

  public PullToRefreshBase(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext);
    this.i = paramMode;
    this.r = paramAnimationStyle;
    b(paramContext, null);
  }

  private int A()
  {
    switch (i.a[o().ordinal()])
    {
    default:
      return Math.round(getHeight() / 2.0F);
    case 1:
    }
    return Math.round(getWidth() / 2.0F);
  }

  private final void a(int paramInt, long paramLong1, long paramLong2, l paraml)
  {
    if (this.x != null)
      this.x.a();
    switch (i.a[o().ordinal()])
    {
    default:
    case 1:
    }
    for (int i1 = getScrollY(); ; i1 = getScrollX())
    {
      if (i1 != paramInt)
      {
        if (this.q == null)
          this.q = new DecelerateInterpolator();
        this.x = new m(this, i1, paramInt, paramLong1, paraml);
        if (0L <= 0L)
          break;
        postDelayed(this.x, 0L);
      }
      return;
    }
    post(this.x);
  }

  private void a(int paramInt, l paraml)
  {
    a(paramInt, 200L, 0L, paraml);
  }

  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray;
    switch (i.a[o().ordinal()])
    {
    default:
      setOrientation(1);
      setGravity(17);
      this.a = ViewConfiguration.get(paramContext).getScaledTouchSlop();
      localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PullToRefresh);
      if (localTypedArray.hasValue(R.styleable.PullToRefresh_ptrMode))
        this.i = PullToRefreshBase.Mode.mapIntToValue(localTypedArray.getInteger(R.styleable.PullToRefresh_ptrMode, 0));
      if (localTypedArray.hasValue(R.styleable.PullToRefresh_ptrAnimationStyle))
      {
        this.r = PullToRefreshBase.AnimationStyle.mapIntToValue(localTypedArray.getInteger(R.styleable.PullToRefresh_ptrAnimationStyle, 0));
        label109: this.b = a(paramContext, paramAttributeSet);
        View localView = this.b;
        this.k = new FrameLayout(paramContext);
        this.k.addView(localView, -1, -1);
        super.addView(this.k, -1, new LinearLayout.LayoutParams(-1, -1));
        this.s = a(paramContext, PullToRefreshBase.Mode.PULL_FROM_START, localTypedArray);
        this.t = a(paramContext, PullToRefreshBase.Mode.PULL_FROM_END, localTypedArray);
        if (!localTypedArray.hasValue(R.styleable.PullToRefresh_ptrRefreshableViewBackground))
          break label301;
        Drawable localDrawable2 = localTypedArray.getDrawable(R.styleable.PullToRefresh_ptrRefreshableViewBackground);
        if (localDrawable2 == null)
          break;
        this.b.setBackgroundDrawable(localDrawable2);
      }
    case 1:
    }
    while (true)
    {
      if (localTypedArray.hasValue(R.styleable.PullToRefresh_ptrOverScroll))
        this.o = localTypedArray.getBoolean(R.styleable.PullToRefresh_ptrOverScroll, true);
      if (localTypedArray.hasValue(R.styleable.PullToRefresh_ptrScrollingWhileRefreshingEnabled))
        this.m = localTypedArray.getBoolean(R.styleable.PullToRefresh_ptrScrollingWhileRefreshingEnabled, false);
      a(localTypedArray);
      localTypedArray.recycle();
      e();
      return;
      setOrientation(0);
      break;
      this.r = PullToRefreshBase.AnimationStyle.FLIP;
      break label109;
      label301: if (!localTypedArray.hasValue(R.styleable.PullToRefresh_ptrAdapterViewBackground))
        continue;
      com.arcsoft.hpay100.a.a.c("ptrAdapterViewBackground", "ptrRefreshableViewBackground");
      Drawable localDrawable1 = localTypedArray.getDrawable(R.styleable.PullToRefresh_ptrAdapterViewBackground);
      if (localDrawable1 == null)
        continue;
      this.b.setBackgroundDrawable(localDrawable1);
    }
  }

  private a v()
  {
    return a(true, true);
  }

  private void w()
  {
    a(0, new g(this));
  }

  private void x()
  {
    int i1 = (int)(1.2F * A());
    int i2 = getPaddingLeft();
    int i3 = getPaddingTop();
    int i4 = getPaddingRight();
    int i5 = getPaddingBottom();
    int i10;
    int i8;
    int i7;
    int i9;
    switch (i.a[o().ordinal()])
    {
    default:
      i10 = i5;
      i8 = i4;
      i7 = i3;
      i9 = i2;
    case 1:
    case 2:
    }
    while (true)
    {
      setPadding(i9, i7, i8, i10);
      return;
      if (this.i.showHeaderLoadingLayout())
        this.s.setWidth(i1);
      for (int i11 = -i1; ; i11 = 0)
      {
        if (!this.i.showFooterLoadingLayout())
          break label163;
        this.t.setWidth(i1);
        int i12 = -i1;
        i9 = i11;
        i8 = i12;
        i10 = i5;
        i7 = i3;
        break;
      }
      label163: i9 = i11;
      i10 = i5;
      i7 = i3;
      i8 = 0;
      continue;
      if (this.i.showHeaderLoadingLayout())
        this.s.setHeight(i1);
      for (int i6 = -i1; ; i6 = 0)
      {
        if (!this.i.showFooterLoadingLayout())
          break label244;
        this.t.setHeight(i1);
        i10 = -i1;
        i7 = i6;
        i8 = i4;
        i9 = i2;
        break;
      }
      label244: i7 = i6;
      i8 = i4;
      i9 = i2;
      i10 = 0;
    }
  }

  private void y()
  {
    if (this.u != null)
      this.u.a(this);
    do
      return;
    while ((this.v == null) || (this.j == PullToRefreshBase.Mode.PULL_FROM_START));
  }

  private boolean z()
  {
    switch (i.c[this.i.ordinal()])
    {
    case 3:
    default:
    case 2:
    case 1:
    case 4:
    }
    do
    {
      return false;
      return c();
      return d();
    }
    while ((!d()) && (!c()));
    return true;
  }

  protected abstract T a(Context paramContext, AttributeSet paramAttributeSet);

  protected b a(boolean paramBoolean1, boolean paramBoolean2)
  {
    b localb = new b();
    if ((paramBoolean1) && (this.i.showHeaderLoadingLayout()))
      localb.a(this.s);
    if ((paramBoolean2) && (this.i.showFooterLoadingLayout()))
      localb.a(this.t);
    return localb;
  }

  protected final LoadingLayout a(Context paramContext, PullToRefreshBase.Mode paramMode, TypedArray paramTypedArray)
  {
    LoadingLayout localLoadingLayout = this.r.createLoadingLayout(paramContext, paramMode, o(), paramTypedArray);
    localLoadingLayout.setVisibility(4);
    return localLoadingLayout;
  }

  protected void a()
  {
    switch (i.c[this.j.ordinal()])
    {
    default:
      return;
    case 1:
      this.t.h();
      return;
    case 2:
    }
    this.s.h();
  }

  protected final void a(int paramInt)
  {
    int i1 = A();
    int i2 = Math.min(i1, Math.max(-i1, paramInt));
    if (this.p)
    {
      if (i2 >= 0)
        break label69;
      this.s.setVisibility(0);
    }
    while (true)
      switch (i.a[o().ordinal()])
      {
      default:
        return;
        label69: if (i2 > 0)
        {
          this.t.setVisibility(0);
          continue;
        }
        this.s.setVisibility(4);
        this.t.setVisibility(4);
      case 2:
      case 1:
      }
    scrollTo(0, i2);
    return;
    scrollTo(i2, 0);
  }

  protected void a(TypedArray paramTypedArray)
  {
  }

  protected void a(Bundle paramBundle)
  {
  }

  final void a(PullToRefreshBase.State paramState, boolean[] paramArrayOfBoolean)
  {
    this.h = paramState;
    switch (i.b[this.h.ordinal()])
    {
    default:
      return;
    case 1:
      b(false);
      return;
    case 2:
      a();
      return;
    case 3:
      b();
      return;
    case 4:
    case 5:
    }
    a(paramArrayOfBoolean[0]);
  }

  protected void a(boolean paramBoolean)
  {
    if (this.i.showHeaderLoadingLayout())
      this.s.i();
    if (this.i.showFooterLoadingLayout())
      this.t.i();
    if (paramBoolean)
    {
      if (this.l)
      {
        e locale = new e(this);
        switch (i.c[this.j.ordinal()])
        {
        case 2:
        default:
          a(-this.s.f(), locale);
          return;
        case 1:
        case 3:
        }
        a(this.t.f(), locale);
        return;
      }
      b(0);
      return;
    }
    y();
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    View localView = this.b;
    if ((localView instanceof ViewGroup))
    {
      ((ViewGroup)localView).addView(paramView, paramInt, paramLayoutParams);
      return;
    }
    throw new UnsupportedOperationException("Refreshable View is not a ViewGroup so can't addView");
  }

  protected void b()
  {
    switch (i.c[this.j.ordinal()])
    {
    default:
      return;
    case 1:
      this.t.j();
      return;
    case 2:
    }
    this.s.j();
  }

  protected final void b(int paramInt)
  {
    a(0, 200L, 0L, null);
  }

  protected void b(Bundle paramBundle)
  {
  }

  protected void b(boolean paramBoolean)
  {
    this.g = false;
    this.p = true;
    if (!paramBoolean)
    {
      this.s.k();
      this.s.setVisibility(0);
      this.s.c.setVisibility(0);
      this.s.b.setVisibility(4);
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setDuration(100L);
      this.s.c.startAnimation(localAlphaAnimation);
      int i1 = this.s.findViewById(R.id.fl_inner).getHeight();
      if (Math.abs(getScrollY()) == i1)
      {
        new Handler().postDelayed(new f(this), 1000L);
        return;
      }
      w();
      return;
    }
    this.t.k();
  }

  protected abstract boolean c();

  protected abstract boolean d();

  protected void e()
  {
    LinearLayout.LayoutParams localLayoutParams;
    switch (i.a[o().ordinal()])
    {
    default:
      localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      if (this == this.s.getParent())
        removeView(this.s);
      if (this.i.showHeaderLoadingLayout())
        super.addView(this.s, 0, localLayoutParams);
      if (this == this.t.getParent())
        removeView(this.t);
      if (this.i.showFooterLoadingLayout())
        super.addView(this.t, -1, localLayoutParams);
      x();
      if (this.i == PullToRefreshBase.Mode.BOTH)
        break;
    case 1:
    }
    for (PullToRefreshBase.Mode localMode = this.i; ; localMode = PullToRefreshBase.Mode.PULL_FROM_START)
    {
      this.j = localMode;
      return;
      localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
      break;
    }
  }

  public final PullToRefreshBase.Mode f()
  {
    return this.j;
  }

  public final PullToRefreshBase.Mode g()
  {
    return this.i;
  }

  public final T h()
  {
    return this.b;
  }

  public final boolean i()
  {
    return this.l;
  }

  public final PullToRefreshBase.State j()
  {
    return this.h;
  }

  public final boolean k()
  {
    return this.i.permitsPullToRefresh();
  }

  public final boolean l()
  {
    if ((Build.VERSION.SDK_INT >= 9) && (this.o))
    {
      if (this.b.getOverScrollMode() != 2);
      for (int i1 = 1; i1 != 0; i1 = 0)
        return true;
    }
    return false;
  }

  public final boolean m()
  {
    return (this.h == PullToRefreshBase.State.REFRESHING) || (this.h == PullToRefreshBase.State.MANUAL_REFRESHING);
  }

  public final void n()
  {
    if (m())
      a(PullToRefreshBase.State.RESET, new boolean[0]);
  }

  public abstract PullToRefreshBase.Orientation o();

  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.i.permitsPullToRefresh())
      return false;
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1))
    {
      this.g = false;
      return false;
    }
    if ((i1 != 0) && (this.g))
      return true;
    switch (i1)
    {
    case 1:
    default:
    case 2:
    case 0:
    }
    while (true)
    {
      return this.g;
      if ((!this.m) && (m()))
        return true;
      if (!z())
        continue;
      float f3 = paramMotionEvent.getY();
      float f4 = paramMotionEvent.getX();
      float f5;
      float f6;
      switch (i.a[o().ordinal()])
      {
      default:
        f5 = f3 - this.d;
        f6 = f4 - this.c;
      case 1:
      }
      while (true)
      {
        float f7 = Math.abs(f5);
        if ((f7 <= this.a) || ((this.n) && (f7 <= Math.abs(f6))))
          break;
        if ((!this.i.showHeaderLoadingLayout()) || (f5 < 1.0F) || (!c()))
          break label280;
        this.d = f3;
        this.c = f4;
        this.g = true;
        if (this.i != PullToRefreshBase.Mode.BOTH)
          break;
        this.j = PullToRefreshBase.Mode.PULL_FROM_START;
        break;
        f5 = f4 - this.c;
        f6 = f3 - this.d;
      }
      label280: if ((!this.i.showFooterLoadingLayout()) || (f5 > -1.0F) || (!d()))
        continue;
      this.d = f3;
      this.c = f4;
      this.g = true;
      if (this.i != PullToRefreshBase.Mode.BOTH)
        continue;
      this.j = PullToRefreshBase.Mode.PULL_FROM_END;
      continue;
      if (!z())
        continue;
      float f1 = paramMotionEvent.getY();
      this.f = f1;
      this.d = f1;
      float f2 = paramMotionEvent.getX();
      this.e = f2;
      this.c = f2;
      this.g = false;
    }
  }

  protected final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof Bundle))
    {
      Bundle localBundle = (Bundle)paramParcelable;
      setMode(PullToRefreshBase.Mode.mapIntToValue(localBundle.getInt("ptr_mode", 0)));
      this.j = PullToRefreshBase.Mode.mapIntToValue(localBundle.getInt("ptr_current_mode", 0));
      this.m = localBundle.getBoolean("ptr_disable_scrolling", false);
      this.l = localBundle.getBoolean("ptr_show_refreshing_view", true);
      super.onRestoreInstanceState(localBundle.getParcelable("ptr_super"));
      PullToRefreshBase.State localState = PullToRefreshBase.State.mapIntToValue(localBundle.getInt("ptr_state", 0));
      if ((localState == PullToRefreshBase.State.REFRESHING) || (localState == PullToRefreshBase.State.MANUAL_REFRESHING))
        a(localState, new boolean[] { true });
      a(localBundle);
      return;
    }
    super.onRestoreInstanceState(paramParcelable);
  }

  protected final Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    b(localBundle);
    localBundle.putInt("ptr_state", this.h.getIntValue());
    localBundle.putInt("ptr_mode", this.i.getIntValue());
    localBundle.putInt("ptr_current_mode", this.j.getIntValue());
    localBundle.putBoolean("ptr_disable_scrolling", this.m);
    localBundle.putBoolean("ptr_show_refreshing_view", this.l);
    localBundle.putParcelable("ptr_super", super.onSaveInstanceState());
    return localBundle;
  }

  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    x();
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.k.getLayoutParams();
    switch (i.a[o().ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      post(new h(this));
      return;
      if (localLayoutParams.width == paramInt1)
        continue;
      localLayoutParams.width = paramInt1;
      this.k.requestLayout();
      continue;
      if (localLayoutParams.height == paramInt2)
        continue;
      localLayoutParams.height = paramInt2;
      this.k.requestLayout();
    }
  }

  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.i.permitsPullToRefresh())
      return false;
    if ((!this.m) && (m()))
      return true;
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      return false;
    switch (paramMotionEvent.getAction())
    {
    default:
    case 2:
    case 0:
    case 1:
    case 3:
    }
    label201: 
    do
    {
      do
      {
        do
          return false;
        while (!this.g);
        this.d = paramMotionEvent.getY();
        this.c = paramMotionEvent.getX();
        float f3;
        float f4;
        int i1;
        int i2;
        float f5;
        switch (i.a[o().ordinal()])
        {
        default:
          f3 = this.f;
          f4 = this.d;
          switch (i.c[this.j.ordinal()])
          {
          default:
            i1 = Math.round(Math.min(f3 - f4, 0.0F) / 2.0F);
            i2 = this.s.f();
            a(i1);
            if ((i1 != 0) && (!m()))
            {
              f5 = Math.abs(i1) / i2;
              switch (i.c[this.j.ordinal()])
              {
              default:
                this.s.b(f5);
                if ((this.h != PullToRefreshBase.State.PULL_TO_REFRESH) && (i2 >= Math.abs(i1)))
                  a(PullToRefreshBase.State.PULL_TO_REFRESH, new boolean[0]);
              case 1:
              }
            }
          case 1:
          }
        case 1:
        }
        while (true)
        {
          return true;
          f3 = this.e;
          f4 = this.c;
          break;
          i1 = Math.round(Math.max(f3 - f4, 0.0F) / 2.0F);
          i2 = this.t.f();
          break label201;
          this.t.b(f5);
          break label269;
          if ((this.h != PullToRefreshBase.State.PULL_TO_REFRESH) || (i2 >= Math.abs(i1)))
            continue;
          a(PullToRefreshBase.State.RELEASE_TO_REFRESH, new boolean[0]);
        }
      }
      while (!z());
      float f1 = paramMotionEvent.getY();
      this.f = f1;
      this.d = f1;
      float f2 = paramMotionEvent.getX();
      this.e = f2;
      this.c = f2;
      return true;
    }
    while (!this.g);
    label269: this.g = false;
    if ((this.h == PullToRefreshBase.State.RELEASE_TO_REFRESH) && ((this.u != null) || (this.v != null)))
    {
      a(PullToRefreshBase.State.REFRESHING, new boolean[] { true });
      return true;
    }
    if (m())
    {
      b(0);
      return true;
    }
    a(PullToRefreshBase.State.RESET, new boolean[0]);
    return true;
  }

  protected final void p()
  {
    this.p = false;
  }

  protected final LoadingLayout q()
  {
    return this.t;
  }

  protected final int r()
  {
    return this.t.f();
  }

  protected final LoadingLayout s()
  {
    return this.s;
  }

  public void setDisableScrollingWhileRefreshing(boolean paramBoolean)
  {
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      setScrollingWhileRefreshingEnabled(bool);
      return;
    }
  }

  public final void setFilterTouchEvents(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }

  public void setLastUpdatedLabel(CharSequence paramCharSequence)
  {
    v().setLastUpdatedLabel(paramCharSequence);
  }

  public void setLoadingDrawable(Drawable paramDrawable)
  {
    v().setLoadingDrawable(paramDrawable);
  }

  public void setLoadingDrawable(Drawable paramDrawable, PullToRefreshBase.Mode paramMode)
  {
    a(paramMode.showHeaderLoadingLayout(), paramMode.showFooterLoadingLayout()).setLoadingDrawable(paramDrawable);
  }

  public void setLongClickable(boolean paramBoolean)
  {
    this.b.setLongClickable(paramBoolean);
  }

  public final void setMode(PullToRefreshBase.Mode paramMode)
  {
    if (paramMode != this.i)
    {
      this.i = paramMode;
      e();
    }
  }

  public void setOnPullEventListener$3c7bf85f(K<T> paramK)
  {
    this.w = paramK;
  }

  public final void setOnRefreshListener(k<T> paramk)
  {
    this.u = paramk;
    this.v = null;
  }

  public final void setOnRefreshListener$324c1adb(K<T> paramK)
  {
    this.v = paramK;
    this.u = null;
  }

  public void setPullLabel(CharSequence paramCharSequence)
  {
    v().setPullLabel(paramCharSequence);
  }

  public void setPullLabel(CharSequence paramCharSequence, PullToRefreshBase.Mode paramMode)
  {
    a(paramMode.showHeaderLoadingLayout(), paramMode.showFooterLoadingLayout()).setPullLabel(paramCharSequence);
  }

  public final void setPullToRefreshEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (PullToRefreshBase.Mode localMode = PullToRefreshBase.Mode.getDefault(); ; localMode = PullToRefreshBase.Mode.DISABLED)
    {
      setMode(localMode);
      return;
    }
  }

  public final void setPullToRefreshOverScrollEnabled(boolean paramBoolean)
  {
    this.o = paramBoolean;
  }

  public final void setRefreshing()
  {
    setRefreshing(true);
  }

  public final void setRefreshing(boolean paramBoolean)
  {
    if (!m())
      a(PullToRefreshBase.State.MANUAL_REFRESHING, new boolean[] { paramBoolean });
  }

  public void setRefreshingLabel(CharSequence paramCharSequence)
  {
    v().setRefreshingLabel(paramCharSequence);
  }

  public void setRefreshingLabel(CharSequence paramCharSequence, PullToRefreshBase.Mode paramMode)
  {
    a(paramMode.showHeaderLoadingLayout(), paramMode.showFooterLoadingLayout()).setRefreshingLabel(paramCharSequence);
  }

  public void setReleaseLabel(CharSequence paramCharSequence)
  {
    setReleaseLabel(paramCharSequence, PullToRefreshBase.Mode.BOTH);
  }

  public void setReleaseLabel(CharSequence paramCharSequence, PullToRefreshBase.Mode paramMode)
  {
    a(paramMode.showHeaderLoadingLayout(), paramMode.showFooterLoadingLayout()).setReleaseLabel(paramCharSequence);
  }

  public void setScrollAnimationInterpolator(Interpolator paramInterpolator)
  {
    this.q = paramInterpolator;
  }

  public final void setScrollingWhileRefreshingEnabled(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public final void setShowViewWhileRefreshing(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  protected final int t()
  {
    return this.s.f();
  }

  protected final FrameLayout u()
  {
    return this.k;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshBase
 * JD-Core Version:    0.6.0
 */