package android.support.v7.app;

import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.v;
import android.view.Window;
import android.view.Window.Callback;

final class w
  implements v
{
  private w(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7)
  {
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    AppCompatDelegateImplV7.a(this.a, paramMenuBuilder);
  }

  public final boolean a_(MenuBuilder paramMenuBuilder)
  {
    Window.Callback localCallback = this.a.b.getCallback();
    if (localCallback != null)
      localCallback.onMenuOpened(8, paramMenuBuilder);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.w
 * JD-Core Version:    0.6.0
 */