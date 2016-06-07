package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.view.menu.s;
import android.view.MenuItem;
import android.view.View;

final class b extends s
{
  public b(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, SubMenuBuilder paramSubMenuBuilder)
  {
    super(paramContext, paramSubMenuBuilder, null, false, R.attr.actionOverflowMenuStyle);
    View localView;
    int i;
    if (!((MenuItemImpl)paramSubMenuBuilder.getItem()).h())
    {
      if (ActionMenuPresenter.d(paramActionMenuPresenter) == null)
      {
        localView = (View)ActionMenuPresenter.e(paramActionMenuPresenter);
        a(localView);
      }
    }
    else
    {
      a(paramActionMenuPresenter.e);
      i = paramSubMenuBuilder.size();
    }
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        MenuItem localMenuItem = paramSubMenuBuilder.getItem(j);
        if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null))
          continue;
        bool = true;
      }
      b(bool);
      return;
      localView = ActionMenuPresenter.d(paramActionMenuPresenter);
      break;
    }
  }

  public final void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.a(this.c, null);
    this.c.f = 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.b
 * JD-Core Version:    0.6.0
 */