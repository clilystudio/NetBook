package android.support.v4.view;

import android.view.MenuItem;

class MenuItemCompat$IcsMenuVersionImpl$1
  implements MenuItemCompatIcs.SupportActionExpandProxy
{
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return this.val$listener.onMenuItemActionCollapse(paramMenuItem);
  }

  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return this.val$listener.onMenuItemActionExpand(paramMenuItem);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.MenuItemCompat.IcsMenuVersionImpl.1
 * JD-Core Version:    0.6.0
 */