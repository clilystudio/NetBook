package android.support.v7.internal.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.widget.K;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.D;
import android.support.v7.internal.widget.j;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

public class e extends android.support.v7.app.a
  implements j
{
  private static final boolean e;
  private ViewPropertyAnimatorListener A;
  private ViewPropertyAnimatorUpdateListener B;
  i a;
  android.support.v7.b.a b;
  android.support.v7.b.b c;
  boolean d;
  private Context f;
  private Context g;
  private ActionBarOverlayLayout h;
  private ActionBarContainer i;
  private D j;
  private ActionBarContextView k;
  private ActionBarContainer l;
  private View m;
  private boolean n;
  private boolean o;
  private ArrayList<K> p;
  private int q;
  private boolean r;
  private int s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private android.support.v7.internal.view.h x;
  private boolean y;
  private ViewPropertyAnimatorListener z;

  static
  {
    e.class.desiredAssertionStatus();
    if (Build.VERSION.SDK_INT >= 14);
    for (boolean bool = true; ; bool = false)
    {
      e = bool;
      return;
    }
  }

  public e(Activity paramActivity, boolean paramBoolean)
  {
    new ArrayList();
    this.p = new ArrayList();
    this.s = 0;
    this.t = true;
    this.w = true;
    this.z = new f(this);
    this.A = new g(this);
    this.B = new h(this);
    View localView = paramActivity.getWindow().getDecorView();
    b(localView);
    if (!paramBoolean)
      this.m = localView.findViewById(16908290);
  }

  public e(Dialog paramDialog)
  {
    new ArrayList();
    this.p = new ArrayList();
    this.s = 0;
    this.t = true;
    this.w = true;
    this.z = new f(this);
    this.A = new g(this);
    this.B = new h(this);
    b(paramDialog.getWindow().getDecorView());
  }

  private void a(int paramInt1, int paramInt2)
  {
    int i1 = this.j.n();
    if ((paramInt2 & 0x4) != 0)
      this.n = true;
    this.j.c(paramInt1 & paramInt2 | i1 & (paramInt2 ^ 0xFFFFFFFF));
  }

  private void b(View paramView)
  {
    this.h = ((ActionBarOverlayLayout)paramView.findViewById(R.id.decor_content_parent));
    if (this.h != null)
      this.h.setActionBarVisibilityCallback(this);
    View localView = paramView.findViewById(R.id.action_bar);
    D localD;
    if ((localView instanceof D))
      localD = (D)localView;
    while (true)
    {
      this.j = localD;
      this.k = ((ActionBarContextView)paramView.findViewById(R.id.action_context_bar));
      this.i = ((ActionBarContainer)paramView.findViewById(R.id.action_bar_container));
      this.l = ((ActionBarContainer)paramView.findViewById(R.id.split_action_bar));
      if ((this.j != null) && (this.k != null) && (this.i != null))
        break;
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
      if ((localView instanceof Toolbar))
      {
        localD = ((Toolbar)localView).o();
        continue;
      }
      if ("Can't make a decor toolbar out of " + localView != null);
      for (String str = localView.getClass().getSimpleName(); ; str = "null")
        throw new IllegalStateException(str);
    }
    this.f = this.j.b();
    this.q = 0;
    int i1;
    if ((0x4 & this.j.n()) != 0)
      i1 = 1;
    TypedArray localTypedArray;
    while (true)
    {
      if (i1 != 0)
        this.n = true;
      com.alipay.sdk.b.b localb = com.alipay.sdk.b.b.a(this.f);
      localb.g();
      j(localb.e());
      localTypedArray = this.f.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
      if (!localTypedArray.getBoolean(R.styleable.ActionBar_hideOnContentScroll, false))
        break;
      if (!this.h.a())
      {
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        i1 = 0;
        continue;
      }
      this.d = true;
      this.h.setHideOnContentScrollEnabled(true);
    }
    int i2 = localTypedArray.getDimensionPixelSize(R.styleable.ActionBar_elevation, 0);
    if (i2 != 0)
    {
      float f1 = i2;
      ViewCompat.setElevation(this.i, f1);
      if (this.l != null)
        ViewCompat.setElevation(this.l, f1);
    }
    localTypedArray.recycle();
  }

  private static boolean b(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean3);
    do
      return true;
    while ((!paramBoolean1) && (!paramBoolean2));
    return false;
  }

  private void j(boolean paramBoolean)
  {
    boolean bool1 = true;
    this.r = paramBoolean;
    boolean bool2;
    label47: boolean bool3;
    label67: ActionBarOverlayLayout localActionBarOverlayLayout;
    if (!this.r)
    {
      this.j.a(null);
      this.i.setTabContainer(null);
      if (this.j.o() != 2)
        break label121;
      bool2 = bool1;
      D localD = this.j;
      if ((this.r) || (!bool2))
        break label126;
      bool3 = bool1;
      localD.a(bool3);
      localActionBarOverlayLayout = this.h;
      if ((this.r) || (!bool2))
        break label132;
    }
    while (true)
    {
      localActionBarOverlayLayout.setHasNonEmbeddedTabs(bool1);
      return;
      this.i.setTabContainer(null);
      this.j.a(null);
      break;
      label121: bool2 = false;
      break label47;
      label126: bool3 = false;
      break label67;
      label132: bool1 = false;
    }
  }

  private void k(boolean paramBoolean)
  {
    if (b(false, this.u, this.v))
      if (!this.w)
      {
        this.w = true;
        if (this.x != null)
          this.x.b();
        this.i.setVisibility(0);
        if ((this.s != 0) || (!e) || ((!this.y) && (!paramBoolean)))
          break label333;
        ViewCompat.setTranslationY(this.i, 0.0F);
        float f2 = -this.i.getHeight();
        if (paramBoolean)
        {
          int[] arrayOfInt2 = { 0, 0 };
          this.i.getLocationInWindow(arrayOfInt2);
          f2 -= arrayOfInt2[1];
        }
        ViewCompat.setTranslationY(this.i, f2);
        android.support.v7.internal.view.h localh2 = new android.support.v7.internal.view.h();
        ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat2 = ViewCompat.animate(this.i).translationY(0.0F);
        localViewPropertyAnimatorCompat2.setUpdateListener(this.B);
        localh2.a(localViewPropertyAnimatorCompat2);
        if ((this.t) && (this.m != null))
        {
          ViewCompat.setTranslationY(this.m, f2);
          localh2.a(ViewCompat.animate(this.m).translationY(0.0F));
        }
        if ((this.l != null) && (this.q == 1))
        {
          ViewCompat.setTranslationY(this.l, this.l.getHeight());
          this.l.setVisibility(0);
          localh2.a(ViewCompat.animate(this.l).translationY(0.0F));
        }
        localh2.a(AnimationUtils.loadInterpolator(this.f, 17432582));
        localh2.a(250L);
        localh2.a(this.A);
        this.x = localh2;
        localh2.a();
        if (this.h != null)
          ViewCompat.requestApplyInsets(this.h);
      }
    label333: 
    do
    {
      return;
      ViewCompat.setAlpha(this.i, 1.0F);
      ViewCompat.setTranslationY(this.i, 0.0F);
      if ((this.t) && (this.m != null))
        ViewCompat.setTranslationY(this.m, 0.0F);
      if ((this.l != null) && (this.q == 1))
      {
        ViewCompat.setAlpha(this.l, 1.0F);
        ViewCompat.setTranslationY(this.l, 0.0F);
        this.l.setVisibility(0);
      }
      this.A.onAnimationEnd(null);
      break;
    }
    while (!this.w);
    this.w = false;
    if (this.x != null)
      this.x.b();
    if ((this.s == 0) && (e) && ((this.y) || (paramBoolean)))
    {
      ViewCompat.setAlpha(this.i, 1.0F);
      this.i.setTransitioning(true);
      android.support.v7.internal.view.h localh1 = new android.support.v7.internal.view.h();
      float f1 = -this.i.getHeight();
      if (paramBoolean)
      {
        int[] arrayOfInt1 = { 0, 0 };
        this.i.getLocationInWindow(arrayOfInt1);
        f1 -= arrayOfInt1[1];
      }
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat1 = ViewCompat.animate(this.i).translationY(f1);
      localViewPropertyAnimatorCompat1.setUpdateListener(this.B);
      localh1.a(localViewPropertyAnimatorCompat1);
      if ((this.t) && (this.m != null))
        localh1.a(ViewCompat.animate(this.m).translationY(f1));
      if ((this.l != null) && (this.l.getVisibility() == 0))
      {
        ViewCompat.setAlpha(this.l, 1.0F);
        localh1.a(ViewCompat.animate(this.l).translationY(this.l.getHeight()));
      }
      localh1.a(AnimationUtils.loadInterpolator(this.f, 17432581));
      localh1.a(250L);
      localh1.a(this.z);
      this.x = localh1;
      localh1.a();
      return;
    }
    this.z.onAnimationEnd(null);
  }

  public final android.support.v7.b.a a(android.support.v7.b.b paramb)
  {
    if (this.a != null)
      this.a.c();
    this.h.setHideOnContentScrollEnabled(false);
    this.k.e();
    i locali = new i(this, this.k.getContext(), paramb);
    if (locali.e())
    {
      locali.d();
      this.k.a(locali);
      i(true);
      if ((this.l != null) && (this.q == 1) && (this.l.getVisibility() != 0))
      {
        this.l.setVisibility(0);
        if (this.h != null)
          ViewCompat.requestApplyInsets(this.h);
      }
      this.k.sendAccessibilityEvent(32);
      this.a = locali;
      return locali;
    }
    return null;
  }

  public final View a()
  {
    return this.j.p();
  }

  public final void a(int paramInt)
  {
    a(LayoutInflater.from(c()).inflate(2130903226, this.j.a(), false));
  }

  public final void a(Configuration paramConfiguration)
  {
    j(com.alipay.sdk.b.b.a(this.f).e());
  }

  public final void a(Drawable paramDrawable)
  {
    this.i.setPrimaryBackground(paramDrawable);
  }

  public final void a(View paramView)
  {
    this.j.a(paramView);
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.j.b(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    a(0, 2);
  }

  public final int b()
  {
    return this.j.n();
  }

  public final void b(int paramInt)
  {
    this.s = paramInt;
  }

  public final void b(CharSequence paramCharSequence)
  {
    this.j.a(paramCharSequence);
  }

  public final void b(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i1 = 4; ; i1 = 0)
    {
      a(i1, 4);
      return;
    }
  }

  public final Context c()
  {
    int i1;
    if (this.g == null)
    {
      TypedValue localTypedValue = new TypedValue();
      this.f.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
      i1 = localTypedValue.resourceId;
      if (i1 == 0)
        break label61;
    }
    label61: for (this.g = new ContextThemeWrapper(this.f, i1); ; this.g = this.f)
      return this.g;
  }

  public final void c(boolean paramBoolean)
  {
    a(0, 8);
  }

  public final void d(boolean paramBoolean)
  {
    a(16, 16);
  }

  public final void e(boolean paramBoolean)
  {
    if (!this.n)
      b(paramBoolean);
  }

  public final boolean e()
  {
    if ((this.j != null) && (this.j.c()))
    {
      this.j.d();
      return true;
    }
    return false;
  }

  public final void f()
  {
    if (this.u)
    {
      this.u = false;
      k(true);
    }
  }

  public final void f(boolean paramBoolean)
  {
    this.y = paramBoolean;
    if ((!paramBoolean) && (this.x != null))
      this.x.b();
  }

  public final void g()
  {
    if (!this.u)
    {
      this.u = true;
      k(true);
    }
  }

  public final void g(boolean paramBoolean)
  {
    if (paramBoolean == this.o);
    while (true)
    {
      return;
      this.o = paramBoolean;
      int i1 = this.p.size();
      for (int i2 = 0; i2 < i1; i2++)
        this.p.get(i2);
    }
  }

  public final void h()
  {
    if (this.x != null)
    {
      this.x.b();
      this.x = null;
    }
  }

  public final void h(boolean paramBoolean)
  {
    this.t = paramBoolean;
  }

  public final void i(boolean paramBoolean)
  {
    int i1;
    label48: ActionBarContextView localActionBarContextView;
    int i2;
    if (paramBoolean)
    {
      if (!this.v)
      {
        this.v = true;
        if (this.h != null)
          this.h.setShowingForActionMode(true);
        k(false);
      }
      D localD = this.j;
      if (!paramBoolean)
        break label111;
      i1 = 8;
      localD.d(i1);
      localActionBarContextView = this.k;
      i2 = 0;
      if (!paramBoolean)
        break label116;
    }
    while (true)
    {
      localActionBarContextView.a(i2);
      return;
      if (!this.v)
        break;
      this.v = false;
      if (this.h != null)
        this.h.setShowingForActionMode(false);
      k(false);
      break;
      label111: i1 = 0;
      break label48;
      label116: i2 = 8;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.a.e
 * JD-Core Version:    0.6.0
 */