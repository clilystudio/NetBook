package android.support.v7.internal.a;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.b.a;
import android.support.v7.b.b;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.D;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public final class i extends a
  implements h
{
  private final Context a;
  private final MenuBuilder b;
  private b c;
  private WeakReference<View> d;

  public i(e parame, Context paramContext, b paramb)
  {
    this.a = paramContext;
    this.c = paramb;
    this.b = new MenuBuilder(paramContext).a(1);
    this.b.a(this);
  }

  public final MenuInflater a()
  {
    return new android.support.v7.internal.view.e(this.a);
  }

  public final void a(int paramInt)
  {
    b(e.k(this.e).getResources().getString(paramInt));
  }

  public final void a(MenuBuilder paramMenuBuilder)
  {
    if (this.c == null)
      return;
    d();
    e.i(this.e).a();
  }

  public final void a(View paramView)
  {
    e.i(this.e).setCustomView(paramView);
    this.d = new WeakReference(paramView);
  }

  public final void a(CharSequence paramCharSequence)
  {
    e.i(this.e).setSubtitle(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    e.i(this.e).setTitleOptional(paramBoolean);
  }

  public final boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    if (this.c != null)
      return this.c.a(this, paramMenuItem);
    return false;
  }

  public final Menu b()
  {
    return this.b;
  }

  public final void b(int paramInt)
  {
    a(e.k(this.e).getResources().getString(paramInt));
  }

  public final void b(CharSequence paramCharSequence)
  {
    e.i(this.e).setTitle(paramCharSequence);
  }

  public final void c()
  {
    if (this.e.a != this)
      return;
    if (!e.a(e.g(this.e), e.h(this.e), false))
    {
      this.e.b = this;
      this.e.c = this.c;
    }
    while (true)
    {
      this.c = null;
      this.e.i(false);
      e.i(this.e).d();
      e.j(this.e).a().sendAccessibilityEvent(32);
      e.f(this.e).setHideOnContentScrollEnabled(this.e.d);
      this.e.a = null;
      return;
      this.c.a(this);
    }
  }

  public final void d()
  {
    if (this.e.a != this)
      return;
    this.b.f();
    try
    {
      this.c.b(this, this.b);
      return;
    }
    finally
    {
      this.b.g();
    }
    throw localObject;
  }

  public final boolean e()
  {
    this.b.f();
    try
    {
      boolean bool = this.c.a(this, this.b);
      return bool;
    }
    finally
    {
      this.b.g();
    }
    throw localObject;
  }

  public final CharSequence f()
  {
    return e.i(this.e).b();
  }

  public final CharSequence g()
  {
    return e.i(this.e).c();
  }

  public final boolean h()
  {
    return e.i(this.e).f();
  }

  public final View i()
  {
    if (this.d != null)
      return (View)this.d.get();
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.a.i
 * JD-Core Version:    0.6.0
 */