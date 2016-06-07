package android.support.v7.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.MenuItemCompat.OnActionExpandListener;
import android.support.v7.internal.widget.Y;
import android.util.Log;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;

public final class MenuItemImpl
  implements SupportMenuItem
{
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private CharSequence e;
  private CharSequence f;
  private Intent g;
  private char h;
  private char i;
  private Drawable j;
  private int k = 0;
  private MenuBuilder l;
  private SubMenuBuilder m;
  private MenuItem.OnMenuItemClickListener n;
  private int o = 16;
  private int p = 0;
  private View q;
  private android.support.v4.view.ActionProvider r;
  private MenuItemCompat.OnActionExpandListener s;
  private boolean t = false;
  private ContextMenu.ContextMenuInfo u;

  MenuItemImpl(MenuBuilder paramMenuBuilder, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.l = paramMenuBuilder;
    this.a = paramInt2;
    this.b = paramInt1;
    this.c = paramInt3;
    this.d = paramInt4;
    this.e = paramCharSequence;
    this.p = paramInt5;
  }

  private SupportMenuItem a(View paramView)
  {
    this.q = paramView;
    this.r = null;
    if ((paramView != null) && (paramView.getId() == -1) && (this.a > 0))
      paramView.setId(this.a);
    this.l.i();
    return this;
  }

  final CharSequence a(x paramx)
  {
    if ((paramx != null) && (paramx.b()))
      return getTitleCondensed();
    return getTitle();
  }

  final void a(SubMenuBuilder paramSubMenuBuilder)
  {
    this.m = paramSubMenuBuilder;
    paramSubMenuBuilder.setHeaderTitle(getTitle());
  }

  public final void a(boolean paramBoolean)
  {
    int i1 = 0xFFFFFFFB & this.o;
    if (paramBoolean);
    for (int i2 = 4; ; i2 = 0)
    {
      this.o = (i2 | i1);
      return;
    }
  }

  public final boolean a()
  {
    if ((this.n != null) && (this.n.onMenuItemClick(this)));
    do
    {
      do
        return true;
      while (this.l.a(this.l.n(), this));
      if (this.g == null)
        continue;
      try
      {
        this.l.d().startActivity(this.g);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
      }
    }
    while ((this.r != null) && (this.r.onPerformDefaultAction()));
    return false;
  }

  public final int b()
  {
    return this.d;
  }

  final void b(boolean paramBoolean)
  {
    int i1 = this.o;
    int i2 = 0xFFFFFFFD & this.o;
    if (paramBoolean);
    for (int i3 = 2; ; i3 = 0)
    {
      this.o = (i3 | i2);
      if (i1 != this.o)
        this.l.b(false);
      return;
    }
  }

  final char c()
  {
    if (this.l.b())
      return this.i;
    return this.h;
  }

  final boolean c(boolean paramBoolean)
  {
    int i1 = this.o;
    int i2 = 0xFFFFFFF7 & this.o;
    if (paramBoolean);
    for (int i3 = 0; ; i3 = 8)
    {
      this.o = (i3 | i2);
      int i4 = this.o;
      int i5 = 0;
      if (i1 != i4)
        i5 = 1;
      return i5;
    }
  }

  public final boolean collapseActionView()
  {
    if ((0x8 & this.p) == 0);
    do
    {
      return false;
      if (this.q == null)
        return true;
    }
    while ((this.s != null) && (!this.s.onMenuItemActionCollapse(this)));
    return this.l.b(this);
  }

  public final void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.o = (0x20 | this.o);
      return;
    }
    this.o = (0xFFFFFFDF & this.o);
  }

  final boolean d()
  {
    return (this.l.c()) && (c() != 0);
  }

  public final void e(boolean paramBoolean)
  {
    this.t = paramBoolean;
    this.l.b(false);
  }

  public final boolean e()
  {
    return (0x4 & this.o) != 0;
  }

  public final boolean expandActionView()
  {
    if (!l());
    do
      return false;
    while ((this.s != null) && (!this.s.onMenuItemActionExpand(this)));
    return this.l.a(this);
  }

  public final void f()
  {
    this.l.i();
  }

  public final boolean g()
  {
    return false;
  }

  public final android.view.ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }

  public final View getActionView()
  {
    if (this.q != null)
      return this.q;
    if (this.r != null)
    {
      this.q = this.r.onCreateActionView(this);
      return this.q;
    }
    return null;
  }

  public final char getAlphabeticShortcut()
  {
    return this.i;
  }

  public final int getGroupId()
  {
    return this.b;
  }

  public final Drawable getIcon()
  {
    if (this.j != null)
      return this.j;
    if (this.k != 0)
    {
      Drawable localDrawable = Y.a(this.l.d(), this.k);
      this.k = 0;
      this.j = localDrawable;
      return localDrawable;
    }
    return null;
  }

  public final Intent getIntent()
  {
    return this.g;
  }

  @ViewDebug.CapturedViewProperty
  public final int getItemId()
  {
    return this.a;
  }

  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.u;
  }

  public final char getNumericShortcut()
  {
    return this.h;
  }

  public final int getOrder()
  {
    return this.c;
  }

  public final SubMenu getSubMenu()
  {
    return this.m;
  }

  public final android.support.v4.view.ActionProvider getSupportActionProvider()
  {
    return this.r;
  }

  @ViewDebug.CapturedViewProperty
  public final CharSequence getTitle()
  {
    return this.e;
  }

  public final CharSequence getTitleCondensed()
  {
    if (this.f != null);
    for (Object localObject = this.f; ; localObject = this.e)
    {
      if ((Build.VERSION.SDK_INT < 18) && (localObject != null) && (!(localObject instanceof String)))
        localObject = ((CharSequence)localObject).toString();
      return localObject;
    }
  }

  public final boolean h()
  {
    return (0x20 & this.o) == 32;
  }

  public final boolean hasSubMenu()
  {
    return this.m != null;
  }

  public final boolean i()
  {
    return (0x1 & this.p) == 1;
  }

  public final boolean isActionViewExpanded()
  {
    return this.t;
  }

  public final boolean isCheckable()
  {
    return (0x1 & this.o) == 1;
  }

  public final boolean isChecked()
  {
    return (0x2 & this.o) == 2;
  }

  public final boolean isEnabled()
  {
    return (0x10 & this.o) != 0;
  }

  public final boolean isVisible()
  {
    if ((this.r != null) && (this.r.overridesItemVisibility()))
      if (((0x8 & this.o) != 0) || (!this.r.isVisible()));
    do
    {
      return true;
      return false;
    }
    while ((0x8 & this.o) == 0);
    return false;
  }

  public final boolean j()
  {
    return (0x2 & this.p) == 2;
  }

  public final boolean k()
  {
    return (0x4 & this.p) == 4;
  }

  public final boolean l()
  {
    int i1 = 0x8 & this.p;
    int i2 = 0;
    if (i1 != 0)
    {
      if ((this.q == null) && (this.r != null))
        this.q = this.r.onCreateActionView(this);
      View localView = this.q;
      i2 = 0;
      if (localView != null)
        i2 = 1;
    }
    return i2;
  }

  public final MenuItem setActionProvider(android.view.ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }

  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.i == paramChar)
      return this;
    this.i = Character.toLowerCase(paramChar);
    this.l.b(false);
    return this;
  }

  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int i1 = this.o;
    int i2 = 0xFFFFFFFE & this.o;
    if (paramBoolean);
    for (int i3 = 1; ; i3 = 0)
    {
      this.o = (i3 | i2);
      if (i1 != this.o)
        this.l.b(false);
      return this;
    }
  }

  public final MenuItem setChecked(boolean paramBoolean)
  {
    if ((0x4 & this.o) != 0)
    {
      this.l.a(this);
      return this;
    }
    b(paramBoolean);
    return this;
  }

  public final MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (this.o = (0x10 | this.o); ; this.o = (0xFFFFFFEF & this.o))
    {
      this.l.b(false);
      return this;
    }
  }

  public final MenuItem setIcon(int paramInt)
  {
    this.j = null;
    this.k = paramInt;
    this.l.b(false);
    return this;
  }

  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.k = 0;
    this.j = paramDrawable;
    this.l.b(false);
    return this;
  }

  public final MenuItem setIntent(Intent paramIntent)
  {
    this.g = paramIntent;
    return this;
  }

  public final MenuItem setNumericShortcut(char paramChar)
  {
    if (this.h == paramChar)
      return this;
    this.h = paramChar;
    this.l.b(false);
    return this;
  }

  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
  }

  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.n = paramOnMenuItemClickListener;
    return this;
  }

  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.h = paramChar1;
    this.i = Character.toLowerCase(paramChar2);
    this.l.b(false);
    return this;
  }

  public final void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default:
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    case 0:
    case 1:
    case 2:
    }
    this.p = paramInt;
    this.l.i();
  }

  public final SupportMenuItem setSupportActionProvider(android.support.v4.view.ActionProvider paramActionProvider)
  {
    if (this.r != null)
      this.r.setVisibilityListener(null);
    this.q = null;
    this.r = paramActionProvider;
    this.l.b(true);
    if (this.r != null)
      this.r.setVisibilityListener(new k(this));
    return this;
  }

  public final SupportMenuItem setSupportOnActionExpandListener(MenuItemCompat.OnActionExpandListener paramOnActionExpandListener)
  {
    this.s = paramOnActionExpandListener;
    return this;
  }

  public final MenuItem setTitle(int paramInt)
  {
    return setTitle(this.l.d().getString(paramInt));
  }

  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.e = paramCharSequence;
    this.l.b(false);
    if (this.m != null)
      this.m.setHeaderTitle(paramCharSequence);
    return this;
  }

  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.f = paramCharSequence;
    this.l.b(false);
    return this;
  }

  public final MenuItem setVisible(boolean paramBoolean)
  {
    if (c(paramBoolean))
      this.l.h();
    return this;
  }

  public final String toString()
  {
    return this.e.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.MenuItemImpl
 * JD-Core Version:    0.6.0
 */