package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class t extends BaseAdapter
{
  private MenuBuilder a;
  private int b = -1;

  public t(s params, MenuBuilder paramMenuBuilder)
  {
    this.a = paramMenuBuilder;
    a();
  }

  private void a()
  {
    MenuItemImpl localMenuItemImpl = s.c(this.c).o();
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = s.c(this.c).m();
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        if ((MenuItemImpl)localArrayList.get(j) != localMenuItemImpl)
          continue;
        this.b = j;
        return;
      }
    }
    this.b = -1;
  }

  public final MenuItemImpl a(int paramInt)
  {
    if (s.a(this.c));
    for (ArrayList localArrayList = this.a.m(); ; localArrayList = this.a.j())
    {
      if ((this.b >= 0) && (paramInt >= this.b))
        paramInt++;
      return (MenuItemImpl)localArrayList.get(paramInt);
    }
  }

  public final int getCount()
  {
    if (s.a(this.c));
    for (ArrayList localArrayList = this.a.m(); this.b < 0; localArrayList = this.a.j())
      return localArrayList.size();
    return -1 + localArrayList.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = s.b(this.c).inflate(s.a, paramViewGroup, false); ; localView = paramView)
    {
      x localx = (x)localView;
      if (this.c.b)
        ((ListMenuItemView)localView).setForceShowIcon(true);
      localx.a(a(paramInt), 0);
      return localView;
    }
  }

  public final void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.t
 * JD-Core Version:    0.6.0
 */