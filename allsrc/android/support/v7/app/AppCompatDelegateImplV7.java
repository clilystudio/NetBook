package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.NavUtils;
import android.support.v4.view.LayoutInflaterCompat;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.style;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.a.e;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.C;
import android.support.v7.internal.widget.ContentFrameLayout;
import android.support.v7.internal.widget.F;
import android.support.v7.internal.widget.ViewStubCompat;
import android.support.v7.internal.widget.ae;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.Window.Callback;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;

class AppCompatDelegateImplV7 extends n
  implements LayoutInflaterFactory, h
{
  private boolean A;
  private int B;
  private final Runnable C = new s(this);
  private boolean D;
  private Rect E;
  private Rect F;
  private android.support.v7.internal.a.a G;
  android.support.v7.b.a j;
  ActionBarContextView k;
  PopupWindow l;
  Runnable m;
  private C n;
  private w o;
  private A p;
  private boolean q;
  private ViewGroup r;
  private ViewGroup s;
  private TextView t;
  private View u;
  private boolean v;
  private boolean w;
  private boolean x;
  private AppCompatDelegateImplV7.PanelFeatureState[] y;
  private AppCompatDelegateImplV7.PanelFeatureState z;

  AppCompatDelegateImplV7(Context paramContext, Window paramWindow, l paraml)
  {
    super(paramContext, paramWindow, paraml);
  }

  private AppCompatDelegateImplV7.PanelFeatureState a(Menu paramMenu)
  {
    AppCompatDelegateImplV7.PanelFeatureState[] arrayOfPanelFeatureState = this.y;
    int i;
    if (arrayOfPanelFeatureState != null)
      i = arrayOfPanelFeatureState.length;
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= i)
        break label55;
      AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState = arrayOfPanelFeatureState[i1];
      if ((localPanelFeatureState != null) && (localPanelFeatureState.h == paramMenu))
      {
        return localPanelFeatureState;
        i = 0;
        break;
      }
    }
    label55: return null;
  }

  private void a(int paramInt, AppCompatDelegateImplV7.PanelFeatureState paramPanelFeatureState, Menu paramMenu)
  {
    if (paramMenu == null)
    {
      if ((paramPanelFeatureState == null) && (paramInt >= 0) && (paramInt < this.y.length))
        paramPanelFeatureState = this.y[paramInt];
      if (paramPanelFeatureState != null)
        paramMenu = paramPanelFeatureState.h;
    }
    if ((paramPanelFeatureState != null) && (!paramPanelFeatureState.m));
    Window.Callback localCallback;
    do
    {
      return;
      localCallback = this.b.getCallback();
    }
    while (localCallback == null);
    localCallback.onPanelClosed(paramInt, paramMenu);
  }

  private void a(AppCompatDelegateImplV7.PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    int i = -1;
    if ((paramPanelFeatureState.m) || (l()));
    label116: label122: label126: WindowManager localWindowManager;
    label128: Resources.Theme localTheme;
    label274: label372: int i1;
    label390: int i2;
    label412: ViewGroup.LayoutParams localLayoutParams1;
    while (true)
    {
      return;
      int i4;
      if (paramPanelFeatureState.a == 0)
      {
        Context localContext2 = this.a;
        if ((0xF & localContext2.getResources().getConfiguration().screenLayout) != 4)
          break label116;
        i4 = 1;
        if (localContext2.getApplicationInfo().targetSdkVersion < 11)
          break label122;
      }
      for (int i5 = 1; ; i5 = 0)
      {
        if ((i4 != 0) && (i5 != 0))
          break label126;
        Window.Callback localCallback = this.b.getCallback();
        if ((localCallback == null) || (localCallback.onMenuOpened(paramPanelFeatureState.a, paramPanelFeatureState.h)))
          break label128;
        a(paramPanelFeatureState, true);
        return;
        i4 = 0;
        break;
      }
      continue;
      localWindowManager = (WindowManager)this.a.getSystemService("window");
      if ((localWindowManager == null) || (!b(paramPanelFeatureState, paramKeyEvent)))
        continue;
      if ((paramPanelFeatureState.e != null) && (!paramPanelFeatureState.o))
        break label789;
      if (paramPanelFeatureState.e != null)
        break label603;
      Context localContext1 = k();
      TypedValue localTypedValue = new TypedValue();
      localTheme = localContext1.getResources().newTheme();
      localTheme.setTo(localContext1.getTheme());
      localTheme.resolveAttribute(R.attr.actionBarPopupTheme, localTypedValue, true);
      if (localTypedValue.resourceId != 0)
        localTheme.applyStyle(localTypedValue.resourceId, true);
      localTheme.resolveAttribute(R.attr.panelMenuListTheme, localTypedValue, true);
      if (localTypedValue.resourceId == 0)
        break;
      localTheme.applyStyle(localTypedValue.resourceId, true);
      android.support.v7.internal.view.a locala = new android.support.v7.internal.view.a(localContext1, 0);
      locala.getTheme().setTo(localTheme);
      paramPanelFeatureState.j = locala;
      TypedArray localTypedArray = locala.obtainStyledAttributes(R.styleable.Theme);
      paramPanelFeatureState.b = localTypedArray.getResourceId(R.styleable.Theme_panelBackground, 0);
      paramPanelFeatureState.d = localTypedArray.getResourceId(R.styleable.Theme_android_windowAnimationStyle, 0);
      localTypedArray.recycle();
      paramPanelFeatureState.e = new y(this, paramPanelFeatureState.j);
      paramPanelFeatureState.c = 81;
      if (paramPanelFeatureState.e == null)
        continue;
      if (paramPanelFeatureState.g == null)
        break label630;
      paramPanelFeatureState.f = paramPanelFeatureState.g;
      i1 = 1;
      if (i1 == 0)
        break label760;
      if (paramPanelFeatureState.f == null)
        break label783;
      if (paramPanelFeatureState.g == null)
        break label762;
      i2 = 1;
      if (i2 == 0)
        break label787;
      localLayoutParams1 = paramPanelFeatureState.f.getLayoutParams();
      if (localLayoutParams1 != null)
        break label825;
    }
    label783: label787: label789: label819: label825: for (ViewGroup.LayoutParams localLayoutParams2 = new ViewGroup.LayoutParams(-2, -2); ; localLayoutParams2 = localLayoutParams1)
    {
      int i3 = paramPanelFeatureState.b;
      paramPanelFeatureState.e.setBackgroundResource(i3);
      ViewParent localViewParent = paramPanelFeatureState.f.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
        ((ViewGroup)localViewParent).removeView(paramPanelFeatureState.f);
      paramPanelFeatureState.e.addView(paramPanelFeatureState.f, localLayoutParams2);
      if (!paramPanelFeatureState.f.hasFocus())
        paramPanelFeatureState.f.requestFocus();
      for (i = -2; ; i = -2)
      {
        label603: label630: label760: label762: ViewGroup.LayoutParams localLayoutParams3;
        label756: 
        do
        {
          paramPanelFeatureState.l = false;
          WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
          localLayoutParams.gravity = paramPanelFeatureState.c;
          localLayoutParams.windowAnimations = paramPanelFeatureState.d;
          localWindowManager.addView(paramPanelFeatureState.e, localLayoutParams);
          paramPanelFeatureState.m = true;
          return;
          localTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
          break label274;
          if ((!paramPanelFeatureState.o) || (paramPanelFeatureState.e.getChildCount() <= 0))
            break label372;
          paramPanelFeatureState.e.removeAllViews();
          break label372;
          if (paramPanelFeatureState.h != null)
          {
            if (this.p == null)
              this.p = new A(this, 0);
            A localA = this.p;
            if (paramPanelFeatureState.h == null);
            for (android.support.v7.internal.view.menu.w localw = null; ; localw = paramPanelFeatureState.i.a(paramPanelFeatureState.e))
            {
              paramPanelFeatureState.f = ((View)localw);
              if (paramPanelFeatureState.f == null)
                break label756;
              i1 = 1;
              break;
              if (paramPanelFeatureState.i != null)
                continue;
              paramPanelFeatureState.i = new f(paramPanelFeatureState.j, R.layout.abc_list_menu_item_layout);
              paramPanelFeatureState.i.a(localA);
              paramPanelFeatureState.h.a(paramPanelFeatureState.i);
            }
          }
          i1 = 0;
          break label390;
          break;
          if (paramPanelFeatureState.i.d().getCount() > 0)
          {
            i2 = 1;
            break label412;
          }
          i2 = 0;
          break label412;
          break;
          if (paramPanelFeatureState.g == null)
            break label819;
          localLayoutParams3 = paramPanelFeatureState.g.getLayoutParams();
        }
        while ((localLayoutParams3 != null) && (localLayoutParams3.width == i));
      }
    }
  }

  private void a(AppCompatDelegateImplV7.PanelFeatureState paramPanelFeatureState, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramPanelFeatureState.a == 0) && (this.n != null) && (this.n.c()))
      b(paramPanelFeatureState.h);
    do
    {
      return;
      boolean bool = paramPanelFeatureState.m;
      WindowManager localWindowManager = (WindowManager)this.a.getSystemService("window");
      if ((localWindowManager != null) && (bool) && (paramPanelFeatureState.e != null))
        localWindowManager.removeView(paramPanelFeatureState.e);
      paramPanelFeatureState.k = false;
      paramPanelFeatureState.l = false;
      paramPanelFeatureState.m = false;
      if ((bool) && (paramBoolean))
        a(paramPanelFeatureState.a, paramPanelFeatureState, null);
      paramPanelFeatureState.f = null;
      paramPanelFeatureState.o = true;
    }
    while (this.z != paramPanelFeatureState);
    this.z = null;
  }

  private boolean a(AppCompatDelegateImplV7.PanelFeatureState paramPanelFeatureState, int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    if (paramKeyEvent.isSystem());
    do
      return false;
    while (((!paramPanelFeatureState.k) && (!b(paramPanelFeatureState, paramKeyEvent))) || (paramPanelFeatureState.h == null));
    return paramPanelFeatureState.h.performShortcut(paramInt1, paramKeyEvent, 1);
  }

  private void b(MenuBuilder paramMenuBuilder)
  {
    if (this.x)
      return;
    this.x = true;
    this.n.g();
    Window.Callback localCallback = this.b.getCallback();
    if ((localCallback != null) && (!l()))
      localCallback.onPanelClosed(8, paramMenuBuilder);
    this.x = false;
  }

  private boolean b(AppCompatDelegateImplV7.PanelFeatureState paramPanelFeatureState, KeyEvent paramKeyEvent)
  {
    if (l())
      return false;
    if (paramPanelFeatureState.k)
      return true;
    if ((this.z != null) && (this.z != paramPanelFeatureState))
      a(this.z, false);
    Window.Callback localCallback = this.b.getCallback();
    if (localCallback != null)
      paramPanelFeatureState.g = localCallback.onCreatePanelView(paramPanelFeatureState.a);
    int i;
    label87: Context localContext;
    TypedValue localTypedValue;
    Resources.Theme localTheme1;
    Resources.Theme localTheme2;
    label256: Object localObject;
    if ((paramPanelFeatureState.a == 0) || (paramPanelFeatureState.a == 8))
    {
      i = 1;
      if ((i != 0) && (this.n != null))
        this.n.setMenuPrepared();
      if ((paramPanelFeatureState.g != null) || ((i != 0) && ((j() instanceof android.support.v7.internal.a.b))))
        break label625;
      if ((paramPanelFeatureState.h != null) && (!paramPanelFeatureState.p))
        break label493;
      if (paramPanelFeatureState.h == null)
      {
        localContext = this.a;
        if (((paramPanelFeatureState.a != 0) && (paramPanelFeatureState.a != 8)) || (this.n == null))
          break label654;
        localTypedValue = new TypedValue();
        localTheme1 = localContext.getTheme();
        localTheme1.resolveAttribute(R.attr.actionBarTheme, localTypedValue, true);
        if (localTypedValue.resourceId == 0)
          break label470;
        localTheme2 = localContext.getResources().newTheme();
        localTheme2.setTo(localTheme1);
        localTheme2.applyStyle(localTypedValue.resourceId, true);
        localTheme2.resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
        if (localTypedValue.resourceId != 0)
        {
          if (localTheme2 == null)
          {
            localTheme2 = localContext.getResources().newTheme();
            localTheme2.setTo(localTheme1);
          }
          localTheme2.applyStyle(localTypedValue.resourceId, true);
        }
        Resources.Theme localTheme3 = localTheme2;
        if (localTheme3 == null)
          break label654;
        localObject = new android.support.v7.internal.view.a(localContext, 0);
        ((Context)localObject).getTheme().setTo(localTheme3);
      }
    }
    while (true)
    {
      MenuBuilder localMenuBuilder = new MenuBuilder((Context)localObject);
      localMenuBuilder.a(this);
      paramPanelFeatureState.a(localMenuBuilder);
      if (paramPanelFeatureState.h == null)
        break;
      if ((i != 0) && (this.n != null))
      {
        if (this.o == null)
          this.o = new w(this, 0);
        this.n.setMenu(paramPanelFeatureState.h, this.o);
      }
      paramPanelFeatureState.h.f();
      if (!localCallback.onCreatePanelMenu(paramPanelFeatureState.a, paramPanelFeatureState.h))
      {
        paramPanelFeatureState.a(null);
        if ((i == 0) || (this.n == null))
          break;
        this.n.setMenu(null, this.o);
        return false;
        i = 0;
        break label87;
        label470: localTheme1.resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
        localTheme2 = null;
        break label256;
      }
      paramPanelFeatureState.p = false;
      label493: paramPanelFeatureState.h.f();
      if (paramPanelFeatureState.q != null)
      {
        paramPanelFeatureState.h.d(paramPanelFeatureState.q);
        paramPanelFeatureState.q = null;
      }
      if (!localCallback.onPreparePanel(0, paramPanelFeatureState.g, paramPanelFeatureState.h))
      {
        if ((i != 0) && (this.n != null))
          this.n.setMenu(null, this.o);
        paramPanelFeatureState.h.g();
        return false;
      }
      int i1;
      if (paramKeyEvent != null)
      {
        i1 = paramKeyEvent.getDeviceId();
        if (KeyCharacterMap.load(i1).getKeyboardType() == 1)
          break label648;
      }
      label648: for (boolean bool = true; ; bool = false)
      {
        paramPanelFeatureState.n = bool;
        paramPanelFeatureState.h.setQwertyMode(paramPanelFeatureState.n);
        paramPanelFeatureState.h.g();
        label625: paramPanelFeatureState.k = true;
        paramPanelFeatureState.l = false;
        this.z = paramPanelFeatureState;
        return true;
        i1 = -1;
        break;
      }
      label654: localObject = localContext;
    }
  }

  private AppCompatDelegateImplV7.PanelFeatureState e(int paramInt)
  {
    Object localObject1 = this.y;
    if ((localObject1 == null) || (localObject1.length <= paramInt))
    {
      AppCompatDelegateImplV7.PanelFeatureState[] arrayOfPanelFeatureState = new AppCompatDelegateImplV7.PanelFeatureState[paramInt + 1];
      if (localObject1 != null)
        System.arraycopy(localObject1, 0, arrayOfPanelFeatureState, 0, localObject1.length);
      this.y = arrayOfPanelFeatureState;
      localObject1 = arrayOfPanelFeatureState;
    }
    Object localObject2 = localObject1[paramInt];
    if (localObject2 == null)
    {
      AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState = new AppCompatDelegateImplV7.PanelFeatureState(paramInt);
      localObject1[paramInt] = localPanelFeatureState;
      return localPanelFeatureState;
    }
    return (AppCompatDelegateImplV7.PanelFeatureState)localObject2;
  }

  private void f(int paramInt)
  {
    this.B |= 1 << paramInt;
    if ((!this.A) && (this.r != null))
    {
      ViewCompat.postOnAnimation(this.r, this.C);
      this.A = true;
    }
  }

  private void n()
  {
    if (!this.q)
    {
      LayoutInflater localLayoutInflater = LayoutInflater.from(this.a);
      if (!this.i)
        if (this.h)
        {
          this.s = ((ViewGroup)localLayoutInflater.inflate(R.layout.abc_dialog_title_material, null));
          this.f = false;
          this.e = false;
        }
      while (this.s == null)
      {
        throw new IllegalArgumentException("AppCompat does not support the current theme features");
        if (!this.e)
          continue;
        TypedValue localTypedValue = new TypedValue();
        this.a.getTheme().resolveAttribute(R.attr.actionBarTheme, localTypedValue, true);
        if (localTypedValue.resourceId != 0);
        for (Object localObject = new android.support.v7.internal.view.a(this.a, localTypedValue.resourceId); ; localObject = this.a)
        {
          this.s = ((ViewGroup)LayoutInflater.from((Context)localObject).inflate(R.layout.abc_screen_toolbar, null));
          this.n = ((C)this.s.findViewById(R.id.decor_content_parent));
          this.n.setWindowCallback(this.b.getCallback());
          if (this.f)
            this.n.a(9);
          if (this.v)
            this.n.a(2);
          if (!this.w)
            break;
          this.n.a(5);
          break;
        }
        if (this.g);
        for (this.s = ((ViewGroup)localLayoutInflater.inflate(R.layout.abc_screen_simple_overlay_action_mode, null)); ; this.s = ((ViewGroup)localLayoutInflater.inflate(R.layout.abc_screen_simple, null)))
        {
          if (Build.VERSION.SDK_INT < 21)
            break label313;
          ViewCompat.setOnApplyWindowInsetsListener(this.s, new t(this));
          break;
        }
        label313: ((F)this.s).setOnFitSystemWindowsListener(new u(this));
      }
      if (this.n == null)
        this.t = ((TextView)this.s.findViewById(R.id.title));
      ae.b(this.s);
      ViewGroup localViewGroup = (ViewGroup)this.b.findViewById(16908290);
      ContentFrameLayout localContentFrameLayout = (ContentFrameLayout)this.s.findViewById(R.id.action_bar_activity_content);
      while (localViewGroup.getChildCount() > 0)
      {
        View localView = localViewGroup.getChildAt(0);
        localViewGroup.removeViewAt(0);
        localContentFrameLayout.addView(localView);
      }
      this.b.setContentView(this.s);
      localViewGroup.setId(-1);
      localContentFrameLayout.setId(16908290);
      if ((localViewGroup instanceof FrameLayout))
        ((FrameLayout)localViewGroup).setForeground(null);
      CharSequence localCharSequence = m();
      if (!TextUtils.isEmpty(localCharSequence))
        b(localCharSequence);
      localContentFrameLayout.setDecorPadding(this.r.getPaddingLeft(), this.r.getPaddingTop(), this.r.getPaddingRight(), this.r.getPaddingBottom());
      TypedArray localTypedArray = this.a.obtainStyledAttributes(R.styleable.Theme);
      localTypedArray.getValue(R.styleable.Theme_windowMinWidthMajor, localContentFrameLayout.a());
      localTypedArray.getValue(R.styleable.Theme_windowMinWidthMinor, localContentFrameLayout.b());
      if (localTypedArray.hasValue(R.styleable.Theme_windowFixedWidthMajor))
        localTypedArray.getValue(R.styleable.Theme_windowFixedWidthMajor, localContentFrameLayout.c());
      if (localTypedArray.hasValue(R.styleable.Theme_windowFixedWidthMinor))
        localTypedArray.getValue(R.styleable.Theme_windowFixedWidthMinor, localContentFrameLayout.d());
      if (localTypedArray.hasValue(R.styleable.Theme_windowFixedHeightMajor))
        localTypedArray.getValue(R.styleable.Theme_windowFixedHeightMajor, localContentFrameLayout.e());
      if (localTypedArray.hasValue(R.styleable.Theme_windowFixedHeightMinor))
        localTypedArray.getValue(R.styleable.Theme_windowFixedHeightMinor, localContentFrameLayout.f());
      localTypedArray.recycle();
      localContentFrameLayout.requestLayout();
      this.q = true;
      AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState = e(0);
      if ((!l()) && ((localPanelFeatureState == null) || (localPanelFeatureState.h == null)))
        f(8);
    }
  }

  private void o()
  {
    if (this.q)
      throw new AndroidRuntimeException("Window feature must be requested before adding content");
  }

  final android.support.v7.b.a a(android.support.v7.b.b paramb)
  {
    if (this.j != null)
      this.j.c();
    x localx = new x(this, paramb);
    Object localObject;
    label242: boolean bool;
    if (this.k == null)
    {
      if (!this.h)
        break label407;
      TypedValue localTypedValue = new TypedValue();
      Resources.Theme localTheme1 = this.a.getTheme();
      localTheme1.resolveAttribute(R.attr.actionBarTheme, localTypedValue, true);
      if (localTypedValue.resourceId != 0)
      {
        Resources.Theme localTheme2 = this.a.getResources().newTheme();
        localTheme2.setTo(localTheme1);
        localTheme2.applyStyle(localTypedValue.resourceId, true);
        localObject = new android.support.v7.internal.view.a(this.a, 0);
        ((Context)localObject).getTheme().setTo(localTheme2);
        this.k = new ActionBarContextView((Context)localObject);
        this.l = new PopupWindow((Context)localObject, null, R.attr.actionModePopupWindowStyle);
        this.l.setContentView(this.k);
        this.l.setWidth(-1);
        ((Context)localObject).getTheme().resolveAttribute(R.attr.actionBarSize, localTypedValue, true);
        int i = TypedValue.complexToDimensionPixelSize(localTypedValue.data, ((Context)localObject).getResources().getDisplayMetrics());
        this.k.setContentHeight(i);
        this.l.setHeight(-2);
        this.m = new v(this);
      }
    }
    else if (this.k != null)
    {
      this.k.e();
      Context localContext = this.k.getContext();
      ActionBarContextView localActionBarContextView = this.k;
      if (this.l != null)
        break label454;
      bool = true;
      label280: android.support.v7.internal.view.b localb = new android.support.v7.internal.view.b(localContext, localActionBarContextView, localx, bool);
      if (!paramb.a(localb, localb.b()))
        break label460;
      localb.d();
      this.k.a(localb);
      this.k.setVisibility(0);
      this.j = localb;
      if (this.l != null)
        this.b.getDecorView().post(this.m);
      this.k.sendAccessibilityEvent(32);
      if (this.k.getParent() != null)
        ViewCompat.requestApplyInsets((View)this.k.getParent());
    }
    while (true)
    {
      return this.j;
      localObject = this.a;
      break;
      label407: ViewStubCompat localViewStubCompat = (ViewStubCompat)this.s.findViewById(R.id.action_mode_bar_stub);
      if (localViewStubCompat == null)
        break label242;
      localViewStubCompat.setLayoutInflater(LayoutInflater.from(k()));
      this.k = ((ActionBarContextView)localViewStubCompat.a());
      break label242;
      label454: bool = false;
      break label280;
      label460: this.j = null;
    }
  }

  View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if ((this.c instanceof LayoutInflater.Factory))
    {
      View localView = ((LayoutInflater.Factory)this.c).onCreateView(paramString, paramContext, paramAttributeSet);
      if (localView != null)
        return localView;
    }
    return null;
  }

  public final void a(int paramInt)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)this.s.findViewById(16908290);
    localViewGroup.removeAllViews();
    LayoutInflater.from(this.a).inflate(paramInt, localViewGroup);
    this.c.onContentChanged();
  }

  public final void a(Configuration paramConfiguration)
  {
    if ((this.e) && (this.q))
    {
      a locala = a();
      if (locala != null)
        locala.a(paramConfiguration);
    }
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.r = ((ViewGroup)this.b.getDecorView());
    a locala;
    if (((this.c instanceof Activity)) && (NavUtils.getParentActivityName((Activity)this.c) != null))
    {
      locala = j();
      if (locala == null)
        this.D = true;
    }
    else
    {
      return;
    }
    locala.e(true);
  }

  public final void a(MenuBuilder paramMenuBuilder)
  {
    if ((this.n != null) && (this.n.b()) && ((!ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(this.a))) || (this.n.d())))
    {
      Window.Callback localCallback = this.b.getCallback();
      if (!this.n.c())
        if ((localCallback != null) && (!l()))
        {
          if ((this.A) && ((0x1 & this.B) != 0))
          {
            this.r.removeCallbacks(this.C);
            this.C.run();
          }
          AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState2 = e(0);
          if ((localPanelFeatureState2.h != null) && (!localPanelFeatureState2.p) && (localCallback.onPreparePanel(0, localPanelFeatureState2.g, localPanelFeatureState2.h)))
          {
            localCallback.onMenuOpened(8, localPanelFeatureState2.h);
            this.n.e();
          }
        }
      do
      {
        return;
        this.n.f();
      }
      while (l());
      localCallback.onPanelClosed(8, e(0).h);
      return;
    }
    AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState1 = e(0);
    localPanelFeatureState1.o = true;
    a(localPanelFeatureState1, false);
    a(localPanelFeatureState1, null);
  }

  public final void a(View paramView)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)this.s.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
    this.c.onContentChanged();
  }

  public final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    n();
    ViewGroup localViewGroup = (ViewGroup)this.s.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
    this.c.onContentChanged();
  }

  final boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    a locala = a();
    if ((locala != null) && (locala.a(paramInt, paramKeyEvent)));
    boolean bool;
    do
    {
      while (true)
      {
        return true;
        if ((this.z == null) || (!a(this.z, paramKeyEvent.getKeyCode(), paramKeyEvent, 1)))
          break;
        if (this.z == null)
          continue;
        this.z.l = true;
        return true;
      }
      if (this.z != null)
        break;
      AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState = e(0);
      b(localPanelFeatureState, paramKeyEvent);
      bool = a(localPanelFeatureState, paramKeyEvent.getKeyCode(), paramKeyEvent, 1);
      localPanelFeatureState.k = false;
    }
    while (bool);
    return false;
  }

  public final boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    Window.Callback localCallback = this.b.getCallback();
    if ((localCallback != null) && (!l()))
    {
      AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState = a(paramMenuBuilder.n());
      if (localPanelFeatureState != null)
        return localCallback.onMenuItemSelected(localPanelFeatureState.a, paramMenuItem);
    }
    return false;
  }

  final boolean a(KeyEvent paramKeyEvent)
  {
    int i = paramKeyEvent.getKeyCode();
    int i1;
    if (paramKeyEvent.getAction() == 0)
    {
      i1 = 1;
      if (i1 == 0)
        break label110;
      switch (i)
      {
      default:
      case 82:
      }
    }
    boolean bool1;
    label106: 
    while (true)
    {
      if (Build.VERSION.SDK_INT >= 11)
        break label108;
      bool1 = a(i, paramKeyEvent);
      return bool1;
      i1 = 0;
      break;
      AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState3;
      if (paramKeyEvent.getRepeatCount() == 0)
      {
        localPanelFeatureState3 = e(0);
        if (localPanelFeatureState3.m);
      }
      for (boolean bool4 = b(localPanelFeatureState3, paramKeyEvent); ; bool4 = false)
      {
        if (!bool4)
          break label106;
        bool1 = true;
        break;
      }
    }
    label108: return false;
    label110: AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState2;
    label159: boolean bool2;
    switch (i)
    {
    default:
    case 82:
      int i3;
      do
      {
        bool1 = false;
        break;
        if (this.j == null)
          break label159;
        i3 = 0;
      }
      while (i3 == 0);
      return true;
      localPanelFeatureState2 = e(0);
      if ((this.n != null) && (this.n.b()) && (!ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(this.a))))
        if (!this.n.c())
        {
          if ((l()) || (!b(localPanelFeatureState2, paramKeyEvent)))
            break;
          bool2 = this.n.e();
        }
      while (true)
      {
        label238: if (bool2)
        {
          AudioManager localAudioManager = (AudioManager)this.a.getSystemService("audio");
          if (localAudioManager == null)
            break label372;
          localAudioManager.playSoundEffect(0);
        }
        label269: i3 = bool2;
        break;
        bool2 = this.n.f();
        continue;
        if ((!localPanelFeatureState2.m) && (!localPanelFeatureState2.l))
          break label323;
        bool2 = localPanelFeatureState2.m;
        a(localPanelFeatureState2, true);
      }
      label323: if (!localPanelFeatureState2.k)
        break;
      if (localPanelFeatureState2.p)
        localPanelFeatureState2.k = false;
    case 4:
    }
    for (boolean bool3 = b(localPanelFeatureState2, paramKeyEvent); ; bool3 = true)
    {
      if (bool3)
      {
        a(localPanelFeatureState2, paramKeyEvent);
        bool2 = true;
        break label238;
        label372: Log.w("AppCompatDelegate", "Couldn't get audio manager");
        break label269;
        AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState1 = e(0);
        if ((localPanelFeatureState1 != null) && (localPanelFeatureState1.m))
        {
          a(localPanelFeatureState1, true);
          return true;
        }
        int i2;
        if (this.j != null)
        {
          this.j.c();
          i2 = 1;
        }
        while (i2 != 0)
        {
          return true;
          a locala = a();
          if ((locala != null) && (locala.e()))
          {
            i2 = 1;
            continue;
          }
          i2 = 0;
        }
        break;
      }
      bool2 = false;
      break label238;
    }
  }

  public final void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    n();
    ((ViewGroup)this.s.findViewById(16908290)).addView(paramView, paramLayoutParams);
    this.c.onContentChanged();
  }

  final void b(CharSequence paramCharSequence)
  {
    if (this.n != null)
      this.n.setWindowTitle(paramCharSequence);
    do
    {
      return;
      if (j() == null)
        continue;
      j().b(paramCharSequence);
      return;
    }
    while (this.t == null);
    this.t.setText(paramCharSequence);
  }

  public final boolean b(int paramInt)
  {
    switch (paramInt)
    {
    case 3:
    case 4:
    case 6:
    case 7:
    default:
      return this.b.requestFeature(paramInt);
    case 8:
      o();
      this.e = true;
      return true;
    case 9:
      o();
      this.f = true;
      return true;
    case 10:
      o();
      this.g = true;
      return true;
    case 2:
      o();
      this.v = true;
      return true;
    case 5:
      o();
      this.w = true;
      return true;
    case 1:
    }
    o();
    this.i = true;
    return true;
  }

  public final void c()
  {
    n();
  }

  final boolean c(int paramInt)
  {
    int i;
    if (paramInt == 8)
    {
      a locala = a();
      if (locala != null)
        locala.g(false);
      i = 1;
    }
    AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState;
    boolean bool;
    do
    {
      do
      {
        return i;
        i = 0;
      }
      while (paramInt != 0);
      localPanelFeatureState = e(paramInt);
      bool = localPanelFeatureState.m;
      i = 0;
    }
    while (!bool);
    a(localPanelFeatureState, false);
    return false;
  }

  public final void d()
  {
    a locala = a();
    if (locala != null)
      locala.f(false);
  }

  final boolean d(int paramInt)
  {
    if (paramInt == 8)
    {
      a locala = a();
      if (locala != null)
        locala.g(true);
      return true;
    }
    return false;
  }

  public final void e()
  {
    a locala = a();
    if (locala != null)
      locala.f(true);
  }

  public final void f()
  {
    a locala = a();
    if ((locala != null) && (locala.d()))
      return;
    f(0);
  }

  public final void h()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.a);
    if (localLayoutInflater.getFactory() == null)
    {
      LayoutInflaterCompat.setFactory(localLayoutInflater, this);
      return;
    }
    Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
  }

  public final a i()
  {
    n();
    e locale;
    if ((this.c instanceof Activity))
      locale = new e((Activity)this.c, this.f);
    while (true)
    {
      if (locale != null)
        locale.e(this.D);
      return locale;
      boolean bool = this.c instanceof Dialog;
      locale = null;
      if (!bool)
        continue;
      locale = new e((Dialog)this.c);
    }
  }

  public final View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    View localView = a(paramView, paramString, paramContext, paramAttributeSet);
    if (localView != null)
      return localView;
    boolean bool1;
    if (Build.VERSION.SDK_INT < 21)
    {
      bool1 = true;
      if (this.G == null)
        this.G = new android.support.v7.internal.a.a();
      if ((!bool1) || (!this.q) || (paramView == null) || (paramView.getId() == 16908290) || (ViewCompat.isAttachedToWindow(paramView)))
        break label108;
    }
    label108: for (boolean bool2 = true; ; bool2 = false)
    {
      return this.G.a(paramView, paramString, paramContext, paramAttributeSet, bool2, bool1, true);
      bool1 = false;
      break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7
 * JD-Core Version:    0.6.0
 */