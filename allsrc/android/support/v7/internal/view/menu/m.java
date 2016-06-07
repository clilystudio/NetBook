package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.SubMenu;
import android.view.View;

class m extends android.support.v4.view.ActionProvider
{
  final android.view.ActionProvider a;

  public m(l paraml, Context paramContext, android.view.ActionProvider paramActionProvider)
  {
    super(paramContext);
    this.a = paramActionProvider;
  }

  public boolean hasSubMenu()
  {
    return this.a.hasSubMenu();
  }

  public View onCreateActionView()
  {
    return this.a.onCreateActionView();
  }

  public boolean onPerformDefaultAction()
  {
    return this.a.onPerformDefaultAction();
  }

  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    this.a.onPrepareSubMenu(this.b.a(paramSubMenu));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.m
 * JD-Core Version:    0.6.0
 */