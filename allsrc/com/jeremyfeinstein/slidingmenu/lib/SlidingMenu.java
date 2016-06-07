package com.jeremyfeinstein.slidingmenu.lib;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Parcelable;
import android.support.design.widget.K;
import android.util.AttributeSet;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.lang.reflect.Method;

public class SlidingMenu extends RelativeLayout
{
  private boolean a = false;
  private CustomViewAbove b;
  private CustomViewBehind c;
  private K d;
  private K e;
  private K f;
  private Handler g = new Handler();

  public SlidingMenu(Activity paramActivity, int paramInt)
  {
    this(paramActivity, null);
    a(paramActivity, paramInt);
  }

  public SlidingMenu(Context paramContext)
  {
    this(paramContext, null);
  }

  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SlidingMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -1);
    this.c = new CustomViewBehind(paramContext);
    addView(this.c, localLayoutParams1);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
    this.b = new CustomViewAbove(paramContext);
    addView(this.b, localLayoutParams2);
    this.b.setCustomViewBehind(this.c);
    this.c.setCustomViewAbove(this.b);
    this.b.setOnPageChangeListener(new e(this));
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SlidingMenu);
    setMode(localTypedArray.getInt(R.styleable.SlidingMenu_mode, 0));
    int i = localTypedArray.getResourceId(R.styleable.SlidingMenu_viewAbove, -1);
    if (i != -1)
    {
      setContent(i);
      int j = localTypedArray.getResourceId(R.styleable.SlidingMenu_viewBehind, -1);
      if (j == -1)
        break label284;
      setMenu(j);
    }
    int k;
    int m;
    while (true)
    {
      setTouchModeAbove(localTypedArray.getInt(R.styleable.SlidingMenu_touchModeAbove, 0));
      setTouchModeBehind(localTypedArray.getInt(R.styleable.SlidingMenu_touchModeBehind, 0));
      k = (int)localTypedArray.getDimension(R.styleable.SlidingMenu_behindOffset, -1.0F);
      m = (int)localTypedArray.getDimension(R.styleable.SlidingMenu_behindWidth, -1.0F);
      if ((k == -1) || (m == -1))
        break label299;
      throw new IllegalStateException("Cannot set both behindOffset and behindWidth for a SlidingMenu");
      setContent(new FrameLayout(paramContext));
      break;
      label284: setMenu(new FrameLayout(paramContext));
    }
    label299: if (k != -1)
      setBehindOffset(k);
    while (true)
    {
      setBehindScrollScale(localTypedArray.getFloat(R.styleable.SlidingMenu_behindScrollScale, 0.33F));
      int n = localTypedArray.getResourceId(R.styleable.SlidingMenu_shadowDrawable, -1);
      if (n != -1)
        setShadowDrawable(n);
      setShadowWidth((int)localTypedArray.getDimension(R.styleable.SlidingMenu_shadowWidth, 0.0F));
      setFadeEnabled(localTypedArray.getBoolean(R.styleable.SlidingMenu_fadeEnabled, true));
      setFadeDegree(localTypedArray.getFloat(R.styleable.SlidingMenu_fadeDegree, 0.33F));
      setSelectorEnabled(localTypedArray.getBoolean(R.styleable.SlidingMenu_selectorEnabled, false));
      int i1 = localTypedArray.getResourceId(R.styleable.SlidingMenu_selectorDrawable, -1);
      if (i1 != -1)
        setSelectorDrawable(i1);
      localTypedArray.recycle();
      return;
      if (m != -1)
      {
        setBehindWidth(m);
        continue;
      }
      setBehindOffset(0);
    }
  }

  public final View a()
  {
    return this.b.b();
  }

  @TargetApi(11)
  public final void a(float paramFloat)
  {
    if (Build.VERSION.SDK_INT < 11)
      return;
    if ((paramFloat > 0.0F) && (paramFloat < 1.0F));
    for (int i = 1; ; i = 0)
    {
      int j = 0;
      if (i != 0)
        j = 2;
      if (j == this.b.b().getLayerType())
        break;
      this.g.post(new f(this, j));
      return;
    }
  }

  public final void a(Activity paramActivity, int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1))
      throw new IllegalArgumentException("slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT");
    if (getParent() != null)
      throw new IllegalStateException("This SlidingMenu appears to already be attached");
    TypedArray localTypedArray = paramActivity.getTheme().obtainStyledAttributes(new int[] { 16842836 });
    int i = localTypedArray.getResourceId(0, 0);
    localTypedArray.recycle();
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    View localView;
    do
    {
      return;
      this.a = false;
      ViewGroup localViewGroup2 = (ViewGroup)paramActivity.getWindow().getDecorView();
      ViewGroup localViewGroup3 = (ViewGroup)localViewGroup2.getChildAt(0);
      localViewGroup3.setBackgroundResource(i);
      localViewGroup2.removeView(localViewGroup3);
      localViewGroup2.addView(this);
      setContent(localViewGroup3);
      return;
      this.a = false;
      ViewGroup localViewGroup1 = (ViewGroup)paramActivity.findViewById(16908290);
      localView = localViewGroup1.getChildAt(0);
      localViewGroup1.removeView(localView);
      localViewGroup1.addView(this);
      setContent(localView);
    }
    while (localView.getBackground() != null);
    localView.setBackgroundResource(i);
  }

  public final void a(boolean paramBoolean)
  {
    this.b.setCurrentItem(0, paramBoolean);
  }

  public final View b()
  {
    return this.c.b();
  }

  public final void b(boolean paramBoolean)
  {
    this.b.setCurrentItem(2, false);
  }

  public final View c()
  {
    return this.c.c();
  }

  public final void c(boolean paramBoolean)
  {
    this.b.setCurrentItem(1, paramBoolean);
  }

  public final void d()
  {
    c(true);
  }

  public final void e()
  {
    if (f())
    {
      c(true);
      return;
    }
    a(true);
  }

  public final boolean f()
  {
    return (this.b.a() == 0) || (this.b.a() == 2);
  }

  @SuppressLint({"NewApi"})
  protected boolean fitSystemWindows(Rect paramRect)
  {
    int i = paramRect.left;
    int j = paramRect.right;
    int k = paramRect.top;
    int m = paramRect.bottom;
    if ((!this.a) && ((getPaddingTop() != k) || (getPaddingLeft() != i) || (getPaddingRight() != j) || (getPaddingBottom() != m)))
      setPadding(i, k, j, m);
    return true;
  }

  public final boolean g()
  {
    return this.b.a() == 2;
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SlidingMenu.SavedState localSavedState = (SlidingMenu.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    this.b.setCurrentItem(localSavedState.a());
  }

  protected Parcelable onSaveInstanceState()
  {
    return new SlidingMenu.SavedState(super.onSaveInstanceState(), this.b.a());
  }

  public void setAboveOffset(int paramInt)
  {
    this.b.setAboveOffset(paramInt);
  }

  public void setAboveOffsetRes(int paramInt)
  {
    setAboveOffset((int)getContext().getResources().getDimension(paramInt));
  }

  public void setBehindCanvasTransformer$213e88a0(K paramK)
  {
    this.c.setCanvasTransformer$213e88a0(paramK);
  }

  public void setBehindOffset(int paramInt)
  {
    this.c.setWidthOffset(paramInt);
  }

  public void setBehindOffsetRes(int paramInt)
  {
    setBehindOffset((int)getContext().getResources().getDimension(paramInt));
  }

  public void setBehindScrollScale(float paramFloat)
  {
    if ((paramFloat < 0.0F) && (paramFloat > 1.0F))
      throw new IllegalStateException("ScrollScale must be between 0 and 1");
    this.c.setScrollScale(paramFloat);
  }

  public void setBehindWidth(int paramInt)
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    try
    {
      Class[] arrayOfClass = { Point.class };
      Point localPoint = new Point();
      Display.class.getMethod("getSize", arrayOfClass).invoke(localDisplay, new Object[] { localPoint });
      i = localPoint.x;
      setBehindOffset(i - paramInt);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        int i = localDisplay.getWidth();
    }
  }

  public void setBehindWidthRes(int paramInt)
  {
    setBehindWidth((int)getContext().getResources().getDimension(paramInt));
  }

  public void setContent(int paramInt)
  {
    setContent(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }

  public void setContent(View paramView)
  {
    this.b.setContent(paramView);
    c(true);
  }

  public void setFadeDegree(float paramFloat)
  {
    this.c.setFadeDegree(paramFloat);
  }

  public void setFadeEnabled(boolean paramBoolean)
  {
    this.c.setFadeEnabled(paramBoolean);
  }

  public void setMenu(int paramInt)
  {
    setMenu(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }

  public void setMenu(View paramView)
  {
    this.c.setContent(paramView);
  }

  public void setMode(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1) && (paramInt != 2))
      throw new IllegalStateException("SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT");
    this.c.setMode(paramInt);
  }

  public void setOnCloseListener$4ce1fc6c(K paramK)
  {
    this.f = paramK;
  }

  public void setOnClosedListener$4ae9f390(K paramK)
  {
    this.b.setOnClosedListener$4ae9f390(paramK);
  }

  public void setOnOpenListener$3052752e(K paramK)
  {
    this.d = paramK;
  }

  public void setOnOpenedListener(g paramg)
  {
    this.b.setOnOpenedListener(paramg);
  }

  public void setSecondaryBehindWidth(int paramInt)
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    try
    {
      Class[] arrayOfClass = { Point.class };
      Point localPoint = new Point();
      Display.class.getMethod("getSize", arrayOfClass).invoke(localDisplay, new Object[] { localPoint });
      i = localPoint.x;
      setSecondaryMenuOffset(i - paramInt);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        int i = localDisplay.getWidth();
    }
  }

  public void setSecondaryBehindWidthRes(int paramInt)
  {
    setSecondaryBehindWidth((int)getContext().getResources().getDimension(paramInt));
  }

  public void setSecondaryMenu(int paramInt)
  {
    setSecondaryMenu(LayoutInflater.from(getContext()).inflate(paramInt, null));
  }

  public void setSecondaryMenu(View paramView)
  {
    this.c.setSecondaryContent(paramView);
  }

  public void setSecondaryMenuOffset(int paramInt)
  {
    this.c.setSecondaryWidthOffset(paramInt);
  }

  public void setSecondaryMenuOffsetRes(int paramInt)
  {
    setSecondaryMenuOffset((int)getContext().getResources().getDimension(paramInt));
  }

  public void setSecondaryOnOpenListner$3052752e(K paramK)
  {
    this.e = paramK;
  }

  public void setSecondaryShadowDrawable(int paramInt)
  {
    setSecondaryShadowDrawable(getContext().getResources().getDrawable(paramInt));
  }

  public void setSecondaryShadowDrawable(Drawable paramDrawable)
  {
    this.c.setSecondaryShadowDrawable(paramDrawable);
  }

  public void setSelectedView(View paramView)
  {
    this.c.setSelectedView(paramView);
  }

  public void setSelectorBitmap(Bitmap paramBitmap)
  {
    this.c.setSelectorBitmap(paramBitmap);
  }

  public void setSelectorDrawable(int paramInt)
  {
    this.c.setSelectorBitmap(BitmapFactory.decodeResource(getResources(), paramInt));
  }

  public void setSelectorEnabled(boolean paramBoolean)
  {
    this.c.setSelectorEnabled(true);
  }

  public void setShadowDrawable(int paramInt)
  {
    setShadowDrawable(getContext().getResources().getDrawable(paramInt));
  }

  public void setShadowDrawable(Drawable paramDrawable)
  {
    this.c.setShadowDrawable(paramDrawable);
  }

  public void setShadowWidth(int paramInt)
  {
    this.c.setShadowWidth(paramInt);
  }

  public void setShadowWidthRes(int paramInt)
  {
    setShadowWidth((int)getResources().getDimension(paramInt));
  }

  public void setSlidingEnabled(boolean paramBoolean)
  {
    this.b.setSlidingEnabled(paramBoolean);
  }

  public void setStatic(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setSlidingEnabled(false);
      this.b.setCustomViewBehind(null);
      this.b.setCurrentItem(1);
      return;
    }
    this.b.setCurrentItem(1);
    this.b.setCustomViewBehind(this.c);
    setSlidingEnabled(true);
  }

  public void setTouchModeAbove(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0) && (paramInt != 2))
      throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE.");
    this.b.setTouchMode(paramInt);
  }

  public void setTouchModeBehind(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0) && (paramInt != 2))
      throw new IllegalStateException("TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE.");
    this.c.setTouchMode(paramInt);
  }

  public void setTouchmodeMarginThreshold(int paramInt)
  {
    this.c.setMarginThreshold(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.jeremyfeinstein.slidingmenu.lib.SlidingMenu
 * JD-Core Version:    0.6.0
 */