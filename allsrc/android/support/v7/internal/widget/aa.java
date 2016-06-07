package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.drawable;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.string;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.v;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;
import com.handmark.pulltorefresh.library.internal.e;

public final class aa
  implements D
{
  private Toolbar a;
  private int b;
  private View c;
  private View d;
  private Drawable e;
  private Drawable f;
  private Drawable g;
  private boolean h;
  private CharSequence i;
  private CharSequence j;
  private CharSequence k;
  private Window.Callback l;
  private boolean m;
  private ActionMenuPresenter n;
  private int o = 0;
  private final Y p;
  private int q = 0;
  private Drawable r;

  public aa(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, true, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_mtrl_am_alpha);
  }

  private aa(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.a = paramToolbar;
    this.i = paramToolbar.i();
    this.j = paramToolbar.j();
    boolean bool;
    label480: int i2;
    if (this.i != null)
    {
      bool = true;
      this.h = bool;
      this.g = paramToolbar.l();
      if (!paramBoolean)
        break label593;
      e locale = e.a(paramToolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
      CharSequence localCharSequence1 = locale.c(R.styleable.ActionBar_title);
      if (!TextUtils.isEmpty(localCharSequence1))
        b(localCharSequence1);
      CharSequence localCharSequence2 = locale.c(R.styleable.ActionBar_subtitle);
      if (!TextUtils.isEmpty(localCharSequence2))
      {
        this.j = localCharSequence2;
        if ((0x8 & this.b) != 0)
          this.a.setSubtitle(localCharSequence2);
      }
      Drawable localDrawable2 = locale.a(R.styleable.ActionBar_logo);
      if (localDrawable2 != null)
        c(localDrawable2);
      Drawable localDrawable3 = locale.a(R.styleable.ActionBar_icon);
      if ((this.g == null) && (localDrawable3 != null))
        a(localDrawable3);
      Drawable localDrawable4 = locale.a(R.styleable.ActionBar_homeAsUpIndicator);
      if (localDrawable4 != null)
      {
        this.g = localDrawable4;
        t();
      }
      c(locale.a(R.styleable.ActionBar_displayOptions, 0));
      int i3 = locale.f(R.styleable.ActionBar_customNavigationLayout, 0);
      if (i3 != 0)
      {
        a(LayoutInflater.from(this.a.getContext()).inflate(i3, this.a, false));
        c(0x10 | this.b);
      }
      int i4 = locale.e(R.styleable.ActionBar_height, 0);
      if (i4 > 0)
      {
        ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
        localLayoutParams.height = i4;
        this.a.setLayoutParams(localLayoutParams);
      }
      int i5 = locale.c(R.styleable.ActionBar_contentInsetStart, -1);
      int i6 = locale.c(R.styleable.ActionBar_contentInsetEnd, -1);
      if ((i5 >= 0) || (i6 >= 0))
        this.a.setContentInsetsRelative(Math.max(i5, 0), Math.max(i6, 0));
      int i7 = locale.f(R.styleable.ActionBar_titleTextStyle, 0);
      if (i7 != 0)
        this.a.setTitleTextAppearance(this.a.getContext(), i7);
      int i8 = locale.f(R.styleable.ActionBar_subtitleTextStyle, 0);
      if (i8 != 0)
        this.a.setSubtitleTextAppearance(this.a.getContext(), i8);
      int i9 = locale.f(R.styleable.ActionBar_popupTheme, 0);
      if (i9 != 0)
        this.a.setPopupTheme(i9);
      locale.b();
      this.p = locale.c();
      if (paramInt1 != this.q)
      {
        this.q = paramInt1;
        if (TextUtils.isEmpty(this.a.k()))
        {
          i2 = this.q;
          if (i2 != 0)
            break label631;
        }
      }
    }
    label593: label631: for (String str = null; ; str = this.a.getContext().getString(i2))
    {
      this.k = str;
      s();
      this.k = this.a.k();
      Drawable localDrawable1 = this.p.a(paramInt2);
      if (this.r != localDrawable1)
      {
        this.r = localDrawable1;
        t();
      }
      this.a.setNavigationOnClickListener(new ab(this));
      return;
      bool = false;
      break;
      int i1 = 11;
      if (this.a.l() != null)
        i1 = 15;
      this.b = i1;
      this.p = Y.a(paramToolbar.getContext());
      break label480;
    }
  }

  private void c(Drawable paramDrawable)
  {
    this.f = paramDrawable;
    r();
  }

  private void c(CharSequence paramCharSequence)
  {
    this.i = paramCharSequence;
    if ((0x8 & this.b) != 0)
      this.a.setTitle(paramCharSequence);
  }

  private void r()
  {
    int i1 = 0x2 & this.b;
    Drawable localDrawable = null;
    if (i1 != 0)
    {
      if ((0x1 & this.b) == 0)
        break label51;
      if (this.f == null)
        break label43;
      localDrawable = this.f;
    }
    while (true)
    {
      this.a.setLogo(localDrawable);
      return;
      label43: localDrawable = this.e;
      continue;
      label51: localDrawable = this.e;
    }
  }

  private void s()
  {
    if ((0x4 & this.b) != 0)
    {
      if (TextUtils.isEmpty(this.k))
        this.a.setNavigationContentDescription(this.q);
    }
    else
      return;
    this.a.setNavigationContentDescription(this.k);
  }

  private void t()
  {
    Toolbar localToolbar;
    if ((0x4 & this.b) != 0)
    {
      localToolbar = this.a;
      if (this.g == null)
        break label32;
    }
    label32: for (Drawable localDrawable = this.g; ; localDrawable = this.r)
    {
      localToolbar.setNavigationIcon(localDrawable);
      return;
    }
  }

  public final ViewGroup a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    if (paramInt != 0);
    for (Drawable localDrawable = this.p.a(paramInt); ; localDrawable = null)
    {
      a(localDrawable);
      return;
    }
  }

  public final void a(Drawable paramDrawable)
  {
    this.e = paramDrawable;
    r();
  }

  public final void a(v paramv, h paramh)
  {
    this.a.setMenuCallbacks(paramv, paramh);
  }

  public final void a(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if ((this.c != null) && (this.c.getParent() == this.a))
      this.a.removeView(this.c);
    this.c = paramScrollingTabContainerView;
  }

  public final void a(Menu paramMenu, v paramv)
  {
    if (this.n == null)
    {
      this.n = new ActionMenuPresenter(this.a.getContext());
      this.n.a(R.id.action_menu_presenter);
    }
    this.n.a(paramv);
    this.a.setMenu((MenuBuilder)paramMenu, this.n);
  }

  public final void a(View paramView)
  {
    if ((this.d != null) && ((0x10 & this.b) != 0))
      this.a.removeView(this.d);
    this.d = paramView;
    if ((paramView != null) && ((0x10 & this.b) != 0))
      this.a.addView(this.d);
  }

  public final void a(Window.Callback paramCallback)
  {
    this.l = paramCallback;
  }

  public final void a(CharSequence paramCharSequence)
  {
    if (!this.h)
      c(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    this.a.setCollapsible(paramBoolean);
  }

  public final Context b()
  {
    return this.a.getContext();
  }

  public final void b(int paramInt)
  {
    if (paramInt != 0);
    for (Drawable localDrawable = this.p.a(paramInt); ; localDrawable = null)
    {
      c(localDrawable);
      return;
    }
  }

  public final void b(Drawable paramDrawable)
  {
    this.a.setBackgroundDrawable(paramDrawable);
  }

  public final void b(CharSequence paramCharSequence)
  {
    this.h = true;
    c(paramCharSequence);
  }

  public final void c(int paramInt)
  {
    int i1 = paramInt ^ this.b;
    this.b = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0)
          break label115;
        t();
        s();
      }
      if ((i1 & 0x3) != 0)
        r();
      if ((i1 & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0)
          break label126;
        this.a.setTitle(this.i);
        this.a.setSubtitle(this.j);
      }
    }
    while (true)
    {
      if (((i1 & 0x10) != 0) && (this.d != null))
      {
        if ((paramInt & 0x10) == 0)
          break label145;
        this.a.addView(this.d);
      }
      return;
      label115: this.a.setNavigationIcon(null);
      break;
      label126: this.a.setTitle(null);
      this.a.setSubtitle(null);
    }
    label145: this.a.removeView(this.d);
  }

  public final boolean c()
  {
    return this.a.g();
  }

  public final void d()
  {
    this.a.h();
  }

  public final void d(int paramInt)
  {
    if (paramInt == 8)
      ViewCompat.animate(this.a).alpha(0.0F).setListener(new ac(this));
    do
      return;
    while (paramInt != 0);
    ViewCompat.animate(this.a).alpha(1.0F).setListener(new ad(this));
  }

  public final void e()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }

  public final void f()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }

  public final boolean g()
  {
    return this.a.a();
  }

  public final boolean h()
  {
    return this.a.b();
  }

  public final boolean i()
  {
    return this.a.c();
  }

  public final boolean j()
  {
    return this.a.d();
  }

  public final boolean k()
  {
    return this.a.e();
  }

  public final void l()
  {
    this.m = true;
  }

  public final void m()
  {
    this.a.f();
  }

  public final int n()
  {
    return this.b;
  }

  public final int o()
  {
    return 0;
  }

  public final View p()
  {
    return this.d;
  }

  public final Menu q()
  {
    return this.a.m();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.aa
 * JD-Core Version:    0.6.0
 */