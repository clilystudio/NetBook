package android.support.v7.widget;

import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.h;
import android.view.MenuItem;

final class l
  implements h
{
  private l(ActionMenuView paramActionMenuView)
  {
  }

  public final void a(MenuBuilder paramMenuBuilder)
  {
    if (ActionMenuView.b(this.a) != null)
      ActionMenuView.b(this.a).a(paramMenuBuilder);
  }

  public final boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (ActionMenuView.a(this.a) != null) && (ActionMenuView.a(this.a).a(paramMenuItem));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.l
 * JD-Core Version:    0.6.0
 */