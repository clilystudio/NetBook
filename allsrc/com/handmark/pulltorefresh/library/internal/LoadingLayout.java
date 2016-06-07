package com.handmark.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.bettycc.fancypulltorefresh.RefreshingView;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Orientation;
import com.handmark.pulltorefresh.library.R.id;
import com.handmark.pulltorefresh.library.R.layout;
import com.handmark.pulltorefresh.library.R.string;
import com.handmark.pulltorefresh.library.R.styleable;

@SuppressLint({"ViewConstructor"})
public abstract class LoadingLayout extends FrameLayout
  implements com.handmark.pulltorefresh.library.a
{
  static final Interpolator a = new LinearInterpolator();
  public final ImageView b;
  public final View c;
  protected final PullToRefreshBase.Mode d;
  protected final PullToRefreshBase.Orientation e;
  private final RefreshingView f;
  private FrameLayout g;
  private View h;
  private boolean i;
  private final TextView j;
  private final TextView k;
  private CharSequence l;
  private CharSequence m;
  private CharSequence n;

  public LoadingLayout(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    super(paramContext);
    this.d = paramMode;
    this.e = paramOrientation;
    boolean bool1 = paramTypedArray.getBoolean(R.styleable.PullToRefresh_ptrTabMode, false);
    FrameLayout.LayoutParams localLayoutParams;
    int i4;
    label227: Drawable localDrawable2;
    label307: Drawable localDrawable1;
    switch (d.a[paramOrientation.ordinal()])
    {
    default:
      if (!bool1)
        break;
      LayoutInflater.from(paramContext).inflate(R.layout.pull_to_refresh_header_vertical_tab, this);
      this.g = ((FrameLayout)findViewById(R.id.fl_inner));
      this.j = ((TextView)this.g.findViewById(R.id.pull_to_refresh_text));
      this.h = this.g.findViewById(R.id.pull_to_refresh_progress);
      this.k = ((TextView)this.g.findViewById(R.id.pull_to_refresh_sub_text));
      this.b = ((ImageView)this.g.findViewById(R.id.pull_to_refresh_image));
      this.c = this.g.findViewById(R.id.pull_to_refresh_tick);
      this.f = ((RefreshingView)this.g.findViewById(R.id.refreshing_view));
      localLayoutParams = (FrameLayout.LayoutParams)this.g.getLayoutParams();
      switch (d.b[paramMode.ordinal()])
      {
      default:
        if (paramOrientation == PullToRefreshBase.Orientation.VERTICAL)
        {
          i4 = 80;
          localLayoutParams.gravity = i4;
          this.l = paramContext.getString(R.string.pull_to_refresh_pull_label);
          this.m = paramContext.getString(R.string.pull_to_refresh_refreshing_label);
          this.n = paramContext.getString(R.string.pull_to_refresh_release_label);
          if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrHeaderBackground))
          {
            localDrawable2 = paramTypedArray.getDrawable(R.styleable.PullToRefresh_ptrHeaderBackground);
            if (localDrawable2 != null)
            {
              if (Build.VERSION.SDK_INT < 16)
                break label742;
              setBackground(localDrawable2);
            }
          }
          if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrHeaderTextAppearance))
          {
            TypedValue localTypedValue1 = new TypedValue();
            paramTypedArray.getValue(R.styleable.PullToRefresh_ptrHeaderTextAppearance, localTypedValue1);
            int i2 = localTypedValue1.data;
            if (this.j != null)
              this.j.setTextAppearance(getContext(), i2);
            if (this.k != null)
              this.k.setTextAppearance(getContext(), i2);
          }
          if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrSubHeaderTextAppearance))
          {
            TypedValue localTypedValue2 = new TypedValue();
            paramTypedArray.getValue(R.styleable.PullToRefresh_ptrSubHeaderTextAppearance, localTypedValue2);
            int i3 = localTypedValue2.data;
            if (this.k != null)
              this.k.setTextAppearance(getContext(), i3);
          }
          if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrHeaderTextColor))
          {
            ColorStateList localColorStateList2 = paramTypedArray.getColorStateList(R.styleable.PullToRefresh_ptrHeaderTextColor);
            if (localColorStateList2 != null)
            {
              if (this.j != null)
                this.j.setTextColor(localColorStateList2);
              if (this.k != null)
                this.k.setTextColor(localColorStateList2);
            }
          }
          if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrHeaderSubTextColor))
          {
            ColorStateList localColorStateList1 = paramTypedArray.getColorStateList(R.styleable.PullToRefresh_ptrHeaderSubTextColor);
            if ((localColorStateList1 != null) && (this.k != null))
              this.k.setTextColor(localColorStateList1);
          }
          boolean bool2 = paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrDrawable);
          localDrawable1 = null;
          if (bool2)
            localDrawable1 = paramTypedArray.getDrawable(R.styleable.PullToRefresh_ptrDrawable);
          switch (d.b[paramMode.ordinal()])
          {
          default:
            if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrDrawableStart))
              localDrawable1 = paramTypedArray.getDrawable(R.styleable.PullToRefresh_ptrDrawableStart);
          case 1:
          }
        }
      case 1:
      }
    case 1:
    }
    while (true)
    {
      if (localDrawable1 == null)
        localDrawable1 = paramContext.getResources().getDrawable(e());
      setLoadingDrawable(localDrawable1);
      k();
      return;
      LayoutInflater.from(paramContext).inflate(R.layout.pull_to_refresh_header_horizontal, this);
      break;
      LayoutInflater.from(paramContext).inflate(R.layout.pull_to_refresh_header_vertical, this);
      break;
      if (paramOrientation == PullToRefreshBase.Orientation.VERTICAL);
      for (int i1 = 48; ; i1 = 3)
      {
        localLayoutParams.gravity = i1;
        this.l = paramContext.getString(R.string.pull_to_refresh_from_bottom_pull_label);
        this.m = paramContext.getString(R.string.pull_to_refresh_from_bottom_refreshing_label);
        this.n = paramContext.getString(R.string.pull_to_refresh_from_bottom_release_label);
        break;
      }
      i4 = 5;
      break label227;
      label742: setBackgroundDrawable(localDrawable2);
      break label307;
      if (!paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrDrawableTop))
        continue;
      com.arcsoft.hpay100.a.a.c("ptrDrawableTop", "ptrDrawableStart");
      localDrawable1 = paramTypedArray.getDrawable(R.styleable.PullToRefresh_ptrDrawableTop);
      continue;
      if (paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrDrawableEnd))
      {
        localDrawable1 = paramTypedArray.getDrawable(R.styleable.PullToRefresh_ptrDrawableEnd);
        continue;
      }
      if (!paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrDrawableBottom))
        continue;
      com.arcsoft.hpay100.a.a.c("ptrDrawableBottom", "ptrDrawableEnd");
      localDrawable1 = paramTypedArray.getDrawable(R.styleable.PullToRefresh_ptrDrawableBottom);
    }
  }

  protected abstract void a();

  protected abstract void a(float paramFloat);

  protected abstract void a(Drawable paramDrawable);

  protected abstract void b();

  public final void b(float paramFloat)
  {
    if (!this.i)
      a(paramFloat);
  }

  protected abstract void c();

  protected abstract void d();

  protected abstract int e();

  public final int f()
  {
    switch (d.a[this.e.ordinal()])
    {
    default:
      return this.g.getHeight();
    case 1:
    }
    return this.g.getWidth();
  }

  public final void g()
  {
    if (this.j.getVisibility() == 0)
      this.j.setVisibility(4);
    if (this.h.getVisibility() == 0)
      this.h.setVisibility(4);
    if (this.b.getVisibility() == 0)
      this.b.setVisibility(4);
    if (this.k.getVisibility() == 0)
      this.k.setVisibility(4);
  }

  public final void h()
  {
    if (this.j != null)
      this.j.setText(this.l);
    a();
  }

  public final void i()
  {
    if (this.j != null)
      this.j.setText(this.m);
    if (this.i)
      ((AnimationDrawable)this.b.getDrawable()).start();
    while (true)
    {
      if (this.k != null)
        this.k.setVisibility(8);
      return;
      b();
    }
  }

  public final void j()
  {
    if (this.j != null)
      this.j.setText(this.n);
    c();
  }

  public final void k()
  {
    if (this.j != null)
      this.j.setText(this.l);
    this.b.setVisibility(0);
    if (this.i)
      ((AnimationDrawable)this.b.getDrawable()).stop();
    while (true)
    {
      if (this.k != null)
      {
        if (!TextUtils.isEmpty(this.k.getText()))
          break;
        this.k.setVisibility(8);
      }
      return;
      d();
    }
    this.k.setVisibility(0);
  }

  public final void l()
  {
    if (4 == this.j.getVisibility())
      this.j.setVisibility(0);
    if (4 == this.h.getVisibility())
      this.h.setVisibility(0);
    if (4 == this.b.getVisibility())
      this.b.setVisibility(0);
    if (4 == this.k.getVisibility())
      this.k.setVisibility(0);
  }

  public final void m()
  {
    this.f.setVisibility(0);
    this.f.setVisibility(0);
  }

  public final void n()
  {
    this.f.setVisibility(4);
    this.f.setVisibility(8);
  }

  public final void setHeight(int paramInt)
  {
    getLayoutParams().height = paramInt;
    requestLayout();
  }

  public void setLastUpdatedLabel(CharSequence paramCharSequence)
  {
    if (this.k != null)
    {
      if (!TextUtils.isEmpty(paramCharSequence))
        break label24;
      this.k.setVisibility(8);
    }
    label24: 
    do
    {
      return;
      this.k.setText(paramCharSequence);
    }
    while (8 != this.k.getVisibility());
    this.k.setVisibility(0);
  }

  public final void setLoadingDrawable(Drawable paramDrawable)
  {
    this.b.setImageDrawable(paramDrawable);
    this.i = (paramDrawable instanceof AnimationDrawable);
    a(paramDrawable);
  }

  public void setPullLabel(CharSequence paramCharSequence)
  {
    this.l = paramCharSequence;
  }

  public void setRefreshingLabel(CharSequence paramCharSequence)
  {
    this.m = paramCharSequence;
  }

  public void setReleaseLabel(CharSequence paramCharSequence)
  {
    this.n = paramCharSequence;
  }

  public void setTextTypeface(Typeface paramTypeface)
  {
    this.j.setTypeface(paramTypeface);
  }

  public final void setWidth(int paramInt)
  {
    getLayoutParams().width = paramInt;
    requestLayout();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.internal.LoadingLayout
 * JD-Core Version:    0.6.0
 */