package android.support.v7.app;

import android.support.v7.internal.view.j;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;

class o extends j
{
  o(n paramn, Window.Callback paramCallback)
  {
    super(paramCallback);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (this.a.a(paramKeyEvent))
      return true;
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    if (this.a.a(paramKeyEvent.getKeyCode(), paramKeyEvent))
      return true;
    return super.dispatchKeyShortcutEvent(paramKeyEvent);
  }

  public void onContentChanged()
  {
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if ((paramInt == 0) && (!(paramMenu instanceof MenuBuilder)))
      return false;
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    if (this.a.d(paramInt))
      return true;
    return super.onMenuOpened(paramInt, paramMenu);
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    if (this.a.c(paramInt))
      return;
    super.onPanelClosed(paramInt, paramMenu);
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    MenuBuilder localMenuBuilder;
    boolean bool;
    if ((paramMenu instanceof MenuBuilder))
    {
      localMenuBuilder = (MenuBuilder)paramMenu;
      if ((paramInt != 0) || (localMenuBuilder != null))
        break label34;
      bool = false;
    }
    label34: 
    do
    {
      return bool;
      localMenuBuilder = null;
      break;
      if (localMenuBuilder != null)
        localMenuBuilder.c(true);
      bool = super.onPreparePanel(paramInt, paramView, paramMenu);
    }
    while (localMenuBuilder == null);
    localMenuBuilder.c(false);
    return bool;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.o
 * JD-Core Version:    0.6.0
 */