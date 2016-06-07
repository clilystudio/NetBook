package android.support.v7.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.internal.view.SupportMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

class y extends d<SupportMenu>
  implements Menu
{
  y(Context paramContext, SupportMenu paramSupportMenu)
  {
    super(paramContext, paramSupportMenu);
  }

  public MenuItem add(int paramInt)
  {
    return a(((SupportMenu)this.b).add(paramInt));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(((SupportMenu)this.b).add(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(((SupportMenu)this.b).add(paramInt1, paramInt2, paramInt3, paramCharSequence));
  }

  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(((SupportMenu)this.b).add(paramCharSequence));
  }

  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    MenuItem[] arrayOfMenuItem = null;
    if (paramArrayOfMenuItem != null)
      arrayOfMenuItem = new MenuItem[paramArrayOfMenuItem.length];
    int i = ((SupportMenu)this.b).addIntentOptions(paramInt1, paramInt2, paramInt3, paramComponentName, paramArrayOfIntent, paramIntent, paramInt4, arrayOfMenuItem);
    if (arrayOfMenuItem != null)
    {
      int j = 0;
      int k = arrayOfMenuItem.length;
      while (j < k)
      {
        paramArrayOfMenuItem[j] = a(arrayOfMenuItem[j]);
        j++;
      }
    }
    return i;
  }

  public SubMenu addSubMenu(int paramInt)
  {
    return a(((SupportMenu)this.b).addSubMenu(paramInt));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(((SupportMenu)this.b).addSubMenu(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(((SupportMenu)this.b).addSubMenu(paramInt1, paramInt2, paramInt3, paramCharSequence));
  }

  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return a(((SupportMenu)this.b).addSubMenu(paramCharSequence));
  }

  public void clear()
  {
    a();
    ((SupportMenu)this.b).clear();
  }

  public void close()
  {
    ((SupportMenu)this.b).close();
  }

  public MenuItem findItem(int paramInt)
  {
    return a(((SupportMenu)this.b).findItem(paramInt));
  }

  public MenuItem getItem(int paramInt)
  {
    return a(((SupportMenu)this.b).getItem(paramInt));
  }

  public boolean hasVisibleItems()
  {
    return ((SupportMenu)this.b).hasVisibleItems();
  }

  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return ((SupportMenu)this.b).isShortcutKey(paramInt, paramKeyEvent);
  }

  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return ((SupportMenu)this.b).performIdentifierAction(paramInt1, paramInt2);
  }

  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    return ((SupportMenu)this.b).performShortcut(paramInt1, paramKeyEvent, paramInt2);
  }

  public void removeGroup(int paramInt)
  {
    a(paramInt);
    ((SupportMenu)this.b).removeGroup(paramInt);
  }

  public void removeItem(int paramInt)
  {
    b(paramInt);
    ((SupportMenu)this.b).removeItem(paramInt);
  }

  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    ((SupportMenu)this.b).setGroupCheckable(paramInt, paramBoolean1, paramBoolean2);
  }

  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    ((SupportMenu)this.b).setGroupEnabled(paramInt, paramBoolean);
  }

  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    ((SupportMenu)this.b).setGroupVisible(paramInt, paramBoolean);
  }

  public void setQwertyMode(boolean paramBoolean)
  {
    ((SupportMenu)this.b).setQwertyMode(paramBoolean);
  }

  public int size()
  {
    return ((SupportMenu)this.b).size();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.y
 * JD-Core Version:    0.6.0
 */