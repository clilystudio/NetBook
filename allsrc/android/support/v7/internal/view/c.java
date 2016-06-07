package android.support.v7.internal.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.b.a;
import android.support.v7.internal.view.menu.e;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

@TargetApi(11)
public final class c extends ActionMode
{
  final a a;
  private Context b;

  public c(Context paramContext, a parama)
  {
    this.b = paramContext;
    this.a = parama;
  }

  public final void finish()
  {
    this.a.c();
  }

  public final View getCustomView()
  {
    return this.a.i();
  }

  public final Menu getMenu()
  {
    return e.a(this.b, (SupportMenu)this.a.b());
  }

  public final MenuInflater getMenuInflater()
  {
    return this.a.a();
  }

  public final CharSequence getSubtitle()
  {
    return this.a.g();
  }

  public final Object getTag()
  {
    return this.a.j();
  }

  public final CharSequence getTitle()
  {
    return this.a.f();
  }

  public final boolean getTitleOptionalHint()
  {
    return this.a.k();
  }

  public final void invalidate()
  {
    this.a.d();
  }

  public final boolean isTitleOptional()
  {
    return this.a.h();
  }

  public final void setCustomView(View paramView)
  {
    this.a.a(paramView);
  }

  public final void setSubtitle(int paramInt)
  {
    this.a.b(paramInt);
  }

  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.a.a(paramCharSequence);
  }

  public final void setTag(Object paramObject)
  {
    this.a.a(paramObject);
  }

  public final void setTitle(int paramInt)
  {
    this.a.a(paramInt);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.a.b(paramCharSequence);
  }

  public final void setTitleOptionalHint(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.c
 * JD-Core Version:    0.6.0
 */