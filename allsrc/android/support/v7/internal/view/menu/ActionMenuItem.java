package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.MenuItemCompat.OnActionExpandListener;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public class ActionMenuItem
  implements SupportMenuItem
{
  private final int a;
  private final int b;
  private final int c;
  private CharSequence d;
  private CharSequence e;
  private Intent f;
  private char g;
  private char h;
  private Drawable i;
  private Context j;
  private int k = 16;

  public ActionMenuItem(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence)
  {
    this.j = paramContext;
    this.a = 16908332;
    this.b = 0;
    this.c = 0;
    this.d = paramCharSequence;
  }

  public boolean collapseActionView()
  {
    return false;
  }

  public boolean expandActionView()
  {
    return false;
  }

  public android.view.ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException();
  }

  public View getActionView()
  {
    return null;
  }

  public char getAlphabeticShortcut()
  {
    return this.h;
  }

  public int getGroupId()
  {
    return this.b;
  }

  public Drawable getIcon()
  {
    return this.i;
  }

  public Intent getIntent()
  {
    return this.f;
  }

  public int getItemId()
  {
    return this.a;
  }

  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }

  public char getNumericShortcut()
  {
    return this.g;
  }

  public int getOrder()
  {
    return this.c;
  }

  public SubMenu getSubMenu()
  {
    return null;
  }

  public android.support.v4.view.ActionProvider getSupportActionProvider()
  {
    return null;
  }

  public CharSequence getTitle()
  {
    return this.d;
  }

  public CharSequence getTitleCondensed()
  {
    if (this.e != null)
      return this.e;
    return this.d;
  }

  public boolean hasSubMenu()
  {
    return false;
  }

  public boolean isActionViewExpanded()
  {
    return false;
  }

  public boolean isCheckable()
  {
    return (0x1 & this.k) != 0;
  }

  public boolean isChecked()
  {
    return (0x2 & this.k) != 0;
  }

  public boolean isEnabled()
  {
    return (0x10 & this.k) != 0;
  }

  public boolean isVisible()
  {
    return (0x8 & this.k) == 0;
  }

  public MenuItem setActionProvider(android.view.ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }

  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    this.h = paramChar;
    return this;
  }

  public MenuItem setCheckable(boolean paramBoolean)
  {
    int m = 0xFFFFFFFE & this.k;
    if (paramBoolean);
    for (int n = 1; ; n = 0)
    {
      this.k = (n | m);
      return this;
    }
  }

  public MenuItem setChecked(boolean paramBoolean)
  {
    int m = 0xFFFFFFFD & this.k;
    if (paramBoolean);
    for (int n = 2; ; n = 0)
    {
      this.k = (n | m);
      return this;
    }
  }

  public MenuItem setEnabled(boolean paramBoolean)
  {
    int m = 0xFFFFFFEF & this.k;
    if (paramBoolean);
    for (int n = 16; ; n = 0)
    {
      this.k = (n | m);
      return this;
    }
  }

  public MenuItem setIcon(int paramInt)
  {
    this.i = ContextCompat.getDrawable(this.j, paramInt);
    return this;
  }

  public MenuItem setIcon(Drawable paramDrawable)
  {
    this.i = paramDrawable;
    return this;
  }

  public MenuItem setIntent(Intent paramIntent)
  {
    this.f = paramIntent;
    return this;
  }

  public MenuItem setNumericShortcut(char paramChar)
  {
    this.g = paramChar;
    return this;
  }

  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException();
  }

  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    return this;
  }

  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.g = paramChar1;
    this.h = paramChar2;
    return this;
  }

  public void setShowAsAction(int paramInt)
  {
  }

  public SupportMenuItem setSupportActionProvider(android.support.v4.view.ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }

  public SupportMenuItem setSupportOnActionExpandListener(MenuItemCompat.OnActionExpandListener paramOnActionExpandListener)
  {
    return this;
  }

  public MenuItem setTitle(int paramInt)
  {
    this.d = this.j.getResources().getString(paramInt);
    return this;
  }

  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.d = paramCharSequence;
    return this;
  }

  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.e = paramCharSequence;
    return this;
  }

  public MenuItem setVisible(boolean paramBoolean)
  {
    int m = 0x8 & this.k;
    if (paramBoolean);
    for (int n = 0; ; n = 8)
    {
      this.k = (n | m);
      return this;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuItem
 * JD-Core Version:    0.6.0
 */