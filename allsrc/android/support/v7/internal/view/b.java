package android.support.v7.internal.view;

import android.content.Context;
import android.support.v7.b.a;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

public final class b extends a
  implements h
{
  private Context a;
  private ActionBarContextView b;
  private android.support.v7.b.b c;
  private WeakReference<View> d;
  private boolean e;
  private MenuBuilder f;

  public b(Context paramContext, ActionBarContextView paramActionBarContextView, android.support.v7.b.b paramb, boolean paramBoolean)
  {
    this.a = paramContext;
    this.b = paramActionBarContextView;
    this.c = paramb;
    this.f = new MenuBuilder(paramActionBarContextView.getContext()).a(1);
    this.f.a(this);
  }

  public final MenuInflater a()
  {
    return new MenuInflater(this.b.getContext());
  }

  public final void a(int paramInt)
  {
    b(this.a.getString(paramInt));
  }

  public final void a(MenuBuilder paramMenuBuilder)
  {
    d();
    this.b.a();
  }

  public final void a(View paramView)
  {
    this.b.setCustomView(paramView);
    if (paramView != null);
    for (WeakReference localWeakReference = new WeakReference(paramView); ; localWeakReference = null)
    {
      this.d = localWeakReference;
      return;
    }
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.b.setSubtitle(paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    this.b.setTitleOptional(paramBoolean);
  }

  public final boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return this.c.a(this, paramMenuItem);
  }

  public final Menu b()
  {
    return this.f;
  }

  public final void b(int paramInt)
  {
    a(this.a.getString(paramInt));
  }

  public final void b(CharSequence paramCharSequence)
  {
    this.b.setTitle(paramCharSequence);
  }

  public final void c()
  {
    if (this.e)
      return;
    this.e = true;
    this.b.sendAccessibilityEvent(32);
    this.c.a(this);
  }

  public final void d()
  {
    this.c.b(this, this.f);
  }

  public final CharSequence f()
  {
    return this.b.b();
  }

  public final CharSequence g()
  {
    return this.b.c();
  }

  public final boolean h()
  {
    return this.b.f();
  }

  public final View i()
  {
    if (this.d != null)
      return (View)this.d.get();
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.b
 * JD-Core Version:    0.6.0
 */