package android.support.v7.internal.view.menu;

import android.support.v4.view.MenuItemCompat.OnActionExpandListener;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class o extends e<MenuItem.OnActionExpandListener>
  implements MenuItemCompat.OnActionExpandListener
{
  o(l paraml, MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    super(paramOnActionExpandListener);
  }

  public final boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)this.b).onMenuItemActionCollapse(this.a.a(paramMenuItem));
  }

  public final boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)this.b).onMenuItemActionExpand(this.a.a(paramMenuItem));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.o
 * JD-Core Version:    0.6.0
 */