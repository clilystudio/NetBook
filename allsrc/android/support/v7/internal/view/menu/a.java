package android.support.v7.internal.view.menu;

import android.support.v7.widget.L;
import android.support.v7.widget.P;

final class a extends P
{
  public a(ActionMenuItemView paramActionMenuItemView)
  {
    super(paramActionMenuItemView);
  }

  public final L a()
  {
    if (ActionMenuItemView.a(this.a) != null)
      return ActionMenuItemView.a(this.a).a();
    return null;
  }

  protected final boolean b()
  {
    i locali = ActionMenuItemView.b(this.a);
    int i = 0;
    if (locali != null)
    {
      boolean bool1 = ActionMenuItemView.b(this.a).a(ActionMenuItemView.c(this.a));
      i = 0;
      if (bool1)
      {
        L localL = a();
        i = 0;
        if (localL != null)
        {
          boolean bool2 = localL.b();
          i = 0;
          if (bool2)
            i = 1;
        }
      }
    }
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.a
 * JD-Core Version:    0.6.0
 */