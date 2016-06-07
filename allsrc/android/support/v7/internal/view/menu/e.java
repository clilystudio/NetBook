package android.support.v7.internal.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.Menu;
import android.view.MenuItem;

public class e<T>
{
  final T b;

  e(T paramT)
  {
    if (paramT == null)
      throw new IllegalArgumentException("Wrapped Object can not be null.");
    this.b = paramT;
  }

  public static Menu a(Context paramContext, SupportMenu paramSupportMenu)
  {
    if (Build.VERSION.SDK_INT >= 14)
      return new y(paramContext, paramSupportMenu);
    throw new UnsupportedOperationException();
  }

  public static MenuItem a(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    if (Build.VERSION.SDK_INT >= 16)
      return new q(paramContext, paramSupportMenuItem);
    if (Build.VERSION.SDK_INT >= 14)
      return new l(paramContext, paramSupportMenuItem);
    throw new UnsupportedOperationException();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.e
 * JD-Core Version:    0.6.0
 */