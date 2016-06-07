package android.support.v7.app;

import android.support.v4.view.ViewCompat;
import android.support.v7.b.a;
import android.support.v7.b.b;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;

final class x
  implements b
{
  private b a;

  public x(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7, b paramb)
  {
    this.a = paramb;
  }

  public final void a(a parama)
  {
    this.a.a(parama);
    if (this.b.l != null)
    {
      this.b.b.getDecorView().removeCallbacks(this.b.m);
      this.b.l.dismiss();
    }
    while (true)
    {
      if (this.b.k != null)
        this.b.k.removeAllViews();
      this.b.j = null;
      return;
      if (this.b.k == null)
        continue;
      this.b.k.setVisibility(8);
      if (this.b.k.getParent() == null)
        continue;
      ViewCompat.requestApplyInsets((View)this.b.k.getParent());
    }
  }

  public final boolean a(a parama, Menu paramMenu)
  {
    return this.a.a(parama, paramMenu);
  }

  public final boolean a(a parama, MenuItem paramMenuItem)
  {
    return this.a.a(parama, paramMenuItem);
  }

  public final boolean b(a parama, Menu paramMenu)
  {
    return this.a.b(parama, paramMenu);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.x
 * JD-Core Version:    0.6.0
 */