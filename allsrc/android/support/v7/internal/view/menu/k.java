package android.support.v7.internal.view.menu;

import android.support.v4.view.ActionProvider.VisibilityListener;

final class k
  implements ActionProvider.VisibilityListener
{
  k(MenuItemImpl paramMenuItemImpl)
  {
  }

  public final void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    MenuItemImpl.a(this.a).h();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.k
 * JD-Core Version:    0.6.0
 */