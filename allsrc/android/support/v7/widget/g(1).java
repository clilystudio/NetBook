package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.s;
import android.view.View;

final class g extends s
{
  public g(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean)
  {
    super(paramContext, paramMenuBuilder, paramView, true, R.attr.actionOverflowMenuStyle);
    a(8388613);
    a(paramActionMenuPresenter.e);
  }

  public final void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.c(this.c).close();
    ActionMenuPresenter.a(this.c, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.g
 * JD-Core Version:    0.6.0
 */