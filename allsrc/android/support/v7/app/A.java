package android.support.v7.app;

import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.v;
import android.view.Window;
import android.view.Window.Callback;

final class A
  implements v
{
  private A(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7)
  {
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    MenuBuilder localMenuBuilder = paramMenuBuilder.n();
    if (localMenuBuilder != paramMenuBuilder);
    AppCompatDelegateImplV7.PanelFeatureState localPanelFeatureState;
    for (int i = 1; ; i = 0)
    {
      AppCompatDelegateImplV7 localAppCompatDelegateImplV7 = this.a;
      if (i != 0)
        paramMenuBuilder = localMenuBuilder;
      localPanelFeatureState = AppCompatDelegateImplV7.a(localAppCompatDelegateImplV7, paramMenuBuilder);
      if (localPanelFeatureState != null)
      {
        if (i == 0)
          break;
        AppCompatDelegateImplV7.a(this.a, localPanelFeatureState.a, localPanelFeatureState, localMenuBuilder);
        AppCompatDelegateImplV7.a(this.a, localPanelFeatureState, true);
      }
      return;
    }
    AppCompatDelegateImplV7.a(this.a, localPanelFeatureState, paramBoolean);
  }

  public final boolean a_(MenuBuilder paramMenuBuilder)
  {
    if ((paramMenuBuilder == null) && (this.a.e))
    {
      Window.Callback localCallback = this.a.b.getCallback();
      if ((localCallback != null) && (!this.a.l()))
        localCallback.onMenuOpened(8, paramMenuBuilder);
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.A
 * JD-Core Version:    0.6.0
 */