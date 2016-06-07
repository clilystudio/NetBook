package android.support.v7.internal.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.internal.view.SupportSubMenu;
import android.support.v4.util.ArrayMap;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class d<T> extends e<T>
{
  final Context a;
  private Map<SupportMenuItem, MenuItem> c;
  private Map<SupportSubMenu, SubMenu> d;

  d(Context paramContext, T paramT)
  {
    super(paramT);
    this.a = paramContext;
  }

  final MenuItem a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem))
    {
      SupportMenuItem localSupportMenuItem = (SupportMenuItem)paramMenuItem;
      if (this.c == null)
        this.c = new ArrayMap();
      MenuItem localMenuItem = (MenuItem)this.c.get(paramMenuItem);
      if (localMenuItem == null)
      {
        localMenuItem = e.a(this.a, localSupportMenuItem);
        this.c.put(localSupportMenuItem, localMenuItem);
      }
      return localMenuItem;
    }
    return paramMenuItem;
  }

  final SubMenu a(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof SupportSubMenu))
    {
      SupportSubMenu localSupportSubMenu = (SupportSubMenu)paramSubMenu;
      if (this.d == null)
        this.d = new ArrayMap();
      Object localObject = (SubMenu)this.d.get(localSupportSubMenu);
      if (localObject == null)
      {
        Context localContext = this.a;
        if (Build.VERSION.SDK_INT >= 14)
        {
          localObject = new z(localContext, localSupportSubMenu);
          this.d.put(localSupportSubMenu, localObject);
        }
      }
      else
      {
        return localObject;
      }
      throw new UnsupportedOperationException();
    }
    return (SubMenu)paramSubMenu;
  }

  final void a()
  {
    if (this.c != null)
      this.c.clear();
    if (this.d != null)
      this.d.clear();
  }

  final void a(int paramInt)
  {
    if (this.c == null);
    while (true)
    {
      return;
      Iterator localIterator = this.c.keySet().iterator();
      while (localIterator.hasNext())
      {
        if (paramInt != ((MenuItem)localIterator.next()).getGroupId())
          continue;
        localIterator.remove();
      }
    }
  }

  final void b(int paramInt)
  {
    if (this.c == null);
    Iterator localIterator;
    do
    {
      return;
      while (!localIterator.hasNext())
        localIterator = this.c.keySet().iterator();
    }
    while (paramInt != ((MenuItem)localIterator.next()).getItemId());
    localIterator.remove();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.d
 * JD-Core Version:    0.6.0
 */