package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

final class g extends BaseAdapter
{
  private int a = -1;

  public g(f paramf)
  {
    a();
  }

  private void a()
  {
    MenuItemImpl localMenuItemImpl = this.b.b.o();
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = this.b.b.m();
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        if ((MenuItemImpl)localArrayList.get(j) != localMenuItemImpl)
          continue;
        this.a = j;
        return;
      }
    }
    this.a = -1;
  }

  public final MenuItemImpl a(int paramInt)
  {
    ArrayList localArrayList = this.b.b.m();
    int i = paramInt + f.a(this.b);
    if ((this.a >= 0) && (i >= this.a))
      i++;
    return (MenuItemImpl)localArrayList.get(i);
  }

  public final int getCount()
  {
    int i = this.b.b.m().size() - f.a(this.b);
    if (this.a < 0)
      return i;
    return i - 1;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (View localView = this.b.a.inflate(this.b.c, paramViewGroup, false); ; localView = paramView)
    {
      ((x)localView).a(a(paramInt), 0);
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
 * Qualified Name:     android.support.v7.internal.view.menu.g
 * JD-Core Version:    0.6.0
 */