package android.support.design.internal;

import android.support.v7.internal.view.menu.MenuItemImpl;

final class c
{
  private final MenuItemImpl a;
  private final int b;
  private final int c;

  private c(MenuItemImpl paramMenuItemImpl, int paramInt1, int paramInt2)
  {
    this.a = paramMenuItemImpl;
    this.b = paramInt1;
    this.c = paramInt2;
  }

  public static c a(int paramInt1, int paramInt2)
  {
    return new c(null, paramInt1, paramInt2);
  }

  public static c a(MenuItemImpl paramMenuItemImpl)
  {
    return new c(paramMenuItemImpl, 0, 0);
  }

  public final boolean a()
  {
    return this.a == null;
  }

  public final int b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
  }

  public final MenuItemImpl d()
  {
    return this.a;
  }

  public final boolean e()
  {
    return (this.a != null) && (!this.a.hasSubMenu()) && (this.a.isEnabled());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.internal.c
 * JD-Core Version:    0.6.0
 */