package android.support.v7.internal.view;

import android.content.Context;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.util.SimpleArrayMap;
import android.support.v7.b.a;
import android.support.v7.b.b;
import android.support.v7.internal.view.menu.e;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

public final class d
  implements b
{
  private ActionMode.Callback a;
  private Context b;
  private ArrayList<c> c;
  private SimpleArrayMap<Menu, Menu> d;

  public d(Context paramContext, ActionMode.Callback paramCallback)
  {
    this.b = paramContext;
    this.a = paramCallback;
    this.c = new ArrayList();
    this.d = new SimpleArrayMap();
  }

  private Menu a(Menu paramMenu)
  {
    Menu localMenu = (Menu)this.d.get(paramMenu);
    if (localMenu == null)
    {
      localMenu = e.a(this.b, (SupportMenu)paramMenu);
      this.d.put(paramMenu, localMenu);
    }
    return localMenu;
  }

  public final void a(a parama)
  {
    this.a.onDestroyActionMode(b(parama));
  }

  public final boolean a(a parama, Menu paramMenu)
  {
    return this.a.onCreateActionMode(b(parama), a(paramMenu));
  }

  public final boolean a(a parama, MenuItem paramMenuItem)
  {
    return this.a.onActionItemClicked(b(parama), e.a(this.b, (SupportMenuItem)paramMenuItem));
  }

  public final ActionMode b(a parama)
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      c localc2 = (c)this.c.get(j);
      if ((localc2 != null) && (localc2.a == parama))
        return localc2;
    }
    c localc1 = new c(this.b, parama);
    this.c.add(localc1);
    return localc1;
  }

  public final boolean b(a parama, Menu paramMenu)
  {
    return this.a.onPrepareActionMode(b(parama), a(paramMenu));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.d
 * JD-Core Version:    0.6.0
 */