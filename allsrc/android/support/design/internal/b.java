package android.support.design.internal;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Bundle;
import android.support.design.R.layout;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

final class b extends BaseAdapter
{
  private final ArrayList<c> a = new ArrayList();
  private ColorDrawable b;
  private boolean c;

  b(a parama)
  {
    b();
  }

  private void a(int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      MenuItemImpl localMenuItemImpl = ((c)this.a.get(paramInt1)).d();
      if (localMenuItemImpl.getIcon() == null)
      {
        if (this.b == null)
          this.b = new ColorDrawable(17170445);
        localMenuItemImpl.setIcon(this.b);
      }
      paramInt1++;
    }
  }

  private void b()
  {
    if (this.c);
    int i;
    int k;
    int m;
    int n;
    MenuItemImpl localMenuItemImpl;
    int i4;
    int i5;
    int i6;
    while (true)
    {
      return;
      this.a.clear();
      i = -1;
      int j = a.e(this.d).j().size();
      k = 0;
      m = 0;
      n = 0;
      while (k < j)
      {
        localMenuItemImpl = (MenuItemImpl)a.e(this.d).j().get(k);
        if (!localMenuItemImpl.hasSubMenu())
          break label262;
        SubMenu localSubMenu = localMenuItemImpl.getSubMenu();
        if (localSubMenu.hasVisibleItems())
        {
          if (k != 0)
            this.a.add(c.a(a.f(this.d), 0));
          this.a.add(c.a(localMenuItemImpl));
          int i8 = this.a.size();
          int i9 = localSubMenu.size();
          int i10 = 0;
          int i11 = 0;
          while (i10 < i9)
          {
            MenuItem localMenuItem = localSubMenu.getItem(i10);
            if (localMenuItem.isVisible())
            {
              if ((i11 == 0) && (localMenuItem.getIcon() != null))
                i11 = 1;
              this.a.add(c.a((MenuItemImpl)localMenuItem));
            }
            i10++;
          }
          if (i11 != 0)
            a(i8, this.a.size());
        }
        i4 = m;
        i5 = n;
        i6 = i;
        k++;
        i = i6;
        n = i5;
        m = i4;
      }
    }
    label262: int i1 = localMenuItemImpl.getGroupId();
    label295: int i2;
    int i3;
    if (i1 != i)
    {
      n = this.a.size();
      if (localMenuItemImpl.getIcon() != null)
      {
        m = 1;
        if (k == 0)
          break label429;
        int i7 = n + 1;
        this.a.add(c.a(a.f(this.d), a.f(this.d)));
        i2 = m;
        i3 = i7;
      }
    }
    while (true)
    {
      if ((i2 != 0) && (localMenuItemImpl.getIcon() == null))
        localMenuItemImpl.setIcon(17170445);
      this.a.add(c.a(localMenuItemImpl));
      i4 = i2;
      i5 = i3;
      i6 = i1;
      break;
      m = 0;
      break label295;
      if ((m == 0) && (localMenuItemImpl.getIcon() != null))
      {
        a(n, this.a.size());
        i2 = 1;
        i3 = n;
        continue;
      }
      label429: i2 = m;
      i3 = n;
    }
  }

  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      MenuItemImpl localMenuItemImpl = ((c)localIterator.next()).d();
      if ((localMenuItemImpl == null) || (!localMenuItemImpl.isChecked()))
        continue;
      localArrayList.add(Integer.valueOf(localMenuItemImpl.getItemId()));
    }
    localBundle.putIntegerArrayList("android:menu:checked", localArrayList);
    return localBundle;
  }

  public final c a(int paramInt)
  {
    return (c)this.a.get(paramInt);
  }

  public final void a(Bundle paramBundle)
  {
    ArrayList localArrayList = paramBundle.getIntegerArrayList("android:menu:checked");
    if (localArrayList != null)
    {
      this.c = true;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        MenuItemImpl localMenuItemImpl = ((c)localIterator.next()).d();
        if ((localMenuItemImpl == null) || (!localArrayList.contains(Integer.valueOf(localMenuItemImpl.getItemId()))))
          continue;
        localMenuItemImpl.setChecked(true);
      }
      this.c = false;
      b();
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final boolean areAllItemsEnabled()
  {
    return false;
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    c localc = a(paramInt);
    if (localc.a())
      return 2;
    if (localc.d().hasSubMenu())
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    c localc = a(paramInt);
    switch (getItemViewType(paramInt))
    {
    default:
      return paramView;
    case 0:
      if (paramView != null)
        break;
    case 1:
    case 2:
    }
    for (View localView2 = a.a(this.d).inflate(R.layout.design_navigation_item, paramViewGroup, false); ; localView2 = paramView)
    {
      NavigationMenuItemView localNavigationMenuItemView = (NavigationMenuItemView)localView2;
      localNavigationMenuItemView.a(a.b(this.d));
      localNavigationMenuItemView.setTextColor(a.c(this.d));
      if (a.d(this.d) != null);
      for (Drawable localDrawable = a.d(this.d).getConstantState().newDrawable(); ; localDrawable = null)
      {
        localNavigationMenuItemView.setBackgroundDrawable(localDrawable);
        localNavigationMenuItemView.a(localc.d(), 0);
        return localView2;
      }
      if (paramView == null);
      for (View localView1 = a.a(this.d).inflate(R.layout.design_navigation_item_subheader, paramViewGroup, false); ; localView1 = paramView)
      {
        ((TextView)localView1).setText(localc.d().getTitle());
        return localView1;
        if (paramView == null)
          paramView = a.a(this.d).inflate(R.layout.design_navigation_item_separator, paramViewGroup, false);
        paramView.setPadding(0, localc.b(), 0, localc.c());
        break;
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 3;
  }

  public final boolean isEnabled(int paramInt)
  {
    return a(paramInt).e();
  }

  public final void notifyDataSetChanged()
  {
    b();
    super.notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.internal.b
 * JD-Core Version:    0.6.0
 */