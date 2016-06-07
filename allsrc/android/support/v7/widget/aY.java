package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.support.v7.b.c;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.view.menu.u;
import android.view.View;
import android.widget.ImageButton;

final class aY
  implements u
{
  MenuItemImpl a;
  private MenuBuilder b;

  private aY(Toolbar paramToolbar)
  {
  }

  public final void a(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    if ((this.b != null) && (this.a != null))
      this.b.b(this.a);
    this.b = paramMenuBuilder;
  }

  public final void a(Parcelable paramParcelable)
  {
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
  }

  public final void a(boolean paramBoolean)
  {
    int i;
    int j;
    if (this.a != null)
    {
      MenuBuilder localMenuBuilder = this.b;
      i = 0;
      if (localMenuBuilder != null)
        j = this.b.size();
    }
    for (int k = 0; ; k++)
    {
      i = 0;
      if (k < j)
      {
        if (this.b.getItem(k) != this.a)
          continue;
        i = 1;
      }
      if (i == 0)
        b(this.a);
      return;
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(MenuItemImpl paramMenuItemImpl)
  {
    Toolbar.b(this.c);
    if (Toolbar.c(this.c).getParent() != this.c)
      this.c.addView(Toolbar.c(this.c));
    this.c.a = paramMenuItemImpl.getActionView();
    this.a = paramMenuItemImpl;
    if (this.c.a.getParent() != this.c)
    {
      aZ localaZ = Toolbar.n();
      localaZ.a = (0x800003 | 0x70 & Toolbar.d(this.c));
      localaZ.b = 2;
      this.c.a.setLayoutParams(localaZ);
      this.c.addView(this.c.a);
    }
    Toolbar.a(this.c, true);
    this.c.requestLayout();
    paramMenuItemImpl.e(true);
    if ((this.c.a instanceof c))
      ((c)this.c.a).a();
    return true;
  }

  public final boolean a(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }

  public final int b()
  {
    return 0;
  }

  public final boolean b(MenuItemImpl paramMenuItemImpl)
  {
    if ((this.c.a instanceof c))
      ((c)this.c.a).b();
    this.c.removeView(this.c.a);
    this.c.removeView(Toolbar.c(this.c));
    this.c.a = null;
    Toolbar.a(this.c, false);
    this.a = null;
    this.c.requestLayout();
    paramMenuItemImpl.e(false);
    return true;
  }

  public final Parcelable c()
  {
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aY
 * JD-Core Version:    0.6.0
 */