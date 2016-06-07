package android.support.v7.widget;

import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.view.menu.v;
import android.view.MenuItem;
import android.view.View;

class a
  implements v
{
  private a(ActionMenuPresenter paramActionMenuPresenter)
  {
  }

  static int a(aw paramaw, Z paramZ, View paramView1, View paramView2, ao paramao, boolean paramBoolean)
  {
    if ((paramao.h() == 0) || (paramaw.d() == 0) || (paramView1 == null) || (paramView2 == null))
      return 0;
    if (!paramBoolean)
      return 1 + Math.abs(ao.b(paramView1) - ao.b(paramView2));
    int i = paramZ.b(paramView2) - paramZ.a(paramView1);
    return Math.min(paramZ.f(), i);
  }

  static int a(aw paramaw, Z paramZ, View paramView1, View paramView2, ao paramao, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = paramao.h();
    int j = 0;
    if (i != 0)
    {
      int k = paramaw.d();
      j = 0;
      if (k != 0)
      {
        j = 0;
        if (paramView1 != null)
        {
          j = 0;
          if (paramView2 != null)
            break label46;
        }
      }
    }
    while (true)
    {
      return j;
      label46: int m = Math.min(ao.b(paramView1), ao.b(paramView2));
      int n = Math.max(ao.b(paramView1), ao.b(paramView2));
      if (paramBoolean2);
      for (j = Math.max(0, -1 + (paramaw.d() - n)); paramBoolean1; j = Math.max(0, m))
      {
        int i1 = Math.abs(paramZ.b(paramView2) - paramZ.a(paramView1));
        int i2 = 1 + Math.abs(ao.b(paramView1) - ao.b(paramView2));
        return Math.round(i1 / i2 * j + (paramZ.c() - paramZ.a(paramView1)));
      }
    }
  }

  static int b(aw paramaw, Z paramZ, View paramView1, View paramView2, ao paramao, boolean paramBoolean)
  {
    if ((paramao.h() == 0) || (paramaw.d() == 0) || (paramView1 == null) || (paramView2 == null))
      return 0;
    if (!paramBoolean)
      return paramaw.d();
    int i = paramZ.b(paramView2) - paramZ.a(paramView1);
    int j = 1 + Math.abs(ao.b(paramView1) - ao.b(paramView2));
    return (int)(i / j * paramaw.d());
  }

  public void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if ((paramMenuBuilder instanceof SubMenuBuilder))
      ((SubMenuBuilder)paramMenuBuilder).n().a(false);
    v localv = this.a.d();
    if (localv != null)
      localv.a(paramMenuBuilder, paramBoolean);
  }

  public boolean a_(MenuBuilder paramMenuBuilder)
  {
    if (paramMenuBuilder == null)
      return false;
    this.a.f = ((SubMenuBuilder)paramMenuBuilder).getItem().getItemId();
    v localv = this.a.d();
    if (localv != null)
      return localv.a_(paramMenuBuilder);
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.a
 * JD-Core Version:    0.6.0
 */