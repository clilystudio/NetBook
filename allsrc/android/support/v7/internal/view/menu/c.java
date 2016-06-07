package android.support.v7.internal.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class c
  implements u
{
  protected Context a;
  protected Context b;
  protected MenuBuilder c;
  protected w d;
  private LayoutInflater e;
  private v f;
  private int g;
  private int h;
  private int i;

  public c()
  {
  }

  public c(Context paramContext, int paramInt1, int paramInt2)
  {
    this.a = paramContext;
    this.e = LayoutInflater.from(paramContext);
    this.g = paramInt1;
    this.h = paramInt2;
  }

  public w a(ViewGroup paramViewGroup)
  {
    if (this.d == null)
    {
      this.d = ((w)this.e.inflate(this.g, paramViewGroup, false));
      this.d.a(this.c);
      a(true);
    }
    return this.d;
  }

  public View a(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof x));
    for (x localx = (x)paramView; ; localx = (x)this.e.inflate(this.h, paramViewGroup, false))
    {
      a(paramMenuItemImpl, localx);
      return (View)localx;
    }
  }

  public final void a(int paramInt)
  {
    this.i = paramInt;
  }

  public void a(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    this.b = paramContext;
    LayoutInflater.from(this.b);
    this.c = paramMenuBuilder;
  }

  public void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView)
  {
    paramView.getLayoutParams();
    paramRect.set(0, 0, 0, 0);
  }

  public void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (this.f != null)
      this.f.a(paramMenuBuilder, paramBoolean);
  }

  public abstract void a(MenuItemImpl paramMenuItemImpl, x paramx);

  public final void a(v paramv)
  {
    this.f = paramv;
  }

  public void a(boolean paramBoolean)
  {
    ViewGroup localViewGroup1 = (ViewGroup)this.d;
    if (localViewGroup1 == null);
    label217: label226: 
    while (true)
    {
      return;
      int j;
      int n;
      if (this.c != null)
      {
        this.c.k();
        ArrayList localArrayList = this.c.j();
        int k = localArrayList.size();
        int m = 0;
        j = 0;
        if (m < k)
        {
          MenuItemImpl localMenuItemImpl1 = (MenuItemImpl)localArrayList.get(m);
          if (!c(localMenuItemImpl1))
            break label217;
          View localView1 = localViewGroup1.getChildAt(j);
          if ((localView1 instanceof x));
          for (MenuItemImpl localMenuItemImpl2 = ((x)localView1).a(); ; localMenuItemImpl2 = null)
          {
            View localView2 = a(localMenuItemImpl1, localView1, localViewGroup1);
            if (localMenuItemImpl1 != localMenuItemImpl2)
            {
              localView2.setPressed(false);
              ViewCompat.jumpDrawablesToCurrentState(localView2);
            }
            if (localView2 != localView1)
            {
              ViewGroup localViewGroup2 = (ViewGroup)localView2.getParent();
              if (localViewGroup2 != null)
                localViewGroup2.removeView(localView2);
              ((ViewGroup)this.d).addView(localView2, j);
            }
            n = j + 1;
            m++;
            j = n;
            break;
          }
        }
      }
      while (true)
      {
        if (j >= localViewGroup1.getChildCount())
          break label226;
        if (a(localViewGroup1, j))
          continue;
        j++;
        continue;
        n = j;
        break;
        j = 0;
      }
    }
  }

  public boolean a()
  {
    return false;
  }

  public final boolean a(MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public boolean a(SubMenuBuilder paramSubMenuBuilder)
  {
    if (this.f != null)
      return this.f.a_(paramSubMenuBuilder);
    return false;
  }

  protected boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }

  public final int b()
  {
    return this.i;
  }

  public final boolean b(MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public boolean c(MenuItemImpl paramMenuItemImpl)
  {
    return true;
  }

  public final v d()
  {
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.c
 * JD-Core Version:    0.6.0
 */